package pack.model;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.dao.DataAccessException;

import pack.controller.ClassinfoBean;
import pack.controller.InsertBean;

public interface ClassAnnoInter {
	
	/*
	@Select("select * from class where class_category='머신러닝'")
	List<ClassDto> selectMachine() throws DataAccessException;
	
	@Select("select * from class where class_category='디자인'")
	List<ClassDto> selectDesign() throws DataAccessException;
	
	@Select("select * from class where class_category='프로그래밍'")
	List<ClassDto> selectProgramming() throws DataAccessException;
	
	@Select("select * from class where class_category='마케팅'")
	List<ClassDto> selectMarketing() throws DataAccessException;
	*/
	
	@Select("select * from class where class_category=#{category}")
	List<ClassDto> selectCategory(String category) throws DataAccessException;
	
	
	@Select("select * from class")
	List<ClassDto> selectCategoryAll() throws DataAccessException;
	
	@Select("select * from class where class_no=#{class_no}")
	ClassDto selectCatePart(String class_no) throws DataAccessException;
	
	
	@Select("select * from classinfo where classinfo_class_no=#{class_no}")
	ClassinfoDto selectDetail(String class_no) throws DataAccessException; 
	
	@Select("select * from curri where class_no=#{class_no}")
	List<CurriDto> selectCurri(String class_no) throws DataAccessException; 
	
	@Select("select * from class where class_no=#{class_no}")
	List<ClassDto> selectClass(String class_no) throws DataAccessException;
	
	@Select("select * from member where member_no=#{member_no}")
	List<MemberDto> selectMember(String member_no) throws DataAccessException;
	
	@Update("update member set member_class_no=#{class_no} where member_no=#{member_no}")
	void insertClass(InsertBean bean) throws DataAccessException;
	
	@Insert("insert into take(class_no, member_no) values(#{class_no},#{member_no})")
	void insertTake(TakeDto takeDto) throws DataAccessException;
}
