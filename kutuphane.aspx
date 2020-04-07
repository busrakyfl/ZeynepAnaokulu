<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="kutuphane.aspx.cs" Inherits="yonetim_KÜTÜPHANE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style2
    {
        height: 14px;
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
 <table class="style1" style="border-color: #000000; border-style: groove;">
        <tr>
            <td>
                Kitap Adı :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Yazar :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Kitap Türü :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Yayın Evi :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="EKLE" />
            </td>
            <td class="style2">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="SİL" />
&nbsp;
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Kitap Adı :"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="style2" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:anaokulConnectionString %>" 
                    SelectCommand="SELECT * FROM [kitap]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                    ForeColor="Black" GridLines="Horizontal" Width="680px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="NO" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="k_adi" HeaderText="KİTAP ADI" 
                            SortExpression="k_adi" />
                        <asp:BoundField DataField="yazar" HeaderText="YAZAR" SortExpression="yazar" />
                        <asp:BoundField DataField="k_turu" HeaderText="KİTAP TÜRÜ" 
                            SortExpression="k_turu" />
                        <asp:BoundField DataField="yayinevi" HeaderText="YAYIN EVİ" 
                            SortExpression="yayinevi" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </td>
        </tr>

    </table>
</div>
</asp:Content>

