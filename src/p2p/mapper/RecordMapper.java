package p2p.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import p2p.model.Record;

public interface RecordMapper {
	
	/*
	 * 查询订单信息
	 */
	public List<Record> findAllRecord(String cid);
	
	/*
	 * 插入订单
	 */
	public void insertRecord(@Param("cid")String cid,@Param("buytime")String buytime,@Param("earnings")Double earnings,@Param("pid")String pid);
}
