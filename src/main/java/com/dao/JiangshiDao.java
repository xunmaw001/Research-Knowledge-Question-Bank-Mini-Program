package com.dao;

import com.entity.JiangshiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiangshiVO;
import com.entity.view.JiangshiView;


/**
 * 讲师
 * 
 * @author 
 * @email 
 * @date 2022-03-02 12:26:26
 */
public interface JiangshiDao extends BaseMapper<JiangshiEntity> {
	
	List<JiangshiVO> selectListVO(@Param("ew") Wrapper<JiangshiEntity> wrapper);
	
	JiangshiVO selectVO(@Param("ew") Wrapper<JiangshiEntity> wrapper);
	
	List<JiangshiView> selectListView(@Param("ew") Wrapper<JiangshiEntity> wrapper);

	List<JiangshiView> selectListView(Pagination page,@Param("ew") Wrapper<JiangshiEntity> wrapper);
	
	JiangshiView selectView(@Param("ew") Wrapper<JiangshiEntity> wrapper);
	

}
