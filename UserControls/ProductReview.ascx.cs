using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_ProductReview : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Retrieve ProductID from the query string
        string productId = Request.QueryString["ProductID"];
    }
    protected void addReviewButton_Click(object sender, EventArgs e)
    {
        string productId = Request.QueryString["ProductID"];
        CatalogAccess.AddReview(nickNameTextBox.Text, rtTextBox.Text, ratingDropDownList.Text, locationTextBox.Text, reviewTextBox.Text, productId);
        Response.Redirect(HttpContext.Current.Request.RawUrl);
    }
}