<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CategoriesList.ascx.cs" Inherits="CategoriesList" %>
<asp:DataList ID="list" runat="server"  Width="200px">
  <ItemTemplate>
    &nbsp;&raquo;
    <asp:HyperLink 
      ID="HyperLink1" 
      Runat="server" 
      NavigateUrl='<%# "../Catalog.aspx?DepartmentID=" + Request.QueryString["DepartmentID"] + "&CategoryID=" + Eval("CategoryID")  %>'
      Text='<%# Eval("Name") %>' 
      ToolTip='<%# Eval("Description") %>' 
      CssClass='<%# Eval("CategoryID").ToString() == Request.QueryString["CategoryID"] ? "CategorySelected" : "CategoryUnselected" %>'>>
    </asp:HyperLink>
    &nbsp;&laquo;
  </ItemTemplate>
  <HeaderTemplate>
      <div style="background-color:#0094ff;color:#fff;">Choose a Category</div>
  </HeaderTemplate>
</asp:DataList>
<div style="background-color:#0094ff;color:#fff; margin-bottom:-22px;"><asp:Label ID="brLabel" runat="server" Text=""/></div>

  
