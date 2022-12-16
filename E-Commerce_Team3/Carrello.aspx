<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Carrello.aspx.cs" Inherits="E_Commerce_Team3.Carrello" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblEmptyCart" runat="server" Text="" ForeColor="black" CssClass=" mt-3 "></asp:Label>
    <div class="d-flex flex-column">
        <asp:GridView ID="GridView1" RowStyle-VerticalAlign="Middle"  runat="server" ItemType="E_Commerce_Team3.Prodotto" Visible="true" AutoGenerateColumns="false" CssClass="table table-condensed table-hover w-100 mt-5">

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
                <asp:TemplateField HeaderText="Prezzo In Promo">
                    <ItemTemplate>
                        <p><%# Item.PrezzoScontato.ToString("c2") %></p>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prezzo">
                    <ItemTemplate>
                        <p><%# Item.Prezzo.ToString("c2") %></p>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
    
    <div class=" d-flex flex-column ">
        <div>
        <asp:Label CssClass="float-end p-2" ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
        <div>
        <asp:Button CssClass="btn btn-outline-primary p-2" ID="Shop" PostBackUrl="~/Home.aspx" runat="server" Text="Continua gli acquisti" />
        <asp:Button CssClass="btn btn-outline-secondary float-end p-2" ID="SvuotaCestino" runat="server" Text="Svuota cestino" OnClick="SvuotaCestino_Click" />
            </div>
    </div>
        </div>

</asp:Content>
