package netpidia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import shop.DBConnectionMgr;

public class NetBoardMgr {
	private DBConnectionMgr pool;
	private static final String UPLOAD = "C:/Jsp/myapp/WebContent/chnet/se2/upload";
	private static final String ENCTYPE = "EUC-KR";
	private static final int MAXSIZE = 10 * 1024 * 1024;

	public NetBoardMgr() {
		pool = DBConnectionMgr.getInstance();
	}

	// Board Insert(db2)
	public void insertNetBoard(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			MultipartRequest multi = new MultipartRequest(req, UPLOAD, MAXSIZE, ENCTYPE, new DefaultFileRenamePolicy());
			String content = multi.getParameter("content");
			String contentType = multi.getParameter("contentType");
			if (contentType.equals("TEXT")) {
				content = UtilMgr.replace(content, "<", "&lt;");
			}
			///////////////////////////////////////////////////
			con = pool.getConnection();
			sql = "insert tblNetBoard(id,content,subject,";
			sql += "regdate,count,ip,image,like_cnt)";
			sql += "values(?, ?, ?, now(), 0, ?, ?, 0)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, multi.getParameter("id"));
			pstmt.setString(2, content);
			pstmt.setString(3, multi.getParameter("subject"));
			pstmt.setString(4, multi.getParameter("ip"));
			if (multi.getFilesystemName("image") != null)
				pstmt.setString(5, multi.getFilesystemName("image"));
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return;
	}

	// Board Total Count : 총 게시물수
	public int getTotalCount(String keyField, String keyWord) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int totalCount = 0;
		try {
			con = pool.getConnection();
			if (keyWord.trim().equals("") || keyWord == null) {
				// 검색이 아닌경우
				sql = "select count(*) from tblNetBoard";
				pstmt = con.prepareStatement(sql);
			} else {
				// 검색인 경우
				sql = "select count(*) from tblNetBoard where " + keyField + " like ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + keyWord + "%");
			}
			rs = pstmt.executeQuery();
			if (rs.next())
				totalCount = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return totalCount;
	}

	// Board List : 검색 기능(keyField, keyWord)
	public Vector<NetBoardBean> getNetBoardList(String keyField, String keyWord, int start, int cnt) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<NetBoardBean> vlist = new Vector<NetBoardBean>();
		try {
			con = pool.getConnection();
			if (keyWord.trim().equals("") || keyWord == null) {
				// 검색이 아닐때
				sql = "select * from tblNetBoard order by num desc";
				pstmt = con.prepareStatement(sql);
			} else {
				// 검색일때
				sql = "select * from tblNetBoard where " + keyField + " like ? order by num desc";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + keyWord + "%");
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {
				NetBoardBean bean = new NetBoardBean();
				bean.setNum(rs.getInt("num"));
				bean.setId(rs.getString("id"));
				bean.setSubject(rs.getString("subject"));
				bean.setRegdate(rs.getString("regdate"));
				bean.setCount(rs.getInt("count"));
				bean.setImage(rs.getString("image"));
				bean.setLike_cnt(rs.getInt("like_cnt"));
				vlist.addElement(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}

	public NetBoardBean getNetBoard(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		NetBoardBean bean = new NetBoardBean();
		try {
			con = pool.getConnection();
			sql = "select * from tblNetBoard where num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bean.setNum(rs.getInt("num"));
				bean.setId(rs.getString("id"));
				bean.setSubject(rs.getString("subject"));
				bean.setContent(rs.getString("content"));
				bean.setRegdate(rs.getString("regdate"));
				bean.setIp(rs.getString("ip"));
				bean.setCount(rs.getInt("count"));
				bean.setImage(rs.getString("image"));
				bean.setLike_cnt(rs.getInt("like_cnt"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return bean;
	}

	// Board Up : 조회수 증가
	public void upCount(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "update tblNetBoard set count = count +1 where num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
	}
}
