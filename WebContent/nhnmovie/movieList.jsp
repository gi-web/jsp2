<%@page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*, java.io.*, java.net.*, org.json.*"%>
<%
		//JSP code
		request.setCharacterEncoding("UTF-8");
		String contextRoot = request.getContextPath();
		StringBuilder sb = new StringBuilder();
		String key = request.getParameter("key");
		String value = request.getParameter("value");

		int totalRows = 0;
		if (key == null) {
			key = "";
			value = "";
			sb.append("<div style =\"text-align: center;\">검색어를 입력해 주세요.</div>");
		} else {
			String clientId = "IZ4rKvVn6LRiAtMd92HV";
			String clientSecret = "QHZ_JqeKl1";
			String apiURL = "https://openapi.naver.com/v1/search/movie.json?query="
			+ URLEncoder.encode(value, "UTF-8")+"&display=10&start=1&genre=1"; // json 결과
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출 JSON
				br = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
				// BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8")); 
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
		
			String inputLine;
			StringBuffer response2 = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				response2.append(inputLine);
			}
			br.close();
			JSONObject jobj = new JSONObject(response2.toString());
			System.out.println(jobj.toString());
			totalRows = jobj.getInt("total");
			//System.out.println(totalRows);
			JSONArray jarray = jobj.getJSONArray("items");
			for (int a = 0; a < jarray.length(); a++) {
				JSONObject temp = jarray.getJSONObject(a);
				sb.append(
				"<div class=\"row\" style=\"margin-top:30px; border-top:1px dashed #e5e5e5; padding-top:20px;\">");
				sb.append(String.format("<div class=\"col-sm-1\">%d</div>", (a + 1)));
				sb.append(String.format("<div class=\"col-sm-2\"><img src=\"%s\" alt=\"%s\"></div>",
				temp.getString("image"), temp.getString("image")));
				sb.append("<div  class=\"col-sm-7\">");
				sb.append(String.format("<ul><li><strong>title</strong> %s</li><li><strong>pubDate</strong> %s</li><li><strong>director</strong> %s</li><li><strong>actor</strong> %s</li><li><strong>userRating</strong> %s</li></ul>",
				temp.getString("title"), temp.getString("pubDate"), temp.getString("director"),
				temp.getString("actor"), temp.getString("userRating")));
				sb.append("</div>");
				sb.append("<div class=\"col-sm-2\">");
				sb.append(String.format("<button type=\"button\" class=\"btn btn-default btn-xs\" onclick=\"window.open('%s')\">상세보기</button>",
				temp.getString("link")));
				sb.append("</div>");
				sb.append("</div>");
			}
		}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Naver Movie</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
div#input:hover, div#output:hover {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}
</style>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() {
		var key = "<%=key%>";
        var value = "<%=value%>";
		$("select#key > option[value=" + key + "]").attr("selected","selected");
		$("input#value").val(value);
	});
</script>
</head>
<body>
	<div class="container">
		<div class="panel page-header" style="text-align: center;">
			<h1 style="font-size: xx-large;">네이버 영화 검색 <small>v1.0</small> 
			<span style="font-size: small; color: #777777;"></span>
			</h1>
		</div>
		<div class="panel panel-default" id="input">
			<div class="panel-heading">영화 검색</div>
			<div class="panel-body">
				<form class="form-inline" method="post">
					<select class="form-control" id="key" name="key">
						<option value="title">Title</option>
					</select> 
					<input class="form-control" id="value" name="value" placeholder="Search" style="width: 30%">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i><span>Search</span>
					</button>
				</form>
			</div>
		</div>

		<div class="panel panel-default" id="output">
			<div class="panel-heading">영화 검색 결과</div>
			<div class="panel-body book-list-box">
				<button type="button" class="btn btn-default">
					TotalRows <span class="badge"><%=totalRows%></span>
				</button>
				<span style="font-size: small; color: #777777;">
				결과는 최대 100건까지만 출력됩니다.</span>
				<%=sb.toString()%>
			</div>
		</div>
	</div>
</body>
</html>

