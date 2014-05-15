package com.ric.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ric.model.Post;

@Repository
public class PostDAOImpl implements PostDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addPost(Post post) {
		getCurrentSession().save(post);
	}

	public void updatePost(Post post) {
		Post postToUpdate = getPost(post.getId());
		
		
		getCurrentSession().update(postToUpdate);
		
	}

	public Post getPost(int id) {
		Post post = (Post) getCurrentSession().get(Post.class, id);
		return post;
	}

	public void deletePost(int id) {
		Post post = getPost(id);
		if (post != null)
			getCurrentSession().delete(post);
	}

	@SuppressWarnings("unchecked")
	public List<Post> getPosts() {
		return getCurrentSession().createQuery("from Post").list();
	}

	


}
