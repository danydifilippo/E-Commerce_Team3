﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Dettagli.aspx.cs" Inherits="E_Commerce_Team3.Dettagli" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <div class="container m-5" id="lblScheda" runat="server">
        <div class="card mb-3">
            <div class="row g-0">
                <div class="col-md-4 mt-2">
                    <ASP:IMAGE ID="IMAGE1" runat="server" CssClass="rounded img-fluid w-100" />
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h4 class="card-title"><asp:Label ID="lbNomeProdotto" runat="server" Font-Bold="true"></asp:Label></h4>
                        <h5 class="card-text text-secondary"><asp:Label ID="lbSottotitolo" runat="server"></asp:Label></h5>
                        <p class="card-text"><asp:Label ID="lblDescrizione" runat="server" Font-Size="10"></asp:Label></p>
                        <hr />
                        <p> Prezzo: <asp:Label ID="lbPrezzo" runat="server" Font-Bold="true"></asp:Label></p>
                       <asp:Label ID="lbPrezzoScontato" runat="server" Visible="false"></asp:Label>
                        <hr />
                        <div>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" min="1" Text="1"></asp:TextBox>
                         <asp:Button ID="AddToCart" runat="server" Text="Aggiungi al Carrello" OnClick="AddToCart_Click" CssClass="btn btn-outline-primary"/>
                            <asp:LinkButton class="btn btn-outline-secondary" ID="LinkButton1" runat="server" PostBackUrl="~/Carrello.aspx">Vai al Carrello</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container d-none" id="lblCarrello" runat="server">
        <asp:LinkButton class="btn btn-outline-primary" ID="gotoHome" runat="server" PostBackUrl="~/Home.aspx">Continua gli acquisti</asp:LinkButton>
        <asp:LinkButton class="btn btn-outline-secondary" ID="goToCart" runat="server" PostBackUrl="~/Carrello.aspx">Vai al Carrello</asp:LinkButton>
    </div>
</asp:Content>
