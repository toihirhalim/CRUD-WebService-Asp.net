<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentUserControl.ascx.cs" Inherits="showingData.StudentUserControl" %>

<h3>This is User Contro1   </h3>   
<table>  
  
<tr>  
<td>Name</td>  
<td>  
  
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> 
</td>  
</tr>  
<tr>  
<td>City</td>  
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</tr>  
<tr>  
<td></td>  
<td>  
     </td>  
</tr>  
<tr>  
<td></td>  
  
<td>   
    <asp:Button ID="txtSave" runat="server" Text="Save" onclick="txtSave_Click" />  </td>  
</tr>  
</table><br />  
 <asp:Label ID="Label1" runat="server" ForeColor="White" Text=" "></asp:Label> 
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
 