package pack.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Repository
public class StudyDaoImpl implements StudyDaoInter{
	
	@Autowired
	private StudyAnnoInter studyAnnoInter;
	
	@Override
	public List<ClassDto> getcateClass(HashMap<String, String> map) throws DataAccessException {
		
		List<ClassDto> classes =  studyAnnoInter.selectMyCateClass(map);
		return classes;
	}
	
	@Override
	public List<CurriDto> getClassCurri(String class_no) throws DataAccessException {
		List<CurriDto> curries =  studyAnnoInter.selectClassCurri(class_no);
		return curries;
	}
}
