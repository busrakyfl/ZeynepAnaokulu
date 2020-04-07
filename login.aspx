<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="LOGİN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div id="metin">
   <div class="menudiv">
<ul>
<li><a href="haber.aspx">HABERLER</a></li>
<li><a href="kutuphane.aspx">KÜTÜPHANE</a></li>
<li><a href="ogrenci.aspx">ÖĞRENCİ</a></li>
<li><a href="revir.aspx">REVİR</a></li>
</ul>
</div>
      <table class="style1" style="border-style: groove; border-color: #FFFF00">
          <tr>
              <td>
                  Yönetici Adı :</td>
              <td>
                  <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td>
                  Parola :</td>
              <td>
                  <asp:TextBox ID="txtParola" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td>
                  <asp:Button ID="tn" runat="server" onclick="tn_Click" Text="GİRİŞ" />
              &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                      Text="ÇIKIŞ" />
              </td>
              <td>
                  <asp:Label ID="lbl" runat="server"></asp:Label>
              </td>
          </tr>
      </table>
   
</div>
</asp:Content>
  

