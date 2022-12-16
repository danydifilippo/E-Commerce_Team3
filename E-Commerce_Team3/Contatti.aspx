<%@ Page Title="" Language="C#" MasterPageFile="~/ContattiM.Master" AutoEventWireup="true" CodeBehind="Contatti.aspx.cs" Inherits="E_Commerce_Team3.Contatti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="contact" class="mt-3 p-3" style="background-image: url(img/astratto-sfocatura.jpg)">
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
                <div class="row">
                  <div class="col-md-6">
                    <div class="title-box-2">
                      <h5 class="title-left">
                        Scrivici
                      </h5>
                    </div>
                    <div>
                        <div class="row">
                          <div class="col-md-12 mb-3">
                            <div class="form-group">
                              <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                            </div>
                          </div>
                          <div class="col-md-12 mb-3">
                            <div class="form-group">
                              <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                            </div>
                          </div>
                          <div class="col-md-12 mb-3">
                            <div class="form-group">
                              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
                            </div>
                          </div>
                          <div class="col-md-12">
                            <div class="form-group">
                              <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                            </div>
                          </div>
                          <div class="col-md-12 text-center">
                            <button  class="btn btn-primary mt-3">Invia messaggio</button>
                          </div>
                        </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="title-box-2 pt-4 pt-md-0">
                      <h5 class="title-left">
                        Mettiti in contatto
                      </h5>
                    </div>
                    <div >
                      <p >
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis dolorum dolorem soluta quidem
                        expedita aperiam aliquid at.
                        Totam magni ipsum suscipit amet? Autem nemo esse laboriosam ratione nobis
                        mollitia inventore?
                      </p>
                      <ul class=" list-unstyled">
                        <li><span class="bi bi-geo-alt"></span>Via Pluto 27 Roma, RM 10000</li>
                        <li><span class="bi bi-phone"></span> 0123456789</li>
                        <li><span class="bi bi-envelope"></span> contact@example.com</li>
                      </ul>
                    </div>
                    <div class="socials">
                      <ul class="mt-2 d-flex list-unstyled  pb-5 ">
                        <li class="m-2">
                                <a href="mailto:example@mail.it" class="btn btn-primary"><i class="bi bi-envelope-at-fill"></i></a>
                            </li>
                            <li class="m-2">
                                <a href="https://www.instagram.com/" class="btn btn-primary"><i class="bi bi-instagram"></i></a>
                            </li>
                            <li class="m-2">
                                <a href="https://it-it.facebook.com/" class="btn btn-primary"><i class="bi bi-facebook"></i></a>
                            </li>
                            <li class="m-2">
                                <a href="tel:0123456789" class="btn btn-primary"><i class="bi bi-telephone"></i></a>
                            </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
      </div>
    </section>
</asp:Content>
