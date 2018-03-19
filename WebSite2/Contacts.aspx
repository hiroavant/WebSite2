<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <h1>Contact Us</h1>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   <div id="map">
        <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: -34.397, lng: 150.644 },
                zoom: 8,
        });
        }
    </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBmcdz9McdvzXCmUJh3Ak4kEsMo8RBZfmM&callback=initMap"async defer></script>
    </div>
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <h2>Contact Form</h2>
    <form id="form1" runat="server">
    <asp:Label ID="lblcontactSubject" runat="server" Text="Subject: "></asp:Label>
    <asp:TextBox ID="tbxcontactSubject" runat="server" Width="200px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revcontactSubject" runat="server" ErrorMessage="Subject is needed" ControlToValidate="tbxcontactSubject"></asp:RegularExpressionValidator>
    
        &nbsp;<asp:RequiredFieldValidator ID="reqcontactSubject" runat="server" ErrorMessage="Subject is required!" ForeColor="Red" ControlToValidate="tbxcontactSubject"></asp:RequiredFieldValidator>
    <br />
   
    <asp:Label ID="lblcontactEmail" runat="server" Text="Email Address: "></asp:Label>
    <asp:TextBox ID="tbxcontactEmail" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqcontactEmail" runat="server" ErrorMessage="Email Address is required!" ForeColor="Red" Visible="True" ControlToValidate="tbxcontactEmail"></asp:RequiredFieldValidator>
    <br />
    
    <asp:Label ID="lblcontactReason" runat="server" Text="Reasons: "></asp:Label>
    <br />
    <asp:TextBox ID="txtcontactReason" runat="server" Width="400px" Height="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please fill in your reason" ForeColor="Red" ControlToValidate="txtcontactReason"></asp:RequiredFieldValidator><br />
        <asp:Literal ID="Body" runat="server"></asp:Literal>
        <br />
    
    <asp:Button ID="btnContactSubmit" runat="server" Text="Submit" OnClick="btnContactSubmit_Click" />
        </form>

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:HyperLink ID="HomeID" runat="server" NavigateUrl="~/Home.aspx" Visible="False">Home</asp:HyperLink>
<br />
<asp:HyperLink ID="lnkContact" runat="server" NavigateUrl="~/Contacts.aspx" Enabled="False">Contact Us</asp:HyperLink>
<br />
        <asp:HyperLink ID="lnkLog" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
        <br />
<br />
</asp:Content>






