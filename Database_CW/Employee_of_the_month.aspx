

<%@ Page Title="Employee_of_the_month" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_of_the_month.aspx.cs" Inherits="Database_CW.Employee_of_the_month" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="533px">
        <br />
        <h2>Employee of the Month.</h2>
        <p> For motivation,Employees are choosen as employee of the month. </p>
        <p>
            Month&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="VOTING_YEAR" DataValueField="VOTING_YEAR"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="select distinct voting_year from voter_details"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT &quot;VOTING_YEAR&quot; FROM &quot;VOTER_DETAILS&quot;"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="VOTING_MONTH" DataValueField="VOTING_MONTH"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="select distinct voting_month from voter_details"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT &quot;VOTING_MONTH&quot; FROM &quot;VOTER_DETAILS&quot;"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource8"></asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand=" select * from (select candidate_id,count (*) as number_of_vote from voter_details  where voting_year = :Voting_year and voting_month = :Voting_month group by candidate_id order by number_of_vote desc) where rownum &lt;4;">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Voting_year" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DropDownList2" Name="Voting_month" PropertyName="SelectedValue" />
                        </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server"></asp:SqlDataSource>
                    </p>

    </asp:Panel>
</asp:Content>
