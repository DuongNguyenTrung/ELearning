/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author duong
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class OrderDTO {

    private Integer userId;
    private Integer courseId;
    private String fullname;
    private String name;
    private String title;
    private Double salePrice;
    private Date registedDate;
    private Boolean status;
}
