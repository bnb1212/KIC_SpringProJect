package pack.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Repository
public class StudyDaoImpl implements StudyDaoInter{
	
	@Autowired
	private StudyAnnoInter studyAnnoInter;
	
	@Override
	public List<ClassDto> getcateClass(String cate) throws DataAccessException {
		
		List<ClassDto> classes =  studyAnnoInter.selectMyCateClass(cate);
		return classes;
	}
}
