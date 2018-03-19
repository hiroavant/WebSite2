<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <form id="form1" runat="server">
        <asp:label runat="server" text="Email" id="lblLoginEmail"></asp:label>
        <asp:textbox runat="server" id="txtLoginEmail"></asp:textbox>
        <br />
        <asp:label runat="server" text="Password" id="lblLoginPassword"></asp:label>
        <asp:textbox runat="server" id="txtLoginPassword"></asp:textbox>
        <br />
        <asp:button runat="server" text="Submit" id="btnLoginSubmit" OnClick="btnLoginSubmit_Click" />
        <br />
        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
    </form>
</asp:Content>

