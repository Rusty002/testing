<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EvenOrOdd.aspx.cs" Inherits="CureTravels.EvenOrOdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
        function isEvenOrOdd() {
            var inputVal = document.getElementById("txtInput").value;
            if (inputVal == "") return;
            $.ajax({
                url: 'EvenOrOdd.aspx/CheckIsEvenOrOdd',
                type: 'post',
                data: JSON.stringify({ "inputValue": inputVal }),
                contentType: 'application/json',
                async: false,
                success: function (data) {
                    if (data.d) {
                        alert("Number is EVEN");
                    }
                    else {
                        alert("Number is ODD");
                    }
                }
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display:flex; justify-content:center; align-items: center; height: 100vh;">
            <input type="text" id="txtInput" class="formControl" />
            <input type="button" id="btn" onclick="isEvenOrOdd()" value="Check is Even" />
        </div>
    </form>
</body>
</html>
