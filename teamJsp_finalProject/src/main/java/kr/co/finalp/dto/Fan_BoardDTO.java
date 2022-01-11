package kr.co.finalp.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Fan_BoardDTO {
	private int fanno;
	private String id;
	private String fan_title;
	private String fan_date;
	private String fan_contents;
	private int fan_hit;
}
