<%@ Page Language="C#" MasterPageFile="~/BalloonShop.master" AutoEventWireup="true"
  CodeFile="Product.aspx.cs" Inherits="Product" Title="Untitled Page" %>

<%@ Register Src="UserControls/ProductRecommendations.ascx" TagName="ProductRecommendations"
  TagPrefix="uc1" %>
<%@ Register src="UserControls/ProductReview.ascx" tagname="ProductReview" tagprefix="uc2" %>

<asp:Content ID="content" ContentPlaceHolderID="contentPlaceHolder" runat="Server">
<div style=" border-radius:5px;background:#fff;padding:15px;  ">
  <br />
  <asp:Label CssClass="ProductTitle" ID="titleLabel" runat="server" Text="Label"></asp:Label>
  <br />
  <br />
  <asp:Image ID="productImage" runat="server" />
  <br />
  <asp:Label CssClass="ProductDescription" ID="descriptionLabel" runat="server" Text="Label"></asp:Label>
  <br />
  <br />
  <span class="ProductDescription">Price:</span>&nbsp;
  <asp:Label CssClass="ProductPrice" ID="priceLabel" runat="server" Text="Label" />
  <br />
  <asp:Button ID="addToCartButton" runat="server" Text="Add to Cart" CssClass="SmallButtonText" OnClick="addToCartButton_Click" />
  <asp:Button ID="continueShoppingButton" CssClass="SmallButtonText" runat="server" Text="Continue Shopping" OnClick="continueShoppingButton_Click" />
  <br />
  <br />
</div>
    <br/>
<div style="  border-radius:5px;background:#fff;padding:15px;  ">
  <uc1:ProductRecommendations id="ProductRecommendations1" runat="server">
  </uc1:ProductRecommendations>
    </div>
    <br />
     <asp:Label ID="Label2" runat="server" Text="Review Summary" Font-Size="Large"></asp:Label>
    <div style="  border-radius:5px;background:#fff;padding:15px;  ">
       
        <asp:DataList ID="DataList2" runat="server" DataSourceID="RSummaryDS" Width="191px" >
            <ItemTemplate>
                

                <%--totalsum:
                <asp:Label ID="totalsumLabel" runat="server" Text='<%# Eval("totalsum") %>' />
                <br />--%>
                Overall Rating:
                <%--<asp:Label ID="finalRatingLabel" runat="server" Text='<%# Eval("finalRating") %>' />--%><span class='rating-static rating-<%# (Eval("finalRating")) %>'></span>
                (
                <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
                Reviews)
            </ItemTemplate>
        </asp:DataList>
    </div>

    <asp:SqlDataSource ID="RSummaryDS" runat="server" ConnectionString="<%$ ConnectionStrings:BalloonShopConnection %>" SelectCommand="SELECT COUNT(Rating) AS total, SUM(Rating) AS totalsum, SUM(Rating) / COUNT(Rating) AS finalRating FROM Review WHERE (ProductID = @ProductID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br/>
    <asp:Label ID="Label1" runat="server" Text="Game Reviews" Font-Size="Large"></asp:Label>
    <div style="  border-radius:5px;background:#fff;padding:15px;  ">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="ReviewDS" >
       
    
        <ItemTemplate>

            <style>.rating-static {
              width: 60px;
              height: 16px;
              display: block;
              background: url('http://www.itsalif.info/blogfiles/rating/star-rating.png') 0 0 no-repeat;
            }
            .rating-5 { background-position: 0 0; }
            .rating-4 { background-position: -12px 0; }
            .rating-3 { background-position: -24px 0; }
            .rating-2 { background-position: -36px 0; }
            .rating-1 { background-position: -48px 0; }
            .rating-0 { background-position: -60px 0; }
 
            /*.rating-5  { background-position: -48px -16px; }*/
            .rating-15 { background-position: -36px -16px; }
            .rating-25 { background-position: -24px -16px; }
            .rating-35 { background-position: -12px -16px; }
            .rating-45 { background-position: 0 -16px; }
              </style>
            <%--<asp:Label ID="RatingLabel" runat="server" Text='<%# (Eval("Rating", "{0}")) %>' />--%>
            <asp:Label ID="RatingLabel" runat="server" />
            &nbsp;<table>
                <tr>
                    <td><span class='rating-static rating-<%# (Eval("Rating", "{0}")) %>'></span></td>
                    <td>
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="ReviewTitleLabel" runat="server" Text='<%# Eval("ReviewTitle") %>' />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp; <em><span style="font-weight: normal">Written by</span></em>
            <asp:Label ID="NickNameLabel" runat="server" Text='<%# Eval("NickName") %>' />
            <asp:Label ID="LocationLabel" runat="server" Font-Italic="True" Text='<%# Eval("Location") %>' />
            <br />
            <asp:Label ID="ReviewDateLabel" runat="server" Font-Italic="True" Text='<%# Eval("ReviewDate", "{0:MMMM dd, yyyy HH:mm}") %>' />
            &nbsp;
            <asp:Label ID="ReviewLabel" runat="server" Text='<%# Eval("Review") %>' />
                        <hr style="width:900px;" />

        </ItemTemplate>
    </asp:DataList>
                </div>
    <br/>
    <div style=" border-radius:5px;background:#fff;padding:15px;  ">
    <asp:SqlDataSource ID="ReviewDS" runat="server" ConnectionString="<%$ ConnectionStrings:BalloonShopConnectionString %>" SelectCommand="SELECT [NickName], [ReviewTitle], [Rating], [ReviewDate], [Location], [Review] FROM [Review] WHERE ([ProductID] = @ProductID)">
        
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <uc2:ProductReview ID="ProductReview1" runat="server" />
    <br />
    <br />
        </div>
    <br/>
    </asp:Content>

