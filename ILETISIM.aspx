<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="ILETISIM.aspx.cs" Inherits="ILETISIM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 314px;
        }
    .style3
    {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="metin">

    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/Resimler/iletisim_bayan.png" />
            </td>
            <td>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3047.2395245136963!2d28.975552414926156!3d40.2037345764906!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14ca1698f49ad06f%3A0x85b589e923acd0b4!2s%C3%96zel+Zeynep+Anaokulu%2C+Konak%2C+16110+Nil%C3%BCfer%2FBursa%2C+T%C3%BCrkiye!5e0!3m2!1str!2s!4v1459789922277" 
                    frameborder="0" 
                    style="border-style: none; border-color: inherit; border-width: 0; width: 377px; height: 322px;" 
                    allowfullscreen></iframe>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="style3">
                <strong>TELEFON : 0542 674 21 45<br />
                MAİL : zeynepan_anaokulu@gmail.com</strong></td>
        </tr>
    </table>

</div>
</asp:Content>

