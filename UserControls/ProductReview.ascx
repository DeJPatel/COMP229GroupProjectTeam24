<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductReview.ascx.cs" Inherits="UserControls_ProductReview" %>

<asp:Panel ID="addReviewPanel" runat="server"> <p>
Write your own review!</p> 
    <hr style="width:100%;" />
    <p>
        <asp:Label ID="Label1" runat="server" Text="NickName" Width="100"></asp:Label>
        <span style="margin-left:5px"><asp:TextBox runat="server" ID="nickNameTextBox" Rows="1" Columns="25" TextMode="SingleLine" Height="30" Font-Size="15pt" /></span>
</p>
    <br/>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Review Title" Width="100"></asp:Label>
        <span style="margin-left:5px"><asp:TextBox ID="rtTextBox" runat="server" Height="30" Font-Size="15pt"></asp:TextBox></span>
    </p>
    <br/>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Review" Width="100"></asp:Label>
        <span style="margin-left:5px"><asp:TextBox ID="reviewTextBox" runat="server" Height="30" Font-Size="15pt"></asp:TextBox></span>
    </p>
    <br/>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Location" Width="100"></asp:Label>
        <span style="margin-left:5px"><asp:TextBox ID="locationTextBox" runat="server" Height="30" Font-Size="15pt"></asp:TextBox></span>
    </p>
    <br/>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Your Rating" Width="100"></asp:Label>
        <span style="margin-left:5px"><asp:DropDownList ID="ratingDropDownList" runat="server" Height="30" Font-Size="15pt">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem Value="5">5 (Outstanding)</asp:ListItem>
            <asp:ListItem Value="4">4 (Good)</asp:ListItem>
            <asp:ListItem Value="3">3 (Average)</asp:ListItem>
            <asp:ListItem Value="2">2 (Poor)</asp:ListItem>
            <asp:ListItem Value="1">1 (Awful)</asp:ListItem>
        </asp:DropDownList></span>
    </p>
<div style="width:100px;height:30px;text-align:center; padding:2px;border:2px solid black; margin-top:20px;font-size:15px; color:#fff; border-radius:5px;">
<asp:LinkButton ID="addReviewButton" runat="server"

OnClick="addReviewButton_Click">Add Review</asp:LinkButton>     </div></asp:Panel>