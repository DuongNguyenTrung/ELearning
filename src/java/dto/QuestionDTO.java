/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author duong
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class QuestionDTO {

    private Integer id;
    private String fullname;
    private String name;
    private String ctent;
    private Date createAt;
    private Boolean status;
}
