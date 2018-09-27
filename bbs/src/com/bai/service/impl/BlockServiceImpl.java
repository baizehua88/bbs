package com.bai.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bai.dao.BlockDao;
import com.bai.model.Article;
import com.bai.model.Block;
import com.bai.model.Reply;
import com.bai.service.BlockService;

@Service("blockService")
public class BlockServiceImpl implements BlockService {

	@Autowired
	@Qualifier("blockDao")
	private BlockDao blockDao;
	
	@Override
	public List<Block> getBlocks() {
		// TODO Auto-generated method stub
		return blockDao.getBlocks();
	}

	@Override
	public List<Article> getArticles(Block block) {
		// TODO Auto-generated method stub
		return blockDao.getArticles(block);
	}



	@Override
	public List<Reply> getReplies(Article article) {
		// TODO Auto-generated method stub
		return blockDao.getReplies( article);
	}

	@Override
	public int reply(Reply reply) {
		// TODO Auto-generated method stub---------------------
		return blockDao.reply(reply);
	}

	@Override
	public int article(Article article) {
		// TODO Auto-generated method stub
		return blockDao.article(article);
	}

}
