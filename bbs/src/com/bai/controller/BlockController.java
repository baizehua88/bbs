package com.bai.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bai.model.Article;
import com.bai.model.Block;
import com.bai.model.Reply;
import com.bai.service.BlockService;


@Controller
@RequestMapping("/block")
public class BlockController {
	@Autowired
	@Qualifier("blockService")
	private BlockService blockService;
	
	@RequestMapping("/blockList.do")
	public ModelAndView blockList() {
		ModelAndView mv = new ModelAndView();
		List<Block> blockList = blockService.getBlocks();
		mv.addObject("blockList", blockList);
		mv.setViewName("blockList");
		return mv;
	}
	
	@RequestMapping("/articleList.do")
	public ModelAndView articleList(Block block,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		System.out.println("block传过来的："+block);
		List<Article> articleList = blockService.getArticles(block);
		System.out.println(articleList);
		mv.addObject("articleList", articleList);
		mv.setViewName("articleList");		
		session.setAttribute("block", block);
		return mv;
	}
	
	@RequestMapping("/replyList.do")
	public ModelAndView replyList(Article article,HttpSession session){
		ModelAndView mv = new ModelAndView();
		System.out.println("articleList传过来的："+article);
		List<Reply> replyList = blockService.getReplies(article);
		System.out.println(replyList);
		mv.addObject("replyList", replyList);
		mv.setViewName("replyList");
		Block block = (Block) session.getAttribute("block");
		session.setAttribute("article", article);
		return mv;
	}
	
/*	@InitBinder
	public void initBinder(ServletRequestDataBinder binder){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class,"date", new CustomDateEditor(dateFormat, true));
	}*/
	
	public String getTime() {
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
		String time = dateFormat.format( now ); 
		return time;
	}
	
	@RequestMapping("/reply.do")
	public ModelAndView reply(Reply reply,HttpSession session,RedirectAttributes attr){
		ModelAndView mv = new ModelAndView();
		reply.setRtime(getTime());
		System.out.println("replyList传过来的："+reply);
		blockService.reply(reply);		
		String aid1 = reply.getAid();
		Article article = (Article) session.getAttribute("article");
		System.out.println(article);
		System.out.println(article.getAname());
		attr.addAttribute("aid", article.getAid());
		attr.addAttribute("aname", article.getAname());
		mv.setViewName("redirect:/block/replyList.do");
		//+"&aname="+(String)article1.getAname()
		return mv;
	}
	@RequestMapping("/article.do")
	public ModelAndView article(Article article,HttpSession session,RedirectAttributes attr){
		ModelAndView mv = new ModelAndView();
		article.setAtime(getTime());
		System.out.println("传过来的："+article);
		blockService.article(article);		
		String aid1 = article.getAid();
		Block block = (Block) session.getAttribute("block");
		System.out.println(block);
		System.out.println(block.getBname());
		attr.addAttribute("bid", block.getBid());
		attr.addAttribute("bname", block.getBname());
		mv.setViewName("redirect:/block/articleList.do");
		//+"&aname="+(String)article1.getAname()
		return mv;
	}
}
