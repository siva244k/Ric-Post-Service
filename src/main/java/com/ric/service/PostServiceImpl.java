package com.ric.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ric.dao.PostDAO;
import com.ric.model.Post;

@Service
@Transactional
public class PostServiceImpl implements PostService {
	
	@Autowired
	private PostDAO postDAO;

	public void addPost(Post post) {
		postDAO.addPost(post);		
	}

	public void updatePost(Post post) {
		postDAO.updatePost(post);
	}

	public Post getPost(int id) {
		return postDAO.getPost(id);
	}

	public void deletePost(int id) {
		postDAO.deletePost(id);
	}

	public List<Post> getPosts() {
		return postDAO.getPosts();
	}

}
