/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

public class Constants {

    public static String GOOGLE_CLIENT_ID = "983503950719-aao4io94hh4scmm1oiau3gv9fv97tbpq.apps.googleusercontent.com";
    public static String GOOGLE_CLIENT_SECRET = "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";
    public static String GOOGLE_REDIRECT_URI = "https://localhost:8443/F8/login";
    public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
    public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v2/userinfo?access_token=";
    public static String GOOGLE_GRANT_TYPE = "authorization_code";
    public static String URL = "https://accounts.google.com/o/oauth2/auth?scope=email+profile+openid"
            + "&redirect_uri=" + GOOGLE_REDIRECT_URI
            + "&response_type=code"
            + "&client_id=" + GOOGLE_CLIENT_ID + "&approval_prompt=force";

    public static String GITHUB_CLIENT_ID = "3d145e09cace8e2117bf";
    public static String GITHUB_CLIENT_SECRET = "a7037d8f5e4400a1a281e7457b539dd466091be9";
    public static String GITHUB_REDIRECT_URI = "https://localhost:8443/F8/login-github";
    public static String GITHUB_GET_TOKEN = "https://github.com/login/oauth/access_token";
    public static String GITHUB_GET_USER_INFO = "https://api.github.com/user";
    public static String GITHUB_URL = "https://github.com/login/oauth/authorize?client_id=" + GITHUB_CLIENT_ID
            + "&redirect_uri=" + GITHUB_REDIRECT_URI
            + "&scope=user:email";
    public static String REDIS_CONNECTION = "redis://lamnt:.Duonglam123@redis-14200.c259.us-central1-2.gce.cloud.redislabs.com:14200";
    public static String FACEBOOK_APP_ID = "2385799724904554";
    public static String FACEBOOK_APP_SECRET = "3f9ca89caf3713d97f1bbdc2eb59aa33";
    public static String FACEBOOK_REDIRECT_URL = "https://localhost:8443/F8/login-fb";
    public static String FACEBOOK_URL = "https://www.facebook.com/dialog/oauth?client_id=" + FACEBOOK_APP_ID
            + "&redirect_uri=" + FACEBOOK_REDIRECT_URL + "&scope=public_profile+email";
    public static String FACEBOOK_GET_TOKEN = "https://graph.facebook.com/oauth/access_token?client_id=" + FACEBOOK_APP_ID
            + "&client_secret=" + FACEBOOK_APP_SECRET + "&grant_type=authorization_code" + "&redirect_uri=" + FACEBOOK_REDIRECT_URL;
    public static String FACEBOOK_GET_USERINFO = "https://graph.facebook.com/v15.0/me?fields=id,name,email,picture&access_token=";
}
