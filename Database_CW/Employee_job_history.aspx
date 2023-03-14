<%@ Page Title="Employee job history" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_job_history.aspx.cs" Inherits="Database_CW.Employee_job_history" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h1><%: Title %></h1>
    <br />
    <p>
        </p>
    <br />
    <h4>Employee Job History</h4>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EMPLOYEE_ID" DataValueField="EMPLOYEE_ID"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEE_ID&quot; FROM &quot;EMPLOYEES&quot;"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEE_ID" DataSourceID="SqlDataSource2">
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEES&quot; WHERE (&quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="EMPLOYEE_ID" PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEE_ID,JOB_ID" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="EMPLOYEE_ID" HeaderText="EMPLOYEE_ID" ReadOnly="True" SortExpression="EMPLOYEE_ID" />
            <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" ReadOnly="True" SortExpression="JOB_ID" />
            <asp:BoundField DataField="PREVIOUS_DATE" HeaderText="PREVIOUS_DATE" SortExpression="PREVIOUS_DATE" />
        </Columns>
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE_JOB_HISTORY&quot; WHERE (&quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="EMPLOYEE_ID" PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <br />
</asp:Content>
