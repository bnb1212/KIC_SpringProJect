package pack.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import pack.controller.ClassinfoBean;

@Repository
public class ClassImpl implements ClassInter{
	
	@Autowired
	private ClassAnnoInter classAnnoInter;
	
	@Override
	public List<ClassDto> selectMachine() throws DataAccessException {
		
		return classAnnoInter.selectMachine();
	}
	


	
	@Override
	public List<ClassDto> selectEnglish() throws DataAccessException {
	
		return classAnnoInter.selectEnglish();
	}
	
	@Override
	public List<ClassDto> selectDesign() throws DataAccessException {
		return classAnnoInter.selectDesign();
	}
	
	@Override
	public List<ClassinfoDto> selectDetail(ClassinfoBean bean) throws DataAccessException {
		
		return classAnnoInter.selectDetail(bean);
	}

}
