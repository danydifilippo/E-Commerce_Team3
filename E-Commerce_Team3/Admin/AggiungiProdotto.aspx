<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AggiungiProdotto.aspx.cs" Inherits="E_Commerce_Team3.Admin.AggiungiProdotto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css"/>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar bg-light">
            <div class="container">
                <div>
                    <img src="/img/sofa-logo.png" width="40" class="img-fluid" />
                    <h2 class="float-end">SofàMo</h2>
                </div>
                <div id="links">
                    <a href="Home.aspx" class="navlink">Home</a>

                    <a href="Login.aspx" class="navlink" runat="server" id="Enter" visible="true"><i class="bi bi-door-open"></i>Entra</a>

                    <asp:Label ID="lblWelcome" runat="server" Text="" Visible="false"></asp:Label>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Visible="false">Logout</asp:LinkButton>

                </div>
            </div>
        </nav>
        <div>
            <div class="container" id="FormAdd">

                <div>
                    <asp:Label ID="lblAddProd" runat="server" Text="" Visible="false" ForeColor="ForestGreen" CssClass="text-center"></asp:Label>
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
                    <asp:TextBox ID="txtPrezzo" runat="server" TextMode="Number"></asp:TextBox>

                    <p>Prezzo scontato:</p>
                    <asp:TextBox ID="txtPrScontato" runat="server" TextMode="Number"></asp:TextBox>
                    <p>In Promozione:</p>
                    <asp:CheckBox ID="ckbInPromo" runat="server" />
                    <p>Categoria:</p>
                    <asp:DropDownList ID="ddlCategoria" runat="server">
                    </asp:DropDownList>
                    <asp:Button ID="InsertProdotto" runat="server" Text="Aggiungi prodotto" OnClick="InsertProdotto_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
