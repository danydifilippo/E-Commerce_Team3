<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="SpegniProdotto.aspx.cs" Inherits="E_Commerce_Team3.Admin.SpegniProdotto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-none" style="height:100vh" id="IdLabel" runat="server" >
    <asp:Label ID="lblDelete" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lblError" runat="server" Text="" Visible="false"></asp:Label>
    </div>
        <div class="container m-5 " runat="server" id="IdContainer">
        <div class="card mb-3">
            <div class="row g-0">
                <div class="col-md-4 mt-2">
                    <ASP:IMAGE ID="Image1" runat="server" CssClass="rounded img-fluid w-100" />
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h4 class="card-title"><asp:Label ID="lbNomeProdotto" runat="server" Font-Bold="true"></asp:Label></h4>
                        <h5 class="card-text text-secondary"><asp:Label ID="lbSottotitolo" runat="server"></asp:Label></h5>
                        <p class="card-text"><asp:Label ID="lblDescrizione" runat="server" Font-Size="10"></asp:Label></p>
                        <hr />
                        <div>
                           <asp:Button ID="return" runat="server" Text="Torna al magazzino" CssClass="btn btn-primary" OnClick="return_Click" />
                       <asp:Button ID="SpegniPr" runat="server" Text="Spegni Articolo" CssClass="btn btn-secondary"  OnClick="SpegniPr_Click" />
     
                         
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
