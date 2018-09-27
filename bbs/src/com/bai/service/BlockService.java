package com.bai.service;

import java.util.List;

import com.bai.model.Article;
import com.bai.model.Block;
import com.bai.model.Reply;

public interface BlockService {

	public List<Block> getBlocks();

	public List<Article> getArticles(Block block);

	public List<Reply> getReplies(Article article);

	public int reply(Reply reply);

	public int article(Article article);


}
