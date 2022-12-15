/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dto.OrderDTO;
import jakarta.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import model.CommentDTO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;

/**
 *
 * @author duong
 */
public class OrderDAO {

    public List<OrderDTO> getAllOrder() {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            Query query = session.createNativeQuery("SELECT  user_id as userId,fullname,c.name,title,sale_price as salePrice,registered_date as registedDate,CASE WHEN valid_from IS NULL THEN CAST(0 AS BIT) ELSE CAST(1 AS BIT) END as status,course_id as courseId\n"
                    + "  FROM Registrations r join [User] u on u.id=r.user_id join Course c on c.id=r.course_id join Price_Package p on p.id = r.price_id ").setResultTransformer(Transformers.aliasToBean(OrderDTO.class));
            List<OrderDTO> ls = query.getResultList();
            return ls;

        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }
}
