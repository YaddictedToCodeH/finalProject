package kr.co.finalp.dao;

import java.util.List;

import kr.co.finalp.dto.GalleryDTO;

public interface GalleryDao {

	public List<GalleryDTO> selectAll(int startNo, int endNo);
	public GalleryDTO selectOne(int galleryno);
	public int getTotal();
	public void hitsUp(int galleryno);
	
}
