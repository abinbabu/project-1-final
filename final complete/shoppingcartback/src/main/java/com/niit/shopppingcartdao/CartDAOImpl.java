package com.niit.shopppingcartdao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Cart;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	public CartDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void saveOrUpdate(Cart cart)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
	}
	
	@Transactional
	public String delete(int id)
	{
		Cart CartToDelete=new Cart();
		CartToDelete.setId(id);
		try {
			sessionFactory.getCurrentSession().delete(CartToDelete);
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@Transactional
	public Cart get(String id)
	{
		String hql = "from Cart where userID=" + "'" + id + "'  and status = " + "'N'";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
        List<Cart> listCart = (List<Cart>) query.list();

		if (listCart != null && !listCart.isEmpty()) {
			return listCart.get(0);
		}

		return null;
	}
	
	@Transactional
	public List<Cart> listCart() {
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) sessionFactory.getCurrentSession().createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}

	@Transactional
	public long getTotal(String id) {
		
		String hql="select sum(price) from Cart where USER_ID=" + "'" + id + "'  and status = " + "'N'";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		List list = query.list();
		/*long total = (Long) list.get(0);
		//long sum= (long) query.list();
		if(list!=null && !list.isEmpty())
		{
			return total;
		}*/
		System.out.println(")))))))))))))))))))))))"+list.get(0));
		long c=(Long)list.get(0);
		if(list!=null && !list.isEmpty())
		{
			return c;
		}
	
		return 0;
	}

	public Cart get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public String delete(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	

}
