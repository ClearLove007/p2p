package p2p.service;

import java.util.List;

import p2p.model.Record;

public interface RecordService {
	
	/*
	 * 查询订单信息
	 */
	public List<Record> findAllRecord(String cid);
}
