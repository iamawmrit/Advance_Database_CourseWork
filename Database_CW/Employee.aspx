<%@ Page Title="Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Database_CW.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h1><%: Title %></h1>
    <p>Employee ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>Employee Name&nbsp;
         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>Date of Birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>Contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <p>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </p>
    <p>Email2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </p>
    
    <p>Address ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="STREET_NAME" DataValueField="ADDRESS_ID"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT &quot;ADDRESS_ID&quot;, &quot;STREET_NAME&quot; FROM &quot;ADDRESS&quot;"></asp:SqlDataSource>
    </p>
    <p>Department ID&nbsp; &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="STREET_NAME" DataValueField="ADDRESS_ID"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT &quot;ADDRESS_ID&quot;, &quot;STREET_NAME&quot; FROM &quot;ADDRESS&quot;"></asp:SqlDataSource>
    </p>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

    <br />
    <h4>Employee Details</h4>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEE_ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="EMPLOYEE_ID" HeaderText="EMPLOYEE_ID" ReadOnly="True" SortExpression="EMPLOYEE_ID" />
                <asp:BoundField DataField="EMPLOYEE_NAME" HeaderText="EMPLOYEE_NAME" SortExpression="EMPLOYEE_NAME" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                <asp:BoundField DataField="EMAIL1" HeaderText="EMAIL1" SortExpression="EMAIL1" />
                <asp:BoundField DataField="EMAIL2" HeaderText="EMAIL2" SortExpression="EMAIL2" />
                <asp:BoundField DataField="ADDRESS_ID1" HeaderText="ADDRESS_ID1" SortExpression="ADDRESS_ID1" />
                <asp:BoundField DataField="ADDRESS_ID2" HeaderText="ADDRESS_ID2" SortExpression="ADDRESS_ID2" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;EMPLOYEES&quot; WHERE &quot;EMPLOYEE_ID&quot; = :original_EMPLOYEE_ID AND ((&quot;EMPLOYEE_NAME&quot; = :original_EMPLOYEE_NAME) OR (&quot;EMPLOYEE_NAME&quot; IS NULL AND :original_EMPLOYEE_NAME IS NULL)) AND ((&quot;DOB&quot; = :original_DOB) OR (&quot;DOB&quot; IS NULL AND :original_DOB IS NULL)) AND ((&quot;CONTACT&quot; = :original_CONTACT) OR (&quot;CONTACT&quot; IS NULL AND :original_CONTACT IS NULL)) AND &quot;EMAIL1&quot; = :original_EMAIL1 AND ((&quot;EMAIL2&quot; = :original_EMAIL2) OR (&quot;EMAIL2&quot; IS NULL AND :original_EMAIL2 IS NULL)) AND &quot;ADDRESS_ID1&quot; = :original_ADDRESS_ID1 AND ((&quot;ADDRESS_ID2&quot; = :original_ADDRESS_ID2) OR (&quot;ADDRESS_ID2&quot; IS NULL AND :original_ADDRESS_ID2 IS NULL))" InsertCommand="INSERT INTO &quot;EMPLOYEES&quot; (&quot;EMPLOYEE_ID&quot;, &quot;EMPLOYEE_NAME&quot;, &quot;DOB&quot;, &quot;CONTACT&quot;, &quot;EMAIL1&quot;, &quot;EMAIL2&quot;, &quot;ADDRESS_ID1&quot;, &quot;ADDRESS_ID2&quot;) VALUES (:EMPLOYEE_ID, :EMPLOYEE_NAME, :DOB, :CONTACT, :EMAIL1, :EMAIL2, :ADDRESS_ID1, :ADDRESS_ID2)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;EMPLOYEES&quot; SET &quot;EMPLOYEE_NAME&quot; = :EMPLOYEE_NAME, &quot;DOB&quot; = :DOB, &quot;CONTACT&quot; = :CONTACT, &quot;EMAIL1&quot; = :EMAIL1, &quot;EMAIL2&quot; = :EMAIL2, &quot;ADDRESS_ID1&quot; = :ADDRESS_ID1, &quot;ADDRESS_ID2&quot; = :ADDRESS_ID2 WHERE &quot;EMPLOYEE_ID&quot; = :original_EMPLOYEE_ID AND ((&quot;EMPLOYEE_NAME&quot; = :original_EMPLOYEE_NAME) OR (&quot;EMPLOYEE_NAME&quot; IS NULL AND :original_EMPLOYEE_NAME IS NULL)) AND ((&quot;DOB&quot; = :original_DOB) OR (&quot;DOB&quot; IS NULL AND :original_DOB IS NULL)) AND ((&quot;CONTACT&quot; = :original_CONTACT) OR (&quot;CONTACT&quot; IS NULL AND :original_CONTACT IS NULL)) AND &quot;EMAIL1&quot; = :original_EMAIL1 AND ((&quot;EMAIL2&quot; = :original_EMAIL2) OR (&quot;EMAIL2&quot; IS NULL AND :original_EMAIL2 IS NULL)) AND &quot;ADDRESS_ID1&quot; = :original_ADDRESS_ID1 AND ((&quot;ADDRESS_ID2&quot; = :original_ADDRESS_ID2) OR (&quot;ADDRESS_ID2&quot; IS NULL AND :original_ADDRESS_ID2 IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_EMPLOYEE_ID" Type="Decimal" />
                <asp:Parameter Name="original_EMPLOYEE_NAME" Type="String" />
                <asp:Parameter Name="original_DOB" Type="DateTime" />
                <asp:Parameter Name="original_CONTACT" Type="String" />
                <asp:Parameter Name="original_EMAIL1" Type="String" />
                <asp:Parameter Name="original_EMAIL2" Type="String" />
                <asp:Parameter Name="original_ADDRESS_ID1" Type="Decimal" />
                <asp:Parameter Name="original_ADDRESS_ID2" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EMPLOYEE_ID" Type="Decimal" />
                <asp:Parameter Name="EMPLOYEE_NAME" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="CONTACT" Type="String" />
                <asp:Parameter Name="EMAIL1" Type="String" />
                <asp:Parameter Name="EMAIL2" Type="String" />
                <asp:Parameter Name="ADDRESS_ID1" Type="Decimal" />
                <asp:Parameter Name="ADDRESS_ID2" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EMPLOYEE_NAME" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="CONTACT" Type="String" />
                <asp:Parameter Name="EMAIL1" Type="String" />
                <asp:Parameter Name="EMAIL2" Type="String" />
                <asp:Parameter Name="ADDRESS_ID1" Type="Decimal" />
                <asp:Parameter Name="ADDRESS_ID2" Type="Decimal" />
                <asp:Parameter Name="original_EMPLOYEE_ID" Type="Decimal" />
                <asp:Parameter Name="original_EMPLOYEE_NAME" Type="String" />
                <asp:Parameter Name="original_DOB" Type="DateTime" />
                <asp:Parameter Name="original_CONTACT" Type="String" />
                <asp:Parameter Name="original_EMAIL1" Type="String" />
                <asp:Parameter Name="original_EMAIL2" Type="String" />
                <asp:Parameter Name="original_ADDRESS_ID1" Type="Decimal" />
                <asp:Parameter Name="original_ADDRESS_ID2" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>
