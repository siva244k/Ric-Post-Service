package com.ric.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ric.model.Post;

import com.ric.service.PostService;

@Controller
@RequestMapping(value = "/post")
public class PostController {

	@Autowired
	private PostService postService;

	@RequestMapping(value = PostRestURIConstants.CREATE_POST, method = RequestMethod.GET)
	@ResponseBody
	public String addPost(@ModelAttribute Post post) {

		postService.addPost(post);

		return "succesfulladded";
	}

	@RequestMapping(value = PostRestURIConstants.GET_POST, method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Post>  getPost(@PathVariable("id") int id) {

	
		ResponseEntity<Post> response=new ResponseEntity<Post>(postService.getPost(id),HttpStatus.OK);
		return response;

	}

}
