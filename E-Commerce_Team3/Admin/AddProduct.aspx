<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="E_Commerce_Team3.Admin.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
   
    <div class="container" id="FormAdd">

    <div>
        <asp:Label ID="lblAddProd" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lblError" runat="server" Text="" Visible="false" ForeColor="red"></asp:Label>
    </div>

    <div>
        <h3 class="text-center">Aggiungi un nuovo Prodotto</h3>
        <p>Nome Prodotto:</p>
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    
        <p>Sottotitolo:</p>
        <asp:TextBox ID="txtSottotitolo" runat="server"></asp:TextBox>

        <p>Descrizione:</p>
        <asp:TextBox ID="txtDescrizione" runat="server"></asp:TextBox>

        <p>Immagine:</p>
        <asp:FileUpload ID="FileUpload1" runat="server" />
         
        <p>Prezzo:</p>
        <asp:TextBox ID="txtPrezzo" runat="server"  TextMode="Number"></asp:TextBox>

        <p>Prezzo scontato:</p>
        <asp:TextBox ID="txtPrScontato" runat="server" TextMode="Number"></asp:TextBox>
        <p>In Promozione:</p>
        <asp:CheckBox ID="ckbInPromo" runat="server" />
        <p>Categoria:</p>
        <asp:DropDownList ID="ddlCategoria" runat="server">
        </asp:DropDownList>
        <asp:Button ID="InsertProdotto" runat="server" Text="Aggiungi prodotto" OnClick="InsertProdotto_Click"/>
    </div>
     </div>   
</asp:Content>
