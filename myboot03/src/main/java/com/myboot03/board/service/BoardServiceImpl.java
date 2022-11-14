package com.myboot03.board.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myboot03.board.dao.BoardDAO;
import com.myboot03.board.vo.ArticleVO;
import com.myboot03.board.vo.ImageVO;

@Service("boardService")
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boardDAO;

	@Override
	public List<ArticleVO> listArticles() throws Exception {
		List<ArticleVO> articlesList = boardDAO.selectAllArticlesList();
		return articlesList;
	}
	
	//���� �̹��� �����ϱ�
	@Override
	public void modArticle(Map articleMap) throws Exception {
		boardDAO.modArticle(articleMap);
		boardDAO.modImage(articleMap);
	}

	public List<ImageVO> oldImageName(int articleNO) throws Exception {
		List<ImageVO> oldImgNameList = boardDAO.oldImageName(articleNO);
		return oldImgNameList;
	}
	
	@Override
	public void removeArticle(int articleNO) throws Exception {
		boardDAO.deleteArticle(articleNO);
	}

	// 다중 이미지 추가하기
	@Override
	public int insertNewArticle(Map articleMap) throws Exception {
		int articleNO = boardDAO.selectNewArticleNO();
			articleMap.put("articleNO",  articleNO);
			boardDAO.insertNewArticle(articleMap); // 글 정보 추가
			
		int imageFileNO = boardDAO.selectNewImageFileNO();// 이미지 번호
		List<ImageVO> imageFileList = (ArrayList)articleMap.get("imageFileList");
		

			for(ImageVO imageVO : imageFileList) {
				imageVO.setImageFileNO(++imageFileNO);
				imageVO.setArticleNO(articleNO);
			}
			
			boardDAO.insertNewImage(imageFileList);
		return articleNO;
	}
	
	// 다중 파일 보이기
	@Override
	public Map viewArticle(int articleNO) throws Exception {
		Map articleMap = new HashMap();
		ArticleVO articleVO = boardDAO.selectArticle(articleNO);
		List<ImageVO> imageFileList = boardDAO.selectImageFileList(articleNO);
		articleMap.put("article", articleVO);
		articleMap.put("imageFileList", imageFileList);

		return articleMap;
	}
}
