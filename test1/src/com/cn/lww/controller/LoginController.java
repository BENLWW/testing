//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.controller;

import com.cn.lww.conf.JudgmentAllReason;
import com.cn.lww.conf.PGMD5;
import com.cn.lww.conf.PGSession;
import com.cn.lww.conf.PermissionsOrRoleCheck;
import com.cn.lww.pojo.Menu;
import com.cn.lww.pojo.PermissionsExtension;
import com.cn.lww.pojo.Role;
import com.cn.lww.pojo.User;
import com.cn.lww.services.MenuService;
import com.cn.lww.services.PermissionsTypeService;
import com.cn.lww.services.RoleGroupCorrelateService;
import com.cn.lww.services.RoleService;
import com.cn.lww.services.UserService;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"/login"})
public class LoginController {
    @Resource
    UserService userService;
    @Resource
    RoleService roleService;
    @Resource
    RoleGroupCorrelateService roleGroupCorrelateService;
    @Resource
    MenuService menuService;
    @Resource
    PermissionsTypeService permissionsTypeService;

    public LoginController() {
    }

    @RequestMapping({"/check_login"})
    public String check_login(HttpServletRequest request, Model model) {
        System.out.println("===================开始进入==================");

        try {
            label53: {
                model.addAttribute("errorMsg", (Object)null);
                String username = request.getParameter("username");
                if (!username.equals("") && username != "") {
                    if (request.getParameter("password") != null && request.getParameter("password") != "") {
                        String password = PGMD5.EncoderByMd5(request.getParameter("password"));
                        List<User> userlist = this.userService.findAll();
                        int i = 0;

                        while(true) {
                            if (i >= userlist.size()) {
                                break label53;
                            }

                            System.out.println("=====开始验证=========");
                            String get_name = String.valueOf(((User)userlist.get(i)).getUserNumber());
                            if (get_name.equals(username)) {
                                System.out.println("=====账号验证成功=========");
                                User user = this.userService.selectByUserNumber(Integer.valueOf(username));
                                if (user.getUserPassword().equals(password)) {
                                    PGSession.AddSession(request, "userID", user.getUserId());
                                    PGSession.AddSession(request, "LastJoinTime", user.getLastJoinTime());
                                    PGSession.AddSession(request, "username", user.getUserName());
                                    PGSession.AddSession(request, "usernumber", username);
                                    Cookie cookie = new Cookie(username, password);
                                    cookie.setMaxAge(-1);
                                    cookie.setPath("/");
                                    System.out.println("=====进入成功=========" + password + "    " + cookie.getName());
                                    PGSession.AddSession(request, "cookie", cookie);
                                    Role role = PermissionsOrRoleCheck.getRole(this.roleService, user.getUserPosition());
                                    PermissionsExtension permissionsExtension = JudgmentAllReason.getPermissions(this.permissionsTypeService, role.getRoleGroup());
                                    PGSession.AddSession(request, "Permissions", permissionsExtension);
                                    PGSession.AddSession(request, "role", role);
                                    model.addAttribute("username", user.getUserName());
                                    return "users/Users_login_success";
                                }

                                System.out.println("密码错误！");
                                model.addAttribute("errorMsg", "密码错误！");
                                return "login";
                            }

                            ++i;
                        }
                    }

                    model.addAttribute("errorMsg", "请输入密码！");
                    return "login";
                }

                model.addAttribute("errorMsg", "请输入用户名！");
                return "login";
            }
        } catch (NoSuchAlgorithmException var12) {
            var12.printStackTrace();
        } catch (UnsupportedEncodingException var13) {
            var13.printStackTrace();
        }

        System.out.println("====================进入失败=======================");
        model.addAttribute("errorMsg", "账号不存在！");
        return "login";
    }

    @RequestMapping({"/top"})
    public String MainTop(HttpServletRequest request, Model model) {
        Cookie cookie = (Cookie)PGSession.GetSession(request, "cookie");
        if (cookie == null) {
            return "error";
        } else {
            System.out.println(cookie.getName() + " " + cookie.getValue());
            return cookie.getName().equals(PGSession.GetSession(request, "usernumber")) ? "otherpage/top" : "error";
        }
    }

    @RequestMapping({"/left"})
    public String MainLeft(HttpServletRequest request, Model model) {
        Cookie cookie = (Cookie)PGSession.GetSession(request, "cookie");
        if (cookie == null) {
            return "error";
        } else {
            System.out.println(cookie.getName() + " " + cookie.getValue());
            if (cookie.getName().equals(PGSession.GetSession(request, "usernumber"))) {
                Role role = (Role)PGSession.GetSession(request, "role");
                System.out.println(role.getRoleGroup() + "     " + "管理员权限");
                List<Menu> menulist = PermissionsOrRoleCheck.CreateMenuString(this.menuService, this.roleGroupCorrelateService, role.getRoleGroupId());
                model.addAttribute("menulist", menulist);
                return "otherpage/left";
            } else {
                return "error";
            }
        }
    }

    @RequestMapping({"/main"})
    public String Main(HttpServletRequest request, Model model) {
        Cookie cookie = (Cookie)PGSession.GetSession(request, "cookie");
        if (cookie == null) {
            return "error";
        } else {
            System.out.println(cookie.getName() + " " + cookie.getValue());
            if (cookie.getName().equals(PGSession.GetSession(request, "usernumber"))) {
                model.addAttribute("WELCOME", JudgmentAllReason.JUTime());
                return "index";
            } else {
                return "error";
            }
        }
    }

    @RequestMapping({"Users_loginout"})
    public String login_out(HttpServletRequest request, Model model) {
        Cookie cookie = (Cookie)PGSession.GetSession(request, "cookie");
        if (cookie == null) {
            return "error";
        } else {
            User user = new User();
            user.setUserId((Integer)PGSession.GetSession(request, "userID"));
            user.setLastJoinTime(JudgmentAllReason.getNowTime());
            this.userService.updateByPrimaryKeySelective(user);
            PGSession.DelSession(request, "pm");
            PGSession.DelSession(request, "role");
            PGSession.DelSession(request, "userID");
            PGSession.DelSession(request, "LastJoinTime");
            PGSession.DelSession(request, "username");
            PGSession.DelSession(request, "cookie");
            model.addAttribute("PerrorMsg", "密码");
            model.addAttribute("UerrorMsg", "用户名");
            Cookie[] cookies = request.getCookies();
            if (cookies == null) {
                return "login";
            } else {
                Cookie[] var9 = cookies;
                int var8 = cookies.length;

                for(int var7 = 0; var7 < var8; ++var7) {
                    Cookie cookie1 = var9[var7];
                    if (cookie1.getName().equals(PGSession.GetSession(request, "usernumber"))) {
                        cookie1.setValue((String)null);
                        cookie1.setMaxAge(0);
                        cookie1.setPath("/");
                        break;
                    }
                }

                PGSession.DelSession(request, "usernumber");
                return "login";
            }
        }
    }
}
