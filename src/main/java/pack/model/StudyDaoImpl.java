package pack.model;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import pack.controller.Video_detBean;

@Repository
public class StudyDaoImpl implements StudyDaoInter {

	@Autowired
	private StudyAnnoInter studyAnnoInter;

	@Override
	public List<ClassDto> getcateClass(HashMap<String, String> map) throws DataAccessException {

		List<ClassDto> classes = studyAnnoInter.selectMyCateClass(map);
		return classes;
	}

	@Override
	public List<CurriDto> getClassCurri(String class_no) throws DataAccessException {
		List<CurriDto> curries = studyAnnoInter.selectClassCurri(class_no);
		return curries;
	}

	@Override
	public String getClassName(String class_no) throws DataAccessException {
		String name = studyAnnoInter.selectClassName(class_no);
		return name;
	}
	
	@Override
	public List<VideoDto> getVideoPart(HashMap<String, String> map) throws DataAccessException {
		List<VideoDto> videos = studyAnnoInter.selectVideoPart(map);
		return videos;
	}
	
	@Override
	public VideoDto getVideo(String vno) throws DataAccessException {
		VideoDto video = studyAnnoInter.selectVideo(vno);
		return video;
	}
	
	//영상댓글부분
	@Override
	public List<Video_detDto> getdetAll(String vno) throws DataAccessException {
		 List<Video_detDto> detlist = studyAnnoInter.detList(vno);
		 return detlist;
	}
	
	@Override
	public int insertDet(Video_detBean bean) throws DataAccessException {
		int result = studyAnnoInter.detInsert(bean);
		return result;
	}
	
	@Override
	public int deleteDet(String det_no) throws DataAccessException {
		int result = studyAnnoInter.detDelete(det_no);
		return result;
	}
	
	@Override
	public int updateDet(Video_detBean bean) throws DataAccessException {
		int result = studyAnnoInter.detUpdate(bean);
		return result;
	}
	
	@Override
	public String getmin(String clno) throws DataAccessException {
		String min = studyAnnoInter.getmin(clno);
		return min;
	}
	
	@Override
	public String getmax(String clno) throws DataAccessException {
		String max = studyAnnoInter.getmax(clno);
		return max;
	}
	
	@Override
	public List<Video_detDto> getdapdetAll(String parent) throws DataAccessException {
		List<Video_detDto> list = studyAnnoInter.dapdetList(parent);
		return list;
	}
	
	@Override
	public int getseq(String parent) throws DataAccessException {
		int seq = studyAnnoInter.getseq(parent);
		return seq;
	}
	
	@Override
	public int insdap(Video_detBean bean) throws DataAccessException {
		int result = studyAnnoInter.insertdapdet(bean);
		return result;
	}
}
