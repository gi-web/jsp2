package guestbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Vector;

public class GuestBookMgr {
	
	private DBConnectionMgr pool;
	private final SimpleDateFormat SDF_DATE =
			new SimpleDateFormat("yyyy'??'  M'??' d'??' (E)");
	private final SimpleDateFormat SDF_TIME =
			new SimpleDateFormat("H:mm:ss");
	
	public GuestBookMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//Join Login
	public boolean loginJoin(String id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select * from tblJoin where id=? and pwd =?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			if(pstmt.executeQuery().next())
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	
	//Join Information
	public JoinBean getJoin(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		JoinBean bean = new JoinBean();
		try {
			con = pool.getConnection();
			sql = "select * from tblJoin where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				bean.setId(rs.getString(1));
				bean.setPwd(rs.getString(2));
				bean.setName(rs.getString(3));
				bean.setEmail(rs.getString(4));
				bean.setHp(rs.getString(5));
				bean.setGrade(rs.getString(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return bean;
	}
	
	//GuestBook Insert
	public void insertGuestBook(GuestBookBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "insert tblGuestBook(id,contents,ip,regdate,regtime,secret)"
					+ "values(?,?,?,now(),now(),?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getContents());
			pstmt.setString(3, bean.getIp());
			pstmt.setString(4, bean.getSecret());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
	}
	
	//GuestBook List
	public Vector<GuestBookBean> listGuestBook(String id, String grade){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<GuestBookBean> vlist = new Vector<GuestBookBean>();
		try {
			con = pool.getConnection();
			if(grade.equals("1")) {//??????
				sql = "select * from tblGuestBook order by num desc";
				pstmt = con.prepareStatement(sql);
			}else if(grade.equals("0")){//?Ϲ? ?α??? : ???? + ?ٸ? ???? ?Ϲݱ?
				sql = "select * from tblGuestBook "
				+ "where id=? or secret='0' order by num desc";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				GuestBookBean bean = new GuestBookBean();
				bean.setNum(rs.getInt("num"));
				bean.setId(rs.getString("id"));
				bean.setContents(rs.getString("contents"));
				bean.setIp(rs.getString("ip"));
				String tempDate = SDF_DATE.format(rs.getDate("regDate"));
				bean.setRegdate(tempDate);
				String tempTime = SDF_TIME.format(rs.getTime("regTime"));
				bean.setRegtime(tempTime);
				bean.setSecret(rs.getString("secret"));
				vlist.addElement(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	//GuestBook Read : ??¥?? ?ð??? list ?????ϰ?
	public GuestBookBean getGuestBook(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		GuestBookBean bean = new GuestBookBean();
		try {
			con = pool.getConnection();
			sql = "select * from tblGuestBook where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setNum(rs.getInt("num"));
				bean.setId(rs.getString("id"));
				bean.setContents(rs.getString("contents"));
				bean.setIp(rs.getString("ip"));
				String tempDate = SDF_DATE.format(rs.getDate("regDate"));
				bean.setRegdate(tempDate);
				String tempTime = SDF_TIME.format(rs.getTime("regTime"));
				bean.setRegtime(tempTime);
				bean.setSecret(rs.getString("secret"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return bean;
	}
	
	//GuestBook Update : Contents, ip, secret
	public void updateGuestBook(GuestBookBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "update tblGuestBook set contents=?,ip=?,secret=? "
					+ "where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getContents());
			pstmt.setString(2, bean.getIp());
			pstmt.setString(3, bean.getSecret());
			pstmt.setInt(4, bean.getNum());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
	}
	
	//GuestBook Delete
	public void deleteGuestBook(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "delete from tblGuestBook where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
	}
	
	/////Comment ????///////////
	
	//Comment Insert
	public void insertComment(CommentBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "insert tblComment(num,cid,comment,cip,cregDate)"
					+ "values(?,?,?,?,now())";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bean.getNum());
			pstmt.setString(2, bean.getCid());
			pstmt.setString(3, bean.getComment());
			pstmt.setString(4, bean.getCip());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
	}
	
	//Comment List
	public Vector<CommentBean> listComment(int num){
		//??¥?? SDF_DATE Ÿ?????? ????
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<CommentBean> vlist = new Vector<CommentBean>();
		try {
			con = pool.getConnection();
			sql = "select * from tblComment where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CommentBean bean = new CommentBean();
				bean.setCnum(rs.getInt("cnum"));//???۹?ȣ
				bean.setNum(rs.getInt("num"));//?????Ϲ?ȣ
				bean.setCid(rs.getString("cid"));//???? id
				bean.setComment(rs.getString("comment"));
				bean.setCip(rs.getString("cip"));
				String tempDate = SDF_DATE.format(rs.getDate("cregDate"));
				bean.setCregDate(tempDate);
				vlist.addElement(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	//Comment Delete : ???? ????
	public void deleteComment(int cnum/*???۹?ȣ*/) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "delete from tblComment where cnum=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cnum);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
	}
	
	//Comment All Delete : ?????? ?? ?????? ???õ? ???? ???? ????
	public void deleteAllComment(int num/*?????Ϲ?ȣ*/) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "delete from tblComment where num=?";
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












