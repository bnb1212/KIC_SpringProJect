package pack.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

public interface StudyDaoInter {
	List<ClassDto> getcateClass(HashMap<String, String> map) throws DataAccessException;
	List<CurriDto> getClassCurri(String class_no) throws DataAccessException;
	String getClassName(String class_no) throws DataAccessException;
	List<VideoDto> getVideoPart(HashMap<String, String> map) throws DataAccessException;
}
