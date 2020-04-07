<%@ Page Language="C#" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="anasayfa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-weight: 700;
        }
        .style2
        {
            width: 228px;
            height: 261px;
        }
        .style3
        {
            width: 228px;
            height: 261px;
        }
    </style>
</head>
<body> <form id="form1" runat="server">
<div id="saydam1">
   
    

</div>
<div class="menudiv">

<ul>
<li><a href="ANASAYFA.aspx">ANASAYFA</a></li>
<li><a href="HAKKIMIZDA.aspx">HAKKIMIZDA</a></li>
<li><a href="ILETISIM.aspx">İLETİŞİM</a></li>
<li><a href="OKUL.aspx">OKUL-AİLE</a></li>
<li><a href="login.aspx">YÖNETİM</a></li>
<li><a href="ETKİNLİKLER.aspx">ETKİNLİKLER</a></li>
</ul>
</div>
<div id="logo"></div>
<div id="golge"></div>
<div id="iceriks">

    <table class="style1">
        <tr>
            <td class="style2" style="border-color: #FFFF00; border-style: groove;">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
                    GridLines="Horizontal">
                    <Columns>
                        <asp:ImageField DataImageUrlField="resimyolu" HeaderText="HABERLER">
                            <FooterStyle Font-Bold="True" Font-Size="Large" Font-Underline="True" />
                        </asp:ImageField>
                        <asp:BoundField DataField="h_yazi" SortExpression="h_yazi" />
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
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:anaokulConnectionString %>" 
                    SelectCommand="SELECT [resimyolu], [h_yazi] FROM [haber_resim]">
                </asp:SqlDataSource>
            </td>
            <td class="style3" style="border-color: #FFFF00; border-style: groove;">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" 
                    GridLines="Horizontal">
                    <Columns>
                        <asp:ImageField DataImageUrlField="resimyolu" HeaderText="ETKİNLİKLER">
                        </asp:ImageField>
                        <asp:BoundField DataField="r_yazi" SortExpression="r_yazi" />
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
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:anaokulConnectionString %>" 
                    SelectCommand="SELECT [resimyolu], [r_yazi] FROM [etkinlik_resim]">
                </asp:SqlDataSource>
            </td>
            <td class="style3" style="border-color: #FFFF00; border-style: groove;">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" 
                    GridLines="Horizontal">
                    <Columns>
                        <asp:ImageField DataImageUrlField="resimyolu" HeaderText="DUYURULAR">
                        </asp:ImageField>
                        <asp:BoundField DataField="d_yazi" SortExpression="d_yazi" />
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
                <br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:anaokulConnectionString %>" 
                    SelectCommand="SELECT [resimyolu], [d_yazi] FROM [duyuru_resim]">
                </asp:SqlDataSource>
                </td>
        </tr>
    </table>
    <br /> 
</div>
   <div id="adres"></div></form>
</body>
</html>
