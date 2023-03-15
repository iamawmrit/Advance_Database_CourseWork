<%@ Page Title="Department" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="Database_CW.Department" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h1><%: Title %></h1>
    <br />
    <p>Department ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>Department Name&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Add Department" Width="128px" OnClick="Button1_Click" />
    </p>
    <br />
    <h4>Department Details</h4>
   
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENTS&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;DEPARTMENTS&quot; WHERE &quot;DEPARTMENT_ID&quot; = :original_DEPARTMENT_ID AND ((&quot;DEPARTMENT_NAME&quot; = :original_DEPARTMENT_NAME) OR (&quot;DEPARTMENT_NAME&quot; IS NULL AND :original_DEPARTMENT_NAME IS NULL))" InsertCommand="INSERT INTO &quot;DEPARTMENTS&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;DEPARTMENTS&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME WHERE &quot;DEPARTMENT_ID&quot; = :original_DEPARTMENT_ID AND ((&quot;DEPARTMENT_NAME&quot; = :original_DEPARTMENT_NAME) OR (&quot;DEPARTMENT_NAME&quot; IS NULL AND :original_DEPARTMENT_NAME IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_DEPARTMENT_ID" Type="Decimal" />
            <asp:Parameter Name="original_DEPARTMENT_NAME" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="original_DEPARTMENT_ID" Type="Decimal" />
            <asp:Parameter Name="original_DEPARTMENT_NAME" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
