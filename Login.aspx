<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AET_RDA_WEBREPORT2.Login2" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v21.2, Version=21.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v21.2, Version=21.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AET SATIŞ RAPORU</title>
    
<link href="css/bootstrap.min.css" rel="stylesheet" />
<script src="js/bootstrap.min.js"></script>
  
</head>
<body>
 
    <form id="form1" runat="server">
        <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">
                 <img src="img/aet.png" style="width: 185px;" alt="logo">
                <br />  
                <br />  
              <h2 class="fw-bold mb-2 text-uppercase">WEB RAPOR GİRİŞ</h2>
                <br /> 
                <br />  
              <div class="form-outline form-white mb-4">
                   <label class="form-label" for="typeEmailX">KULLANICI ADI</label>
             

                  <dx:ASPxTextBox type="text" id="txtUsername" Font-Bold="true" Font-Size="Large" class="form-control form-control-lg" runat="server" Width="350px" Height="50px"   ></dx:ASPxTextBox>
              </div>

              <div class="form-outline form-white mb-4">
                  <label class="form-label" for="typePasswordX">ŞİFRE</label>
                  <dx:ASPxTextBox Password="true" id="txtPassword" Font-Bold="true" Font-Size="Large"  class="form-control form-control-lg" runat="server" Width="350px" Height="50px"  ></dx:ASPxTextBox>
              </div>
                <br /> 
      

                <dx:BootstrapButton ID="btnGırıs" class="btn btn-outline-light btn-lg px-5" type="submit" runat="server" AutoPostBack="false" Text="GİRİŞ" Width="150px" OnClick="btnGırıs_Click"></dx:BootstrapButton>
         

            </div>

          </div>
        </div>
      </div>
    </div>
  </div>

              <dx:LayoutItem Caption="">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxLabel ID="MESAJ" runat="server">
                                </dx:ASPxLabel>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
</section>
    </form>
</body>
</html>
