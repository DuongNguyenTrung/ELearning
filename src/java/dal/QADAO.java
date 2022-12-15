/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dto.QADTO;
import dto.QuestionDTO;
import jakarta.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import model.CommentDTO;
import model.QA;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;

/**
 *
 * @author duong
 */
public class QADAO {

    public List<QADTO> getAllQA(int lid) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            Query query = session.createNativeQuery("SELECT q.id,u.fullname,l.name,q.ctent,q.createAt,q.status from QA q join [User] u on u.id=uid join Lesson l on l.id=lid where lid=:lid and type=0 order by createAt desc").setResultTransformer(Transformers.aliasToBean(QuestionDTO.class));
            List<QuestionDTO> lo = query.setParameter("lid", lid).getResultList();
            List<QADTO> res = lo.stream().map(q -> {
                Query getAnwser = session.createNativeQuery("SELECT q.id,u.fullname,l.name,q.ctent,q.createAt,q.status from QA q join [User] u on u.id=uid join Lesson l on l.id=lid where qid=:qid order by createAt desc").setResultTransformer(Transformers.aliasToBean(QuestionDTO.class));
                return new QADTO(q, getAnwser.setParameter("qid", q.getId()).getResultList());
            }).collect(Collectors.toList());
            return res;
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    public List<QuestionDTO> findAllQuestion() {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            Query query = session.createNativeQuery("SELECT q.id,u.fullname,l.name,q.ctent,q.createAt,q.status from QA q join [User] u on u.id=uid join Lesson l on l.id=lid  where qid is null order by createAt desc").setResultTransformer(Transformers.aliasToBean(QuestionDTO.class));
            List<QuestionDTO> lo = query.getResultList();
            return lo;
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    public void create(QA f) {
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

    public void update(QA f) {
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
            session.remove(session.get(QA.class, id));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public QA getById(int id) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.get(QA.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public QA getByQId(int id) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createNativeQuery("select * from QA where qid=:qid", QA.class).setParameter("qid", id).getSingleResultOrNull();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
