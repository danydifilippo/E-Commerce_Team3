<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Modifica.aspx.cs" Inherits="E_Commerce_Team3.Admin.Modifica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="container w-50" id="FormAdd">
                        <div class="mb-5">

                            <asp:Label ID="lblAddProd" runat="server" Text="" Visible="false" ForeColor="ForestGreen" CssClass="text-center"></asp:Label>
                            <asp:Label ID="lblError" runat="server" Text="" Visible="false" ForeColor="red"></asp:Label>
                        </div>
                            <h3 class="text-center">Modifica Prodotto</h3>
                <div class="row">
                    <div class="col pb-5">
                            <asp:Label ID="lblNome" runat="server" Text="Nome Prodotto:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control mb-2" ></asp:TextBox>

                            <asp:Label ID="lblSottotitolo" runat="server" Text="Sottotitolo:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtSottotitolo" method="post" runat="server" CssClass="form-control mb-2" ></asp:TextBox>


                            <asp:Label ID="lblDescrizione" runat="server" Text="Descrizione:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtDescrizione" runat="server" CssClass="form-control mb-2" ></asp:TextBox>


                            <asp:Image ID="lblImage" runat="server" CssClass="form-label imgMag" Width="50" />
                            <asp:Label ID="lblImmagine" runat="server" Text="Immagine:" CssClass="form-label"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control mb-2" />

                            <asp:Label ID="lblPrezzo" runat="server" Text="Prezzo:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtPrezzo" runat="server" TextMode="Number" CssClass="form-control mb-2" ></asp:TextBox >

                            <asp:Label ID="lblPrScontato" runat="server" Text="Prezzo Scontato:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtPrScontato" runat="server" TextMode="Number" CssClass="form-control mb-2" ></asp:TextBox>

                            <asp:Label ID="lblInPromo" runat="server" Text="In Promozione:" CssClass="form-label"></asp:Label>
                            <asp:CheckBox ID="ckbInPromo" runat="server" CssClass="form-control mb-2"  />

                            <asp:Label ID="lblCategoria" runat="server" Text="Categoria:" CssClass="form-label"></asp:Label>

                            <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-control mb-2">
                            </asp:DropDownList>
                            <div class="d-flex justify-content-center mt-2" style="gap:20px">
                            <asp:Button ID="Update" runat="server" Text="Salva Modifiche" OnClick="Update_Click" CssClass="btn btn-primary w-50" />
                            <asp:Button ID="Annulla" runat="server" Text="Annulla Modifiche" OnClick="Annulla_Click" CssClass="btn btn-secondary w-50" />
                        </div>
                       </div>
                    </div>
            </div>
</asp:Content>
