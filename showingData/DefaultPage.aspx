<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultPage.aspx.cs" Inherits="showingData.DefaultPage" %>
<!DOCTYPE html>

<%@ Register Src="~/StudentUserControl.ascx" TagPrefix="uc" TagName="Student"%> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4>    
            Article for C#Corner    
        </h4>    
      
    <uc:Student ID="studentcontrol" runat="server" test="toihir"/>
        </div>
    </form>
</body>
</html>
