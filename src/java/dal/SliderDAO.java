/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import model.Slider;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author duong
 */
public class SliderDAO {

    public List<Slider> findAll() {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createNativeQuery("Select * FROM Slider order by createAt desc", Slider.class).getResultList();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ArrayList<>();
    }

    public List<Slider> findAllActive() {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createNativeQuery("Select * FROM Slider where status=1 order by createAt desc", Slider.class).getResultList();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ArrayList<>();
    }

    public void create(Slider f) {
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

    public void update(Slider f) {
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
            session.remove(session.get(Slider.class, id));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Slider getById(int id) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.get(Slider.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
