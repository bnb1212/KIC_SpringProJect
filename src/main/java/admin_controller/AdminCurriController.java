package admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin_model.Admin_ClassInit_AnooInter;

@Controller
public class AdminCurriController {

	@Autowired
	Admin_ClassInit_AnooInter anno;

	// ============ insert ===========
	@RequestMapping(value = "admin_curri_insert", method = RequestMethod.GET)
	public ModelAndView goinsert(@RequestParam("no") String no) {

		return new ModelAndView("admin/admin_curri_inform", "datas", anno.selectPart(no));
	}

	@RequestMapping(value = "admin_curri_insert", method = RequestMethod.POST)
	public ModelAndView insertProcess(Admin_CurriBean bean) {
		anno.curriinsert(bean);
		return new ModelAndView("redirect:/admin_classinit");
	}

	// ============ update =============
	@RequestMapping(value = "admin_curri_update", method = RequestMethod.GET)
	public ModelAndView goUpdete(@RequestParam("no") String no) {

		return new ModelAndView("admin/admin_curri_update", "datas", anno.selcetCurriPart(no));
	}

	@RequestMapping(value = "admin_curri_update", method = RequestMethod.POST)
	public ModelAndView goUpdete(Admin_CurriBean bean) {
		anno.curriupdate(bean);
		return new ModelAndView("redirect:/admin_classinit");
	}

	// ============ delete =============
	@RequestMapping(value = "admin_curri_delete", method = RequestMethod.GET)
	public ModelAndView goDelete(@RequestParam("no") String no) {

		return new ModelAndView("admin/admin_curri_delete", "data", anno.selectCurri(no));
	}

	@RequestMapping(value = "admin_curri_delete", method = RequestMethod.POST)
	public String deleteProcess(Admin_CurriBean bean) {
		try {
			int aa = anno.curridelete(bean);

			if (aa > 0) {

				return "admin/admin_re";
			} else {
				return "admin/error";
			}

		} catch (Exception e) {
			System.out.println(e);
			return "admin/error";
		}

	}

}
