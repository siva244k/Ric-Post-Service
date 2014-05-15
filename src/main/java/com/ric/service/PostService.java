package com.ric.service;

import java.util.List;

import com.ric.model.Post;


public interface PostService {
	
	public void addPost(Post post);
	public void updatePost(Post post);
	public Post getPost(int id);
	public void deletePost(int id);
	public List<Post> getPosts();

}
