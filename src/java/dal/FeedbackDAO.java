/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dto.FeedbackDTO;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
import model.Feedback;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class FeedbackDAO extends BaseDAO {

    public List<FeedbackDTO> findByCourseId(int cid) throws ParseException {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {

            List<Object[]> lo = session.createNativeQuery("select f.id,fullname,cmt,rating   ,createAt from Feedback f join dbo.[User] u on u.id = f.uid where courseId=:cid").setParameter("cid", cid).list();
            List<FeedbackDTO> lf = lo.stream().map(tuple -> {
                SimpleDateFormat df = new SimpleDateFormat("YYYY-MM-DD hh:mm:ss");
                Date d = new Date();
                try {
                    d = df.parse(tuple[4].toString());
                } catch (Exception e) {
                }
                return new FeedbackDTO(Integer.parseInt(tuple[0].toString()), tuple[1].toString(), tuple[2].toString(), Integer.parseInt(tuple[3].toString()), d);
            }).collect(Collectors.toList());
            return lf;
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    public void create(Feedback f) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.persist(f);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void update(Feedback f) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.merge(f);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void delete(int id) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            session.remove(session.get(Feedback.class, id));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void getById(int id) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            session.get(Feedback.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
