<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="E_Commerce_Team3.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login">
         <img src="img/user.png" id="imgLogin" /> <br />
         <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" CssClass="inputLogin"></asp:TextBox> 
            <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="inputLogin"></asp:TextBox> <br />
        <hr />

            <asp:Button ID="Entra" runat="server" Text="Entra e accomodati" OnClick="Entra_Click" CssClass="btn btn-outline-primary" /><br />
            <asp:Label ID="lblLogin" runat="server" Text="" ForeColor="#cc6600"></asp:Label>
            

    </div>
</asp:Content>
