<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="revir.aspx.cs" Inherits="ÖĞRENCİ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        }
        .style3
        {
            width: 232px;
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
            <td class="style3">
                Öğrenci No :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Ad Soyad :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Cinsiyet :</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>KIZ</asp:ListItem>
                    <asp:ListItem>ERKEK</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                T.C. No :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Doğum Tarih :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Veli Adı :</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Dönem :</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Kan Grubu :</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Rh+ AB</asp:ListItem>
                    <asp:ListItem>Rh+ A</asp:ListItem>
                    <asp:ListItem>Rh+ B</asp:ListItem>
                    <asp:ListItem>Rh- AB</asp:ListItem>
                    <asp:ListItem>Rh- A</asp:ListItem>
                    <asp:ListItem>Rh- B</asp:ListItem>
                    <asp:ListItem>Rh+ 0</asp:ListItem>
                    <asp:ListItem>Rh- 0</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Telefon :</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Şube :</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Adres :</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Öğrentmen :</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="EKLE" />
&nbsp;
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="LİSTELE" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="SİL" onclick="Button3_Click" />
&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Öğrenci No :"></asp:Label>
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <asp:ListBox ID="ListBox1" runat="server" Width="682px"></asp:ListBox>
            </td>
        </tr>
    </table>

</div>
</asp:Content>

