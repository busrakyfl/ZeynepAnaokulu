<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="haber.aspx.cs" Inherits="HABER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-bottom-color:Blue;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            height: 31px;
        }
        .style4
        {
            text-align: center;
            color: #DAAA1E;
        }
        .style5
        {
            text-align: center;
            color: #DAAA1D;
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
    <table class="style1">
        <tr>
            <td class="style4" colspan="2">
                <strong>HABERLER</strong></td>
        </tr>
        <tr>
            <td class="style2" colspan="2" 
                style="border-color: #000000; border-style: groove;">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:anaokulConnectionString %>" 
                    SelectCommand="SELECT * FROM [haber_resim]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="NO" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:ImageField DataImageUrlField="resimyolu" HeaderText="HABER KAYIT">
                        </asp:ImageField>
                        <asp:BoundField DataField="h_yazi" HeaderText="BİLGİ" SortExpression="h_yazi" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="border-color: #000000; border-style: groove;">
                Resim :</td>
            <td style="border-color: #000000; border-style: groove;">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="border-color: #000000; border-style: groove;">
                YAZI :</td>
            <td style="border-color: #000000; border-style: groove;">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-color: #000000; border-style: groove;">
                <asp:Button ID="Button1" runat="server" Text="EKLE" onclick="Button1_Click1" />
                &nbsp;
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="YENİLE" />
            </td>
            <td style="border-color: #000000; border-style: groove;">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;<br />
                <asp:Label ID="Label4" runat="server" Text="NO :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="SİL" />
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <strong>DUYURULAR</strong></td>
        </tr>
        <tr>
            <td class="style3" colspan="2" 
                style="border-style: groove; border-color: #000000">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="NO" SortExpression="id" />
                        <asp:ImageField DataImageUrlField="resimyolu" HeaderText="DUYURU KAYIT">
                        </asp:ImageField>
                        <asp:BoundField DataField="d_yazi" HeaderText="BİLGİ" SortExpression="d_yazi" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:anaokulConnectionString %>" 
                    SelectCommand="SELECT * FROM [duyuru_resim]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3" style="border-style: groove; border-color: #000000">
                Resim :</td>
            <td class="style3" style="border-style: groove; border-color: #000000">
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="border-style: groove; border-color: #000000">
                YAZI :</td>
            <td style="border-style: groove; border-color: #000000">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: groove; border-color: #000000">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="EKLE" />
                <br />
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="YENİLE" />
            </td>
            <td style="border-style: groove; border-color: #000000">
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="NO :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="SİL" />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <strong>ETKİNLİKLER</strong></td>
        </tr>
        <tr>
            <td colspan="2" style="border-style: groove; border-color: #000000">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:anaokulConnectionString %>" 
                    SelectCommand="SELECT * FROM [etkinlik_resim]"></asp:SqlDataSource>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="NO" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:ImageField DataImageUrlField="resimyolu" HeaderText="ETKİNLİK KAYIT">
                        </asp:ImageField>
                        <asp:BoundField DataField="r_yazi" HeaderText="BİLGİ" SortExpression="r_yazi" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="border-style: groove; border-color: #000000">
                Resim :</td>
            <td style="border-style: groove; border-color: #000000">
                <asp:FileUpload ID="FileUpload3" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style3" style="border-style: groove; border-color: #000000">
                YAZI :</td>
            <td class="style3" style="border-style: groove; border-color: #000000">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: groove; border-color: #000000">
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="EKLE" />
                <br />
                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="YENİLE" />
            </td>
            <td style="border-style: groove; border-color: #000000">
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Text="NO :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="SİL" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

