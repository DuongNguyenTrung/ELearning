/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

/**
 *
 * @author DELL
 */
public class SendMail {

    static final String fromEmail = "duongtongmon3@gmail.com";
    // Mat khai email cua ban
    static final String password = "nivkykpdqbgnrilk";

    public static void send(String to, String sub,
            String message) {

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
        props.put("mail.smtp.port", "587"); //TLS Port
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");
        props.put("mail.smtp.auth", "true"); //enable authentication
        props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
        Authenticator auth = new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        };
        Session session = Session.getInstance(props, auth);
        MimeMessage msg = new MimeMessage(session);
        //set message headers
        try {
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
            msg.addHeader("format", "flowed");
            msg.addHeader("Content-Transfer-Encoding", "8bit");
            msg.setFrom(new InternetAddress(fromEmail, "NoReply-JD"));
            msg.setReplyTo(InternetAddress.parse(fromEmail, false));
            msg.setSubject(sub, "UTF-8");
            msg.setContent(message, "text/html; charset=UTF-8");
            msg.setSentDate(new Date());
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));
            Transport.send(msg);
            System.out.println("Gui mail thanh cong");

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public static void setContentRecover(String username, String code, String email) {
        String subject = "[E-Learning] Please verify your email.";
        String message = "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n "
                + "\n"
                + "<head>\n "
                + "</head>\n"
                + "\n"
                + "<body>\n"
                + "    <h3 style=\"color: blue;\">Hello " + username + " !</h3>\n"
                + "    <div>Link ?????t l???i m???t kh???u c???a b???n l?? : <a href=\"" + code + "\">Nh???n v??o ????y!</a></div>\n"
                + "    <div>Th?? n??y ???????c t???o ra t??? ?????ng.</div>\n"
                + "    <div>N???u b???n c???n tr??? gi??p ho???c c?? c??u h???i, h??y g???i email ?????n elearning2401@gmail.com b???t c??? l??c n??o.</div>\n"
                + "    <h3 style=\"color: blue;\">Tr??n tr???ng!</h3>\n"
                + "\n"
                + "</body>\n"
                + "\n"
                + "</html>";
        SendMail.send(email, subject, message);
    }
}
