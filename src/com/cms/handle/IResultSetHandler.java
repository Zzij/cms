package com.cms.handle;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface IResultSetHandler<T> {

	T handler(ResultSet rs) throws SQLException;
}
