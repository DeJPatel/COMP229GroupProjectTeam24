<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DepartmentsList.ascx.cs" Inherits="DepartmentsList" %>

<div style="display:inline-block;margin:50px 100px 0 0 ">
  <asp:DataList ID="list" runat="server" Width="200px" height="30px" >
  <ItemTemplate>
    &nbsp;&raquo;
    <asp:HyperLink 
      ID="HyperLink1" 
      Runat="server" 
      NavigateUrl='<%# "../Catalog.aspx?DepartmentID=" + Eval("DepartmentID")%>'
      Text='<%# Eval("Name") %>'
      ToolTip='<%# Eval("Description") %>'
      >
    </asp:HyperLink>
    &nbsp;&laquo;
 </ItemTemplate>
</asp:DataList>
</div>
