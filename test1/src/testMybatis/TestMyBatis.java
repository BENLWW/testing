//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package testMybatis;

import com.alibaba.fastjson.JSON;
import com.cn.lww.pojo.User;
import com.cn.lww.services.UserService;
import java.util.List;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
    locations = {"classpath:spring-mybatis.xml"}
)
public class TestMyBatis {
    private static Logger logger = Logger.getLogger(TestMyBatis.class);
    @Resource
    private UserService userService = null;

    public TestMyBatis() {
    }

    @Test
    public void test1() {
        System.out.println("================进入测试==================");
        User user = this.userService.selectByPrimaryKey(1);
        List<User> userlist = this.userService.findAll();

        for(int i = 0; i < userlist.size(); ++i) {
            User u = (User)userlist.get(i);
            logger.info(JSON.toJSONString(userlist.get(i)));
            System.out.println(userlist.size());
        }

        System.out.println("================退出测试==================");
    }
}
