<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="etudiant.aspx.cs" Inherits="showingData.etudiant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        
        .auto-style2 {
            width: 81px;
        }
        .auto-style3 {
            width: 24%;
        }
        
        .auto-style4 {
            background-color: #66CCFF;
        }
        .auto-style5 {
            margin-left: 14px;
            background-color: #CCCCFF;
        }
        .auto-style6 {
            background-color: #6699FF;
        }
        .auto-style7 {
            background-color: #33CCFF;
        }
        
        .auto-style8 {
            color: #FF0000;
        }
        
        
        .auto-style9 {
            margin-left: 1px;
            margin-top: 1px;
        }
        .auto-style10 {
            width: 32%;
        }
        .auto-style11 {
            width: 144px;
        }
        .auto-style12 {
            margin-left: 19px;
            background-color: #3399FF;
        }
        
        
    </style>
</head>
<body style="height: 15px; margin-left: 28px;">
    <form id="form1" runat="server">
        <div style ="font-size:20px">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                             Ajouter etudiant<br />
                    <br />
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style2">Nom:</td>
                            <td>
                                <asp:TextBox ID="nomTxt" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Age:</td>
                            <td>
                                <asp:TextBox ID="ageInt" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                             <asp:Label ID="erreur" runat="server" CssClass="auto-style8"></asp:Label>
                    <br />
                    <asp:Button ID="insertBtn" runat="server" Text="insert" CssClass="auto-style5" OnClick="insertBtn_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="updatebtn" runat="server" CssClass="auto-style6" OnClick="updatebtn_Click" Text="update" />
        &nbsp;&nbsp;
                    <asp:Button ID="deletebtn" runat="server" CssClass="auto-style7" OnClick="deletebtn_Click" Text="delete" />
                    <br />
                    <br />
                    liste des etudiants<br />
                    <asp:Button ID="showbtn" runat="server" CssClass="auto-style4" OnClick="showbtn_Click" Text="show" />
                    <br />
                    <br />
         
                    <asp:GridView ID="grd" runat="server" Width="218px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical"  >
                         <AlternatingRowStyle BackColor="#DCDCDC" />
                         <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                         <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                         <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#0000A9" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                     <br />
                             <table class="auto-style10">
                                 <tr>
                                     <td class="auto-style11">
                                         <asp:TextBox ID="srchtxt" runat="server" CssClass="auto-style9" Height="16px" Width="184px"></asp:TextBox>
                                     </td>
                                     <td>
                                         <asp:Button ID="btnsrch" runat="server" OnClick="btnsrch_Click" Text="chercher" Style ="background-color:cornflowerblue " />
                                     </td>
                                 </tr>
                             </table>
                             <br />
                             &nbsp;&nbsp;&nbsp;
                             <asp:Label ID="srchlbl" runat="server"></asp:Label>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="DefaultPage.aspx" >exemple user control</asp:HyperLink>
                    
                </ContentTemplate>
            </asp:UpdatePanel>
           
        </div>
    </form>
</body>
</html>
