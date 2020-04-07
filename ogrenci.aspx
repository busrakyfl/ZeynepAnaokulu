<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="ogrenci.aspx.cs" Inherits="REVİR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
            width: 129px;
        }
        .style3
        {
            width: 203px;
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
    <table class="style1" style="border-style: groove; border-color: #000000">
        <tr>
            <td class="style2">
                Öğrenci No :</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td rowspan="6">
                <asp:ListBox ID="ListBox1" runat="server" Height="192px" Width="404px">
                </asp:ListBox>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Giriş Tarih :</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Çıkış Tarih :
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Rahatsızlık :</td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Tedavi :</td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="KAYDET" />
            </td>
            <td class="style3">
                <asp:Button ID="Button2" runat="server" Text="DÜZENLE" 
                    onclick="Button2_Click" />
            &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="LİSTELE" />
            </td>
        </tr>
    </table>

</div>
</asp:Content>

