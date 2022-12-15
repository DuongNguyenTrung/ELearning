/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class QA {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer uid;
    private Integer lid;
    private Integer qid;
    private String ctent;
    private Boolean status;
    private Integer type;
    private Date createAt;

    public QA(Integer uid, Integer lid, Integer qid, String ctent, Boolean status, Integer type, Date createAt) {
        this.uid = uid;
        this.lid = lid;
        this.qid = qid;
        this.ctent = ctent;
        this.status = status;
        this.type = type;
        this.createAt = createAt;
    }
    
    
}
