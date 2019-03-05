package p2p.mapper;

import java.util.List;

import p2p.model.Record;

public interface RecordMapper {
	
	/*
	 * 查询订单信息
	 */
	public List<Record> findAllRecord(String cid);
}
