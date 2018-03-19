<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <h2>Products</h2>
    <table id="pdt_table">
    <tr>
        <td>Gundam Astray Red Frame</td><td>Gundam Astray Gold Frame Amatsu</td><td>Gundam Astray Blue Frame</td>
    </tr>
        <tr>
            <td><img class="img-type1" src="Gundam-Astray-Red-Frame_cover_Front.jpg"/></td><td><img class="img-type1" src="Gundam-Astray-Gold-Frame_cover_Front.jpg"/></td><td><img class="img-type1" src="Gundam-Astray-Blue-Frame-2nd-L_cover_Front.jpg"/></td>
        </tr>
    </table>
    </asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
        <asp:HyperLink ID="HomeID" runat="server" Enabled="False" NavigateUrl="~/Home.aspx" Visible="False">Home</asp:HyperLink>
<br />
<asp:HyperLink ID="lnkContact" runat="server" NavigateUrl="~/Contacts.aspx">Contact Us</asp:HyperLink>
<br />
        <asp:HyperLink ID="lnkLog" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
        <br />
<br />
    
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <h1>Home</h1>
</asp:Content>




