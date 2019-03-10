package p2p.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import p2p.model.Record;

public interface RecordService {
	
	/*
	 * 查询订单信息
	 */
	public List<Record> findAllRecord(String cid);
	
	/*
	 * 插入订单
	 */
	public void insertRecord(String cid,String buytime,Double earnings,String pid);
}
