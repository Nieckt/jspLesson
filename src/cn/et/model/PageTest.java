package cn.et.model;

public class PageTest {
	public static void main(String[] args) {
		/**
		 * 从数据库里取出数据
		 * 
		 */
		int curPage = 2;
		int totalCount = 26;
		int pageCount = 5;
		PageTools pt = new PageTools(curPage, totalCount, pageCount);
		//上一页
		System.out.println("上一页："+pt.getPrePage());
		//下一页
		System.out.println("下一页："+pt.getNextPage());
		//总页数
		System.out.println("总页数："+pt.getTotalPage());
		//开始索引
		System.out.println("开始索引："+pt.getStartIndex());
		//结束索引
		System.out.println("结束索引："+pt.getEndIndex());
		System.out.println(Integer.parseInt("3"));
	}
}
