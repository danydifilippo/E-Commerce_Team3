<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Magazzino_.aspx.cs" Inherits="E_Commerce_Team3.Admin.Magazzino_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
           <div class="mx-5">
               <asp:GridView ID="GridView1" Vert runat="server" ItemType="E_Commerce_Team3.Prodotto" CssClass="table table-bordered" AutoGenerateColumns="false">
                   
                   <Columns>
                       <asp:TemplateField HeaderText="ID">
                           <ItemTemplate>
                               <h6><%# Item.IdProdotto %></h6>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Categoria">
                           <ItemTemplate>
                               <asp:Label ID="lblCat" runat="server" Text="<%# Item.NomeCategoria %>" Font-Size="12px"></asp:Label>                         
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Articolo">
                           <ItemTemplate>
                               <asp:Label ID="lblProd" runat="server" Text="<%# Item.NomeProdotto %>" Font-Size="12px"></asp:Label>
                           </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField HeaderText="Sottotitolo">
                           <ItemTemplate>
                               <asp:Label ID="lblSottotitolo" runat="server" Text="<%# Item.Sottotitolo %>" Font-Size="12px"></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Descrizione">
                           <ItemTemplate>
                               <asp:Label ID="lblDescr" runat="server" Text="<%# Item.Descrizione %>" Font-Size="12px"></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Prezzo">
                           <ItemTemplate>
                               <asp:Label ID="lblPrezzo" runat="server" Text="<%# Item.Prezzo %>" Font-Size="12px"></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="In Promo">
                           <ItemTemplate>
                               <asp:Label ID="lblPromo" runat="server" Text="<%# Item.LogoInPromo %>" Font-Size="12px"></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Prezzo in Promo">
                           <ItemTemplate>
                               <asp:Label ID="lblPrPromo" runat="server" Text="<%# Item.PrezzoScontato %>" Font-Size="12px"></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Immagine">
                           <ItemTemplate>
                               <img src="../img/<%# Item.UrlImmagine %>" width="60"></img>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Modifica">
                           <ItemTemplate>
                                <a href="Update.aspx?IdProdotto=<%# Item.IdProdotto %>"><i class="bi bi-pencil-square"></i></a>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Cancella">
                           <ItemTemplate>
                               <a href="Delete.aspx?IdProdotto=<%# Item.IdProdotto %>"><i class="bi bi-trash3-fill"></i></a>
                           </ItemTemplate>
                       </asp:TemplateField>
                   </Columns>
               </asp:GridView>
           </div>
</asp:Content>
