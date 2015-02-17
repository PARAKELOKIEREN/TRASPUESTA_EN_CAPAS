<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="TRASPUESTA_EN_CAPAS.HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>HOME</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>TRASPUESTA DE UNA MATRIZ</h1>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdRegistro" DataSourceID="ConexionRegistroMatrices">
            <Columns>
                <asp:BoundField DataField="IdRegistro" HeaderText="IdRegistro" InsertVisible="False" ReadOnly="True" SortExpression="IdRegistro" />
                <asp:BoundField DataField="NombreUsuario" HeaderText="NombreUsuario" SortExpression="NombreUsuario" />
                <asp:BoundField DataField="NombreArchivo" HeaderText="NombreArchivo" SortExpression="NombreArchivo" />
                <asp:BoundField DataField="FechaSistema" HeaderText="FechaSistema" SortExpression="FechaSistema" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ConexionRegistroMatrices" runat="server" ConnectionString="<%$ ConnectionStrings:CadenaDeConexion_REGISTRO_MATRICES %>" SelectCommand="SELECT [IdRegistro], [NombreUsuario], [NombreArchivo], [FechaSistema] FROM [REGISTROS]"></asp:SqlDataSource>
    </form>
</body>
</html>
