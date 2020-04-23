package pack.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

import pack.controller.Video_detBean;

public interface StudyDaoInter {
	List<ClassDto> getcateClass(HashMap<String, String> map) throws DataAccessException;
	List<CurriDto> getClassCurri(String class_no) throws DataAccessException;
	String getClassName(String class_no) throws DataAccessException;
	List<VideoDto> getVideoPart(HashMap<String, String> map) throws DataAccessException;
	VideoDto getVideo(String vno) throws DataAccessException;
	List<Video_detDto> getdetAll(String vno) throws DataAccessException;
	int insertDet(Video_detBean bean) throws DataAccessException;
}
