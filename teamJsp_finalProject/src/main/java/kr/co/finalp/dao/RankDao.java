package kr.co.finalp.dao;

import java.util.List;

import kr.co.finalp.dto.PlayerRankDTO;
import kr.co.finalp.dto.RankDTO;
import kr.co.finalp.dto.RankPlayerAllDTO;

public interface RankDao {
	
	public List<RankDTO> rankSelectAll();
	public List<PlayerRankDTO> ptsRank();
	public List<PlayerRankDTO> rebRank();
	public List<PlayerRankDTO> astRank();
	public List<RankPlayerAllDTO> rankAll(String event);

}
