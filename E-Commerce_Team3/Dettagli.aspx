<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Dettagli.aspx.cs" Inherits="E_Commerce_Team3.Dettagli" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row container-fluid">

         <div class="col-4">
            <div class="text-center">
                <ASP:IMAGE ID="IMAGE1" runat="server" CssClass="rounded img-fluid" />
            </div>

        </div>
        <div class="col">

            <div>
                <asp:Label ID="lbcategoria" runat="server" Font-Size="X-Small"></asp:Label>
                <asp:Label ID="lbNomeProdotto" runat="server" Font-Size="Larger" Font-Bold="true"></asp:Label>
                <asp:Label ID="lbSottotitolo" runat="server" Font-Size="Small"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lbDescrizione" runat="server"></asp:Label>
            </div>

            <div>
                <asp:Label ID="lbPrezzo" runat="server"></asp:Label>
                <asp:Label ID="lbPrezzoScontato" runat="server" Visible="false"></asp:Label>

            </div>
            <div>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>

                <asp:Button ID="AddToCart" runat="server" Text="Aggiungi al Carrello" OnClick="AddToCart_Click" />
                <a href="Carrello.aspx">Vai al Carrello</a>
            </div>

        </div>

    </div>
</asp:Content>
