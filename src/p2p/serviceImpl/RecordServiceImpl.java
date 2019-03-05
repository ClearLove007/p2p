package p2p.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import p2p.mapper.RecordMapper;
import p2p.model.Record;
import p2p.service.RecordService;

@Service
public class RecordServiceImpl implements RecordService {

	@Autowired
	private RecordMapper recordMapper;
	
	@Override
	public List<Record> findAllRecord(String cid) {
		// TODO 自动生成的方法存根
		
		return recordMapper.findAllRecord(cid);
	}

}
