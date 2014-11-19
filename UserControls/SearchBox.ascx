<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SearchBox.ascx.cs" Inherits="SearchBox" %>
<div class="searchBox">
    <asp:TextBox ID="searchTextBox" Runat="server"/>
    <asp:Button ID="goButton" Runat="server" CssClass="SearchBox" Text="Go!" Width="36px" Height="21px" OnClick="goButton_Click" /><br />
    <asp:CheckBox ID="allWordsCheckBox" CssClass="SearchBox" Runat="server" Text="Search for all words" />
</div>

