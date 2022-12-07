/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@AllArgsConstructor
@Data
@Getter
@Setter
public class FeedbackDTO {
    private int id;
    private String fullname;
    private String cmt;
    private int rating;
    private Date createAt;
}
