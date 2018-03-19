<%@ Page Title="index" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="Admin_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
        <asp:TextBox ID="logTxtUsername" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="logTxtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </form>
</asp:Content>

