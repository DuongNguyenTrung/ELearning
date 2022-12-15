/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;
import java.util.ArrayList;
import java.util.List;
import model.Comment;
import model.CommentDTO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.hibernate.transform.Transformers;

/**
 *
 * @author duong
 */
public class CommentDAO {

    @SuppressWarnings("empty-statement")
    public List<CommentDTO> findByBlogId(int bid) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            Query query = session.createNativeQuery("SELECT c.id ,cmt ,fullname,avatar ,createAt  from Comment c join [User] u on c.uid= u.id where blogId=:bid order by createAt desc").setResultTransformer(Transformers.aliasToBean(CommentDTO.class));
            List<CommentDTO> lo = query.setParameter("bid", bid).getResultList();
            return lo;
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    public void create(Comment f) {
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

    public void update(Comment f) {
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
            session.remove(session.get(Comment.class, id));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void getById(int id) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            session.remove(session.get(Comment.class, id));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
