<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management</title>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>

<div align="right">
	<table>
		<thead>
			<tr>
				<%-- Phúc bỏ link vào đây --%>
				<th><a href=" đường link ">Thoát</a></th>
			</tr>
		</thead>
	</table>
</div>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Name</th>
            <th>Phone Number</th>
            <th>Address</th>
            <th>CCCD</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <%-- Đoạn mã này cần được thay thế bằng code để trích xuất dữ liệu từ Database --%>
        <%-- Ví dụ: --%>
        <tr>
            <td>1</td>
            <td>john.doe@example.com</td>
            <td>John Doe</td>
            <td>(123) 456-7890</td>
            <td>123 Street Name, City</td>
            <td>123456789</td>
            <td>
                <a href="delete-user?id=1">Delete</a>
            </td>
        </tr>
        <%-- Kết thúc ví dụ --%>
    </tbody>
</table>
</body>
</html>
