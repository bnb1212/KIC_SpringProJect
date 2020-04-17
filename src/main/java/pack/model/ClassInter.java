package pack.model;

import java.util.List;

import org.springframework.dao.DataAccessException;

import pack.controller.ClassinfoBean;

public interface ClassInter {
	
	List<ClassDto> selectMachine() throws DataAccessException;
	List<ClassDto> selectDesign() throws DataAccessException;
	List<ClassDto> selectEnglish() throws DataAccessException;
	List<ClassinfoDto> selectDetail(ClassinfoBean bean) throws DataAccessException;

}
