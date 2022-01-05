package kr.co.finalp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.finalp.dto.GalleryDTO;
import kr.co.finalp.dto.StartEnd;

@Repository
public class GalleryOracleDAO implements GalleryDao {

	@Autowired
	private SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	
	
	
	@Override
	public List<GalleryDTO> selectAll(int startNo, int endNo) {
		System.out.println("SqlSession: " + ss);
		
		StartEnd se = new StartEnd(startNo, endNo);
		return ss.selectList("kr.co.finalp.selectAll", se);
	}

	@Override
	public GalleryDTO selectOne(int galleryno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotal() {
		return ss.selectOne("kr.co.finalp.getTotal");
	}

	@Override
	public void hitsUp(int galleryno) {
		// TODO Auto-generated method stub
		
	}

}
