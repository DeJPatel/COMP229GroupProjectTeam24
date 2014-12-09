<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductReview.ascx.cs" Inherits="UserControls_ProductReview" %>

<asp:Panel ID="addReviewPanel" runat="server"> <p>
Write your own review!</p> <p>
        <asp:Label ID="Label1" runat="server" Text="NickName"></asp:Label>
<asp:TextBox runat="server" ID="nickNameTextBox" Rows="1" Columns="50" TextMode="SingleLine" />
</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Review Title"></asp:Label>
        <asp:TextBox ID="rtTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Review"></asp:Label>
        <asp:TextBox ID="reviewTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Location"></asp:Label>
        <asp:TextBox ID="locationTextBox" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Your Rating"></asp:Label>
        <asp:DropDownList ID="ratingDropDownList" runat="server">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem Value="5">5 (Outstanding)</asp:ListItem>
            <asp:ListItem Value="4">4 (Good)</asp:ListItem>
            <asp:ListItem Value="3">3 (Average)</asp:ListItem>
            <asp:ListItem Value="2">2 (Poor)</asp:ListItem>
            <asp:ListItem Value="1">1 (Awful)</asp:ListItem>
        </asp:DropDownList>
    </p>
<asp:LinkButton ID="addReviewButton" runat="server"
OnClick="addReviewButton_Click">Add Review</asp:LinkButton> </asp:Panel>