<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="E_Commerce_Team3.Admin.AddProduct1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container mt-5" id="FormAdd">
                        <div>
                            <asp:Label ID="lblAddProd" runat="server" Text="" Visible="false" ForeColor="ForestGreen" CssClass="text-center"></asp:Label>
                            <asp:Label ID="lblError" runat="server" Text="" Visible="false" ForeColor="red"></asp:Label>
                        </div>
                            <h3 class="text-center my-4">Aggiungi un nuovo Prodotto</h3>
                <div class="row">
                    <div class="col">


                        <div class="d-flex align-items-center justify-content-start mb-2">
                            <p class="m-3">Nome Prodotto:</p>
                            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>

                            <p class="m-3">Sottotitolo:</p>
                            <asp:TextBox ID="txtSottotitolo" runat="server"></asp:TextBox>
                         </div>
                        <div class="d-flex mb-2 align-items-center justify-content-start" >
                            <p class="m-3">Descrizione:</p>
                            <asp:TextBox ID="txtDescrizione" runat="server"></asp:TextBox>
                            <p class="m-3">Immagine:</p>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                        <div class="d-flex align-items-center justify-content-start mb-2">
                            <p class="m-3">Prezzo:</p>
                            <asp:TextBox ID="txtPrezzo" runat="server" TextMode="Number"></asp:TextBox>
                            <p class="m-3">Prezzo scontato:</p>
                            <asp:TextBox ID="txtPrScontato" runat="server" TextMode="Number"></asp:TextBox>
                            <p class="ms-3 me-1 my-3" >In Promozione:</p>
                            <asp:CheckBox ID="ckbInPromo" runat="server" />
                            </div>
                        <div class="d-flex align-items-center justify-content-start mb-2">
                            <div class="d-flex align-items-center justify-content-between  me-5">
                                <p class="m-3 ">Categoria:</p>
                                <asp:DropDownList ID="ddlCategoria" runat="server">
                            </asp:DropDownList>
                            </div>
                            <asp:Button CssClass="btn btn-outline-secondary" ID="InsertProdotto" runat="server" Text="Aggiungi prodotto" OnClick="InsertProdotto_Click" />
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>
