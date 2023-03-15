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
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" ReadOnly="True" SortExpression="JOB_ID" />
            <asp:BoundField DataField="JOB_NAME" HeaderText="JOB_NAME" SortExpression="JOB_NAME" />
            <asp:BoundField DataField="MIN_SALARY" HeaderText="MIN_SALARY" SortExpression="MIN_SALARY" />
            <asp:BoundField DataField="MAX_SALARY" HeaderText="MAX_SALARY" SortExpression="MAX_SALARY" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;JOBS&quot;" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM &quot;JOBS&quot; WHERE &quot;JOB_ID&quot; = :original_JOB_ID AND ((&quot;JOB_NAME&quot; = :original_JOB_NAME) OR (&quot;JOB_NAME&quot; IS NULL AND :original_JOB_NAME IS NULL)) AND ((&quot;MIN_SALARY&quot; = :original_MIN_SALARY) OR (&quot;MIN_SALARY&quot; IS NULL AND :original_MIN_SALARY IS NULL)) AND ((&quot;MAX_SALARY&quot; = :original_MAX_SALARY) OR (&quot;MAX_SALARY&quot; IS NULL AND :original_MAX_SALARY IS NULL))" InsertCommand="INSERT INTO &quot;JOBS&quot; (&quot;JOB_ID&quot;, &quot;JOB_NAME&quot;, &quot;MIN_SALARY&quot;, &quot;MAX_SALARY&quot;) VALUES (:JOB_ID, :JOB_NAME, :MIN_SALARY, :MAX_SALARY)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;JOBS&quot; SET &quot;JOB_NAME&quot; = :JOB_NAME, &quot;MIN_SALARY&quot; = :MIN_SALARY, &quot;MAX_SALARY&quot; = :MAX_SALARY WHERE &quot;JOB_ID&quot; = :original_JOB_ID AND ((&quot;JOB_NAME&quot; = :original_JOB_NAME) OR (&quot;JOB_NAME&quot; IS NULL AND :original_JOB_NAME IS NULL)) AND ((&quot;MIN_SALARY&quot; = :original_MIN_SALARY) OR (&quot;MIN_SALARY&quot; IS NULL AND :original_MIN_SALARY IS NULL)) AND ((&quot;MAX_SALARY&quot; = :original_MAX_SALARY) OR (&quot;MAX_SALARY&quot; IS NULL AND :original_MAX_SALARY IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_JOB_ID" Type="Decimal" />
            <asp:Parameter Name="original_JOB_NAME" Type="String" />
            <asp:Parameter Name="original_MIN_SALARY" Type="Decimal" />
            <asp:Parameter Name="original_MAX_SALARY" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="JOB_ID" Type="Decimal" />
            <asp:Parameter Name="JOB_NAME" Type="String" />
            <asp:Parameter Name="MIN_SALARY" Type="Decimal" />
            <asp:Parameter Name="MAX_SALARY" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="JOB_NAME" Type="String" />
            <asp:Parameter Name="MIN_SALARY" Type="Decimal" />
            <asp:Parameter Name="MAX_SALARY" Type="Decimal" />
            <asp:Parameter Name="original_JOB_ID" Type="Decimal" />
            <asp:Parameter Name="original_JOB_NAME" Type="String" />
            <asp:Parameter Name="original_MIN_SALARY" Type="Decimal" />
            <asp:Parameter Name="original_MAX_SALARY" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <br />
</asp:Content>
