package kr.co.finalp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.finalp.dto.NoticeDTO;
import kr.co.finalp.dto.StartEnd;

@Repository
public class NoticeOracleDAO implements NoticeDao {
	
	@Autowired
	private SqlSession ss;
	
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<NoticeDTO> selectAll(int startNo, int endNo) {
		StartEnd se = new StartEnd(startNo, endNo);
		return ss.selectList("kr.co.finalp.selectAll", se);
	}

	@Override
	public void InsertOne(NoticeDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public NoticeDTO selectOne(int noticeno) {
		return ss.selectOne("kr.co.finalp.selectOne", noticeno);
	}

	@Override
	public void updateOne(NoticeDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int noticeno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getTotal() {
		return ss.selectOne("kr.co.finalp.getTotal");
	}

	@Override
	public void raiseHits(int noticeno) {
		// TODO Auto-generated method stub
		
	}
	
}
