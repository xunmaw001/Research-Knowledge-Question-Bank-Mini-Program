package com.dao;

import com.entity.ShenqingjiangshiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShenqingjiangshiVO;
import com.entity.view.ShenqingjiangshiView;


/**
 * 申请讲师
 * 
 * @author 
 * @email 
 * @date 2022-03-02 12:26:26
 */
public interface ShenqingjiangshiDao extends BaseMapper<ShenqingjiangshiEntity> {
	
	List<ShenqingjiangshiVO> selectListVO(@Param("ew") Wrapper<ShenqingjiangshiEntity> wrapper);
	
	ShenqingjiangshiVO selectVO(@Param("ew") Wrapper<ShenqingjiangshiEntity> wrapper);
	
	List<ShenqingjiangshiView> selectListView(@Param("ew") Wrapper<ShenqingjiangshiEntity> wrapper);

	List<ShenqingjiangshiView> selectListView(Pagination page,@Param("ew") Wrapper<ShenqingjiangshiEntity> wrapper);
	
	ShenqingjiangshiView selectView(@Param("ew") Wrapper<ShenqingjiangshiEntity> wrapper);
	

}
