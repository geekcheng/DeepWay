package com.deep.service;

import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

@Service("mongoService")
public class MongoService {
	@SuppressWarnings("unused")
	private static final long serialVersionUID = -3685114416344365209L;

	private static final Logger logger = Logger.getLogger(MongoService.class);

	@Autowired
	private MongoTemplate mongoTemplate;

	public void findMongodbSpecs() {
		logger.debug("Find Mongodb Begin");
		DB db = mongoTemplate.getDb();
		db.getOptions();
		Set<String> collectionNames = db.getCollectionNames();
		for (String name : collectionNames) {
			DBCollection collection = db.getCollection(name);

			logger.debug(collection);
			// DBObject dbObject = collection.findOne();//
			// logger.debug(dbObject);
			DBCursor cursor=collection.find().limit(10);   //只取前十个
			while (cursor.hasNext()) {
				DBObject dbObject = cursor.next();
				Map map = dbObject.toMap();//结构化的数据
				logger.debug(map);
			}
		}
		logger.debug("Find Mongodb End");
		// return mongoTemplate.findOne(new
		// Query(Criteria.where("username").is(username)), User.class,
		// USER_COLLECTION);
	}
}