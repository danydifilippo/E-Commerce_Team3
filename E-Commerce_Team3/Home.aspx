<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="E_Commerce_Team3.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
         <asp:Label ID="lblError" runat="server" Text="" Visible="false" CssClass="navlink"></asp:Label>
        <asp:Repeater ID="Repeater1" runat="server" ItemType="E_Commerce_Team3.Prodotto">
            <ItemTemplate>
                <div class="card" style="width: 18rem;">
                    <img src="img/<%# Item.UrlImmagine %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%# Item.NomeProdotto %></h5>
                        <p class="card-text"><%# Item.Prezzo %></p>
                        <a href="Dettagli.aspx?IdProdotto=<%# Item.IdProdotto %>"><i class="bi bi-eyeglasses"></i> Dettagli</a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
