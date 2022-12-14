<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="E_Commerce_Team3.Admin.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container-fluid mx-5" id="FormAdd">
                        <div>
                            <asp:Label ID="lblAddProd" runat="server" Text="" Visible="false" ForeColor="ForestGreen" CssClass="text-center"></asp:Label>
                            <asp:Label ID="lblError" runat="server" Text="" Visible="false" ForeColor="red"></asp:Label>
                        </div>
                            <h3 class="text-center">Modifica Prodotto</h3>
                <div class="row">
                    <div class="col">


                        <div>
                            <asp:Label ID="lblNome" runat="server" Text="Nome Prodotto:"></asp:Label>
                            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>

                            <asp:Label ID="lblSottotitolo" runat="server" Text="Sottotitolo:"></asp:Label>
                            <asp:TextBox ID="txtSottotitolo" runat="server"></asp:TextBox>


                            <asp:Label ID="lblDescrizione" runat="server" Text="Descrizione:"></asp:Label>
                            <asp:TextBox ID="txtDescrizione" runat="server"></asp:TextBox>


                            <asp:Image ID="lblImage" runat="server" />
                            <asp:Label ID="lblImmagine" runat="server" Text="Immagine:"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" />


                        </div>
                        <div class="col">
                            <asp:Label ID="lblPrezzo" runat="server" Text="Prezzo:"></asp:Label>
                            <asp:TextBox ID="txtPrezzo" runat="server" TextMode="Number"></asp:TextBox>

                            <asp:Label ID="lblPrScontato" runat="server" Text="Prezzo Scontato:"></asp:Label>
                            <asp:TextBox ID="txtPrScontato" runat="server" TextMode="Number"></asp:TextBox>

                            <asp:Label ID="lblInPromo" runat="server" Text="In Promozione:"></asp:Label>
                            <asp:CheckBox ID="ckbInPromo" runat="server" />

                            <asp:Label ID="lblCategoria" runat="server" Text="Categoria:"></asp:Label>
                            <asp:DropDownList ID="ddlCategoria" runat="server">
                            </asp:DropDownList>
                            <asp:Button ID="Modifica" runat="server" Text="Modifica prodotto" OnClick="Modifica_Click" />
                        </div>
                    </div>
                </div>
            </div>

</asp:Content>
