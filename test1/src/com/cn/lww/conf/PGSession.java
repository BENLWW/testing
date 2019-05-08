//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.cn.lww.conf;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class PGSession {
    public PGSession() {
    }

    public static void AddSession(HttpServletRequest request, String name, Object value) {
        HttpSession session = request.getSession(true);
        session.setAttribute(name, value);
    }

    public static Object GetSession(HttpServletRequest request, String name) {
        HttpSession session = request.getSession(true);
        return session.getAttribute(name);
    }

    public static void DelSession(HttpServletRequest request, String name) {
        HttpSession session = request.getSession(true);
        session.removeAttribute(name);
    }
}
