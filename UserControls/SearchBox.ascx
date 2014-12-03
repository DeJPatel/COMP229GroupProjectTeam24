<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SearchBox.ascx.cs" Inherits="SearchBox" %>
<div class="searchBox">
    <asp:CheckBox ID="allWordsCheckBox"  Runat="server" Text="Search for all words" />
    <br/>
    <asp:TextBox ID="searchTextBox" class="searchTextBox" Runat="server"/>
    <asp:Button ID="goButton" class="goButton" Runat="server" Text="Go!"  OnClick="goButton_Click" /><br />
    
    
</div>

