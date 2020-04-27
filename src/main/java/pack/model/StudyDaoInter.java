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
	//영상댓글부분
	List<Video_detDto> getdetAll(String vno) throws DataAccessException;
	int insertDet(Video_detBean bean) throws DataAccessException;
	int deleteDet(String det_no) throws DataAccessException;
	int updateDet(Video_detBean bean) throws DataAccessException;
	
	//이전,이후 영상
	HashMap<String,String> getvnomm(String clno) throws DataAccessException;; 
}
