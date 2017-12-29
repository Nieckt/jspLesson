package cn.et.model;

import java.util.List;
import java.util.Map;

public class MyDept {
	/**
	 * 封装get方法
	 * @return
	 * @throws Exception 
	 */
	public String getTable() throws Exception {
		StringBuffer sb = new StringBuffer();
		//查询数据
		List<Map> result = DbUtils.query("select * from EMP");
		sb.append("<table>");
		sb.append("<tr><th>邮箱</th><th>性别</th><th>爱好</th><th>出生日期</th><th>电话</th></tr>");
		for(Map map : result) {
			sb.append("<tr><td>"+map.get("email")+"</td><td>"+map.get("sex")+"</td><td>"+map.get("hobby")+"</td><td>"+map.get("birthdate")+"</td><td>"+map.get("tel")+"</td></tr>");
		}
		sb.append("</table>");
		return sb.toString();
	}
	
	public Integer getTableListCount(String name) throws Exception {
		if(name == null) {
			name = "";
		}
		String sql = "select count(rowid) as cr from emp where ename like '%"+name+"%'";
		List<Map> result = DbUtils.query(sql);
		//总记录数
		return Integer.parseInt(result.get(0).get("CR").toString());
	}
	/**
	 * 把数据封装成一个list集合
	 * @return
	 * @throws Exception
	 */
	public List<Map> getTableList(String qsex) throws Exception {
		if(qsex == null) {
			qsex = "";
		}
		StringBuffer sb = new StringBuffer();
		List<Map> result = DbUtils.query("select * from eclass where sex like '%"+qsex+"%'");
		return result;
	}
	
	public PageTools getTableListPage(String name, Integer curPage) throws Exception {
		if(name == null) {
			name = "";
		}
		Integer totalCount = getTableListCount(name);
		PageTools pt = new PageTools(curPage, totalCount, null);
		StringBuffer sb = new StringBuffer();
		String sql = "select * from (select t.*,rownum rn from EMP t where t.ename like '%"+name+"%')" + "where rn>="+pt.getStartIndex()+" and rn<="+pt.getEndIndex();
		List<Map> result = DbUtils.query(sql);
		pt.setData(result);
		return pt;
	}
}
