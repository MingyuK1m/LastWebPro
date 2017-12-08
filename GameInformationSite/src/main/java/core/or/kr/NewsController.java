package core.or.kr;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import core.co.kr.news.BoardService;
import core.co.kr.vo.BoardVO;


@Controller
public class NewsController {
	@Inject
	private BoardService boardService;
		@RequestMapping(value="/create", method = RequestMethod.GET)
		public void createGET(BoardVO article, Model model) throws Exception {
		}
		@RequestMapping(value="/create", method = RequestMethod.POST)
		public String createPOST(BoardVO article) throws Exception {
			boardService.create(article);
			return "redirect:/list";
		}
		@RequestMapping(value="/list", method = RequestMethod.GET)
		public void list(Model model) throws Exception {
			model.addAttribute("list", boardService.list());
		}
		@RequestMapping(value="/read", method = RequestMethod.GET)
		public void read(@RequestParam("no") int no, Model model) throws Exception {
			model.addAttribute(boardService.read(no));
		}
		@RequestMapping(value="/delete", method = RequestMethod.POST)
		public String remove(@RequestParam("no") int no) throws Exception {
			boardService.delete(no);
			return "redirect:/list";
		}
		@RequestMapping(value="/update", method = RequestMethod.GET)
		public void updateGET(int no, Model model) throws Exception {
			System.out.println(no);
			model.addAttribute(boardService.read(no));
			System.out.println(model);
		}
		@RequestMapping(value="/update", method = RequestMethod.POST)
		public String updatePOST(BoardVO article) throws Exception {
			boardService.update(article);
			return "redirect:/list";
		}
		
		
}
