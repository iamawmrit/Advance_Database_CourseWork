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
    <p>Date of Birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>Contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEE_ID" DataSourceID="SqlDataSource1">
            <Columns>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot;"></asp:SqlDataSource>
    </p>

</asp:Content>
