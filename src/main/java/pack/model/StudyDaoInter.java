package pack.model;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface StudyDaoInter {
	List<ClassDto> getcateClass(String cate) throws DataAccessException;
}
