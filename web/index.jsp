
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-3 mt-3">
                <%
                    for(int i = 0; i < 10; i++){
                %>

                <div class="card">
                    <img src="https://picsum.photos/seed/picsum/100/100" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>

                <%
                    }
                %>
            </div>
        </div>
    </div>
</body>
</html>
