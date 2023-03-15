<%@ Page Title="Address" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="Database_CW.Address" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h1><%: Title %></h1>
    <br />
    <p>Address ID&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>Tole&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <br />
    <p>Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
    </p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Add Address" OnClick="Button1_Click" />
        <br />
        <br />
        <h4>Address Details</h4>
        
    </p>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField  ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
            <asp:BoundField DataField="STREET_NAME" HeaderText="STREET_NAME" SortExpression="STREET_NAME" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
            <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
        </Columns>
</asp:GridView>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :original_ADDRESS_ID AND ((&quot;STREET_NAME&quot; = :original_STREET_NAME) OR (&quot;STREET_NAME&quot; IS NULL AND :original_STREET_NAME IS NULL)) AND ((&quot;CITY&quot; = :original_CITY) OR (&quot;CITY&quot; IS NULL AND :original_CITY IS NULL)) AND ((&quot;COUNTRY&quot; = :original_COUNTRY) OR (&quot;COUNTRY&quot; IS NULL AND :original_COUNTRY IS NULL))" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;STREET_NAME&quot;, &quot;CITY&quot;, &quot;COUNTRY&quot;) VALUES (:ADDRESS_ID, :STREET_NAME, :CITY, :COUNTRY)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;STREET_NAME&quot; = :STREET_NAME, &quot;CITY&quot; = :CITY, &quot;COUNTRY&quot; = :COUNTRY WHERE &quot;ADDRESS_ID&quot; = :original_ADDRESS_ID AND ((&quot;STREET_NAME&quot; = :original_STREET_NAME) OR (&quot;STREET_NAME&quot; IS NULL AND :original_STREET_NAME IS NULL)) AND ((&quot;CITY&quot; = :original_CITY) OR (&quot;CITY&quot; IS NULL AND :original_CITY IS NULL)) AND ((&quot;COUNTRY&quot; = :original_COUNTRY) OR (&quot;COUNTRY&quot; IS NULL AND :original_COUNTRY IS NULL))">
                           <DeleteParameters>
                               <asp:Parameter Name="original_ADDRESS_ID" Type="Decimal" />
                               <asp:Parameter Name="original_STREET_NAME" Type="String" />
                               <asp:Parameter Name="original_CITY" Type="String" />
                               <asp:Parameter Name="original_COUNTRY" Type="String" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
                               <asp:Parameter Name="STREET_NAME" Type="String" />
                               <asp:Parameter Name="CITY" Type="String" />
                               <asp:Parameter Name="COUNTRY" Type="String" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="STREET_NAME" Type="String" />
                               <asp:Parameter Name="CITY" Type="String" />
                               <asp:Parameter Name="COUNTRY" Type="String" />
                               <asp:Parameter Name="original_ADDRESS_ID" Type="Decimal" />
                               <asp:Parameter Name="original_STREET_NAME" Type="String" />
                               <asp:Parameter Name="original_CITY" Type="String" />
                               <asp:Parameter Name="original_COUNTRY" Type="String" />
                           </UpdateParameters>
    </asp:SqlDataSource>
                       
</asp:Content>
