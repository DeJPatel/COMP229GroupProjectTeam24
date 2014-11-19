<%@ Page Language="C#" MasterPageFile="~/BalloonShop.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Welcome to BalloonShop!" %>

<%@ Register Src="UserControls/ProductsList.ascx" TagName="ProductsList" TagPrefix="uc1" %>
<asp:Content ID="content" ContentPlaceHolderID="contentPlaceHolder" Runat="server">
    <div class="container">
	    <div class="sixteen columns">      
	        <div class="flex-container">
		        <div class="flexslider">
			  	    <ul class="slides">
				        <li>
				  		    <a href="#"><img src="images/penguin1.jpeg"/></a>
				      	    <div class="flex-caption">
							    <h5><a href="#">Call of Duty: Advanced Warfare</a></h5>
							    <p>Call of Duty: Advanced Warfare is a first-person shooter video game developed by Sledgehammer Games and published by Activision.</p>		
						    </div>
				        </li>
				        <li>
				          <a href="#"><img src="images/penguin2.jpeg" alt="Random Penguin Photo" /></a>
				          <div class="flex-caption" style="display:none;">
							    <h5><a href="#">Halo 5: Guardians</a></h5>
							    <p>The Halo franchise game is being developed by 343 Industries and published by Microsoft Studios.</p>	
						    </div>
				        </li>
				        <li>
				          <a href="#"><img src="images/penguin3.jpeg" alt="Random Penguin Photo" /></a>
				      	    <div class="flex-caption" style="display:none;">
							    <h5><a href="#">Dragon Age: Inquisition</a></h5>
							    <p>Dragon Age: Inquisition is an upcoming action role-playing video game being developed by BioWare and published by Electronic Arts.</p>		
						    </div>
				        </li>
			  	    </ul>
			    </div>
		    </div>
	    </div><!-- container -->            
    </div>
</asp:Content>

