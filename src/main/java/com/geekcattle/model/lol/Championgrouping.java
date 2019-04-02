package com.geekcattle.model.lol;

import lombok.Getter;
import lombok.Setter;
import com.geekcattle.model.Base;

@Getter
@Setter
public class Championgrouping extends Base {

	private Integer id;

	private String name;

	private String champions;

}