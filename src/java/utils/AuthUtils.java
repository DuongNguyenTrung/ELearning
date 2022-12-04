/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import model.GooglePojo;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.IOException;
import model.FbPojo;
import model.GithubPojo;
import model.User;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;

public class AuthUtils {

    public static String getToken(final String code) throws ClientProtocolException, IOException {
        String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static String getTokenFb(final String code) throws ClientProtocolException, IOException {
        String response = Request.Get(Constants.FACEBOOK_GET_TOKEN + "&code=" + code)
                .execute().returnContent().asString();
        System.out.println(response);
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static String getTokenGithub(final String code) throws ClientProtocolException, IOException {
        String response = Request.Post(Constants.GITHUB_GET_TOKEN).addHeader("Accept", "application/json")
                .bodyForm(Form.form().add("client_id", Constants.GITHUB_CLIENT_ID)
                        .add("client_secret", Constants.GITHUB_CLIENT_SECRET)
                        .add("redirect_uri", Constants.GITHUB_REDIRECT_URI).add("code", code).build())
                .execute().returnContent().asString();
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static GooglePojo getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();
        GooglePojo googlePojo = new Gson().fromJson(response, GooglePojo.class);
        return googlePojo;
    }

    public static GithubPojo getUserInfoGithub(final String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GITHUB_GET_USER_INFO;
        String response = Request.Get(link).addHeader("Authorization", "Bearer " + accessToken).execute().returnContent().asString();
        GithubPojo googlePojo = new Gson().fromJson(response, GithubPojo.class);
        return googlePojo;
    }

    public static FbPojo getUserInfoFb(final String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.FACEBOOK_GET_USERINFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();
        System.out.println(response);
        JsonParser jp = new JsonParser();

        JsonObject j = jp.parse(response).getAsJsonObject();

        FbPojo fpojo = new FbPojo(j.get("id").toString(), j.get("name").toString(), j.get("email") == null ? "" : j.get("email").toString(), j.get("picture").getAsJsonObject().get("data").getAsJsonObject().get("url").toString());
        return fpojo;
    }

    public static User toAccount(GithubPojo g) {
        String fullname = g.getName().trim();
        User a = new User();
        a.setUsername(g.getLogin());
        a.setFullname(fullname);
        a.setAddress(g.getCompany());
        a.setAvatar(g.getAvatar_url());
        a.setEmail(g.getEmail());
        return a;
    }

    public static User toAccount(FbPojo g) {
        String fullname = g.getName().trim();
        User a = new User();
        a.setUsername(g.getEmail());
        a.setFullname(fullname);
        a.setAvatar(g.getPicture());
        a.setEmail(g.getEmail());
        return a;
    }

    public static User toAccount(GooglePojo g) {
        String fullname = g.getName().trim();
        User a = new User();
        a.setUsername(g.getEmail());
        a.setFullname(fullname);
        a.setAvatar(g.getPicture());
        a.setEmail(g.getEmail());
        return a;
    }
}
