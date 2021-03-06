package com.connectin.business.likes.service;

import java.util.List;

import com.connectin.business.generic.dao.DataAccessor;
import com.connectin.business.post.entity.Post;
import com.connectin.domain.comments.CommentDTO;
import com.connectin.domain.like.LikeDTO;
import com.connectin.domain.post.PostDTO;
import com.connectin.exceptions.ConnectinBaseException;
import com.connectin.utils.Response;

public interface LikesService{
	Response<List<LikeDTO>> getLikesByPostId(int postId) throws ConnectinBaseException;
	Response<List<LikeDTO>> getLikesByCommentId(int commentId) throws ConnectinBaseException;
}
