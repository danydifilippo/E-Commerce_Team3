<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="E_Commerce_Team3.Admin.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <asp:Label ID="lblDelete" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lblError" runat="server" Text="" Visible="false"></asp:Label>
    </div>
        <div class="container m-5">
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
                           <asp:Button ID="return" runat="server" Text="Torna al magazzino" OnClick="return_Click"
                             CssClass="btn btn-outline-primary"/>
                       <asp:Button ID="Delete" runat="server" Text="Elimina Articolo" OnClick="Delete_Click"
                             CssClass="btn btn-outline-secondary"/>
     
                         
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
