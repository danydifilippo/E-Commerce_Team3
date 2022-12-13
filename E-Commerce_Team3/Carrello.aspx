<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Carrello.aspx.cs" Inherits="E_Commerce_Team3.Carrello" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblEmptyCart" runat="server" Text=""></asp:Label>
    <asp:GridView ID="GridView1" runat="server" ItemType="E_Commerce_Team3.Prodotto" Visible="true" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Foto" ItemStyle-CssClass="w-25">
                    <ItemTemplate>
                         <img src="<%# Item.UrlImmagine %>" class="card-img-top" alt="Foto_Prodotto">
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prodotto">
                    <ItemTemplate>
                         <p><%# Item.NomeProdotto %></p>
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Quantità">
                    <ItemTemplate>
                         <p><%# Item.Quantita %></p>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prezzo">
                    <ItemTemplate>
                         <p><%# Item.Prezzo.ToString("c2") %></p>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        
    </asp:GridView>
    <div class="text-center p-5">
    <asp:Button  CssClass="btn btn-danger " ID="SvuotaCestino" runat="server" Text="Svuota cestino" OnClick="SvuotaCestino_Click" />
        </div>
</asp:Content>
