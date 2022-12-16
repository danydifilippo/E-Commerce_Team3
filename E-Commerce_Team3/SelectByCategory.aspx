<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="SelectByCategory.aspx.cs" Inherits="E_Commerce_Team3.SelectByCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-4  justify-content-between w-75 ">
     <asp:Repeater ID="Repeater1" runat="server" ItemType="E_Commerce_Team3.Prodotto">
            <ItemTemplate >
                <div class="col-md-6 col-lg-4 justify-content-around mb-3 ">
                <div class="card border-top-0 h-25">
                    <div id="foto">
                    <img src="<%# Item.LogoInPromo %>"class="w-50 position-absolute logoinpromo"/>
                    <a href="Dettagli.aspx?IdProdotto=<%# Item.IdProdotto  %>"><img src="img/<%# Item.UrlImmagine %>" class="card-img-top" alt="..."></a>
                    </div>
                        <div class="card-body">                        
                        <h5 class="card-title"><%# Item.NomeProdotto %></h5>
                        <h6 class="card-title text-secondary"><%# Item.Sottotitolo %></h6>
                        <p class="card-text mt-2" id="PrBarrato" runat="server">Prezzo: <strong><%# Item.Prezzo.ToString("c2") %></strong></p>
                        <p class="card-text mt-2"><%# Item.PrezzoInPromo %><strong><%# Item.PrezzoScontato.ToString("c2") %></strong></p>
                        <a href="Dettagli.aspx?IdProdotto=<%# Item.IdProdotto %>" class="btn btn-primary navlink">
                       <i class="bi bi-search-heart-fill"></i> Dettagli</a>
                    </div>
                </div>
                      </div>
            </ItemTemplate>
        </asp:Repeater>
        </div>
</asp:Content>
