package com.myboot03.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myboot03.board.vo.ArticleVO;
import com.myboot03.board.vo.ImageVO;

@Mapper
@Repository("boardDAO")
public interface BoardDAO {
	public List selectAllArticlesList() throws Exception;
	public int insertNewArticle(Map articleMap) throws Exception;
	public int selectNewArticleNO() throws Exception;
	public ArticleVO viewArticle(int articleNo) throws Exception; //����
	public void modArticle(Map articleMap) throws Exception;
	public void deleteArticle(int articleNO) throws Exception;
	public void insertNewImage(List imageFileList);
	public ArticleVO selectArticle(int articleNO) throws DataAccessException;
	public List selectImageFileList(int articleNO) throws DataAccessException;
	public void modImage(Map articleMap) throws Exception; //����
	public List<ImageVO> oldImageName(int articleNO) throws Exception;
	public int selectNewImageFileNO() throws Exception;
}