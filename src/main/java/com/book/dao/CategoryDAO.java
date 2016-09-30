package com.book.dao;

import java.util.List;

import com.book.model.*;

public interface CategoryDAO {
	
	public void saveOrUpdate(Category categoryDetails);
	public void edit(Category categoryDetails);
	public List getALLCategory();
}
