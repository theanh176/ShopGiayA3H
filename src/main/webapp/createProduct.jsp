<%--
  Created by IntelliJ IDEA.
  User: Nguyen Huu Hieu
  Date: 11/21/2021
  Time: 10:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create Product</title>
<%--    <script src='https://cdn.firebase.com/js/client/2.2.1/firebase.js'></script>--%>
</head>
<body>
<%--HEADER ADMIN--%>
<c:import url="/header.jsp"/>
<%--/HEADER ADMIN--%>

    <form action="create" method="post">
        <table>
<%--            <tr>--%>
<%--                <td>Name</td>--%>
<%--                <td><input type="text" name="id"></td>--%>
<%--            </tr>--%>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td>Image: </td>
                <td><input type="file" name="image" placeholder="chưa up ảnh được"></td>
            </tr>
            <tr>
                <td>Title: </td>
                <td><input type="text" name="title"></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><input type="text" name="description"></td>
            </tr>
            <tr>
                <td><input type="text" name="cid"></td>
            </tr>
        </table>
<%--        <div>--%>
<%--            <div>--%>
<%--                <img src="<c:url value="/images/bg.jpg"/>" id="upload-img">--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <label for="fileupload">Tai hinh anh</label>--%>
<%--                <input type="file" name="fileupload" id="fileupload" multiple>--%>
<%--                <button id="send" type="button">Upload</button>--%>
<%--                <input type="text" name="urlImage" id="urlImage" value="">--%>
<%--            </div>--%>
<%--        </div>--%>
        <input type="submit" value="Create">
    </form>
</body>
<%--<script src="https://www.gstatic.com/firebasejs/8.7.0/firebase-app.js"></script>--%>

<%--<script src="https://www.gstatic.com/firebasejs/8.7.0/firebase-analytics.js"></script>--%>

<%--<script>--%>
<%--    var firebaseConfig = {--%>
<%--        apiKey: "AIzaSyBQzGaQudrtLdHkbFrbqntiDR7l57iN97c",--%>
<%--        authDomain: "shopgiay-8c106.firebaseapp.com",--%>
<%--        projectId: "shopgiay-8c106",--%>
<%--        storageBucket: "shopgiay-8c106.appspot.com",--%>
<%--        messagingSenderId: "503683454232",--%>
<%--        appId: "1:503683454232:web:d6f1d03c1ceb68ef9aba6d",--%>
<%--        measurementId: "G-ZLFJP3FB75"--%>
<%--    };--%>
<%--    // Initialize Firebase--%>
<%--    firebase.initializeApp(firebaseConfig);--%>
<%--</script>--%>

<%--<script>--%>
<%--    var files = [];--%>
<%--    document.getElementById("fileupload").addEventListener("change", function(e) {--%>
<%--        files = e.target.files;--%>
<%--        for (let i = 0; i > files.length; i++) {--%>
<%--            console.log(files[i])--%>
<%--        }--%>
<%--    });--%>

<%--    document.getElementById("send").addEventListener("click", function() {--%>
<%--        //checks if files are selected--%>
<%--        if (files.length != 0) {--%>
<%--            //Loops through all the selected files--%>
<%--            for (let i = 0; i < files.length; i++) {--%>
<%--                //create a storage reference--%>
<%--                var storage = firebase.storage().ref(files[i].name);--%>

<%--                //upload file--%>
<%--                var upload = storage.put(files[i]);--%>

<%--                var uploadTask = storage.put(files[i]);--%>
<%--                //update progress bar--%>
<%--                upload.on(--%>
<%--                    "state_changed",--%>
<%--                    function progress(snapshot) {--%>

<%--                    },--%>

<%--                    function error(e) {--%>
<%--                        alert(e);--%>
<%--                    },--%>

<%--                    function () {--%>
<%--                        uploadTask.snapshot.ref.getDownloadURL()--%>
<%--                            .then(async function (downloadURL) {--%>
<%--                                document.getElementById("urlImage").value = downloadURL;--%>
<%--                            });--%>
<%--                    },--%>
<%--                );--%>
<%--            }--%>
<%--        } else {--%>
<%--            alert("Vui lòng chọn hình ảnh");--%>
<%--        }--%>
<%--    })--%>
<%--</script>--%>
</html>
