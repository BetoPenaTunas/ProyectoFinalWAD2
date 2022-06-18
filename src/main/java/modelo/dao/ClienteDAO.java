package modelo.dao;

import java.util.ArrayList;
import java.util.List;
import modelo.entidades.Cliente;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import util.HibernateUtil;

public class ClienteDAO {
    public List readAll(){
        
        Session session= HibernateUtil.getSessionFactory().getCurrentSession(); 
        Transaction transaction= session.getTransaction();
        List resultados=  new ArrayList();
        
        try{
            transaction.begin();    
            
            //PARA UN SELECT ONE
            
//            a= (Alumno)session.get(Alumno,a.getId());
            
            
            //Query de Hibernate, asegurarse de eso, ver línea 8
            Query q= session.createQuery("from Cliente",Cliente.class);   //técnicamente es un JPA modificado
            resultados=q.list();
            
            
            transaction.commit();
        }catch(HibernateException he){
            
            if(transaction.isActive() && transaction!=null){    // Con HIBERNATE nos toca hacer la gestión de l
                                                                // la transacción
                transaction.rollback();
            }
        }
        
        return resultados;
    }
    
    
    public Cliente selectOne(Cliente c){
        
        Session session= HibernateUtil.getSessionFactory().getCurrentSession(); 
        Transaction transaction= session.getTransaction();
        Cliente aux=new Cliente();
        try{
            transaction.begin();    
            
            //PARA UN SELECT ONE
            
            aux= (Cliente)session.get(Cliente.class,c.getId());
            System.out.println(aux);

            
            //Query de Hibernate, asegurarse de eso, ver línea 8
//            Query q= session.createQuery("from Cliente",Cliente.class);   //técnicamente es un JPA modificado
//            resultados=q.list();
//            
            
            transaction.commit();
        }catch(HibernateException he){
            
            if(transaction.isActive() && transaction!=null){    // Con HIBERNATE nos toca hacer la gestión de l
                                                                // la transacción
                transaction.rollback();
            }
        }
        return aux;
        
    }
    
    
    
    
    public static void main(String[] args) {
        ClienteDAO dao = new ClienteDAO();
        Cliente c= new Cliente();
        c.setId(2);
        Cliente existe;
        
        existe= dao.selectOne(c);
        
        
//        System.out.println(dao.readAll());

    
    }
}
