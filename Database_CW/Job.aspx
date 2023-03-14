<%@ Page Title="Job" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="Database_CW.Job" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h1><%: Title %></h1>
    <br />
        <p>
            Job ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
                Job Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </p>
                    Minimim Salary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </p>
                        Maximum Salary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
    <br/>
                        <asp:Button ID="addjob" runat="server" Text="Add Job" OnClick="Button1_Click" />
                        <br />
                        <br />
                        <h4>Job Details</h4>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="JOB_ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" ReadOnly="True" SortExpression="JOB_ID" />
            <asp:BoundField DataField="JOB_NAME" HeaderText="JOB_NAME" SortExpression="JOB_NAME" />
            <asp:BoundField DataField="MIN_SALARY" HeaderText="MIN_SALARY" SortExpression="MIN_SALARY" />
            <asp:BoundField DataField="MAX_SALARY" HeaderText="MAX_SALARY" SortExpression="MAX_SALARY" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;JOBS&quot;"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <br />
</asp:Content>
