package kr.co.finalp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.finalp.dto.Fan_BoardDTO;
import kr.co.finalp.dto.StartEnd;

@Repository
public class Fan_BoardOracleDao implements Fan_BoardDao {
	
	@Autowired
	private SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<Fan_BoardDTO> selectAll(int startNo, int endNo) {
		StartEnd se = new StartEnd(startNo, endNo);	
		return ss.selectList("kr.co.finalp.fan_board_selectAll", se);
	}

	@Override
	public void InsertOne(Fan_BoardDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Fan_BoardDTO selectOne(int fanno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateOne(Fan_BoardDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int fanno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void raiseHits(int fanno) {
		// TODO Auto-generated method stub
		
	}

}
