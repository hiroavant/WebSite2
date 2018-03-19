<%@ Page Title="Register" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Register</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <form id="form1" method="post" action="#" runat="server">
        <asp:Label ID="lblregUser" runat="server" Text="Username: "></asp:Label>
        <asp:TextBox ID="tbxregUser" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblregEmail" runat="server" Text="Email: "></asp:Label>
        <asp:TextBox ID="tbxregEmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblregPass" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="tbxregPass" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblregPass2" runat="server" Text="Confirm Password: "></asp:Label>
        <asp:TextBox ID="tbxregPass2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click1" />
        <br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </form>

</asp:Content>

