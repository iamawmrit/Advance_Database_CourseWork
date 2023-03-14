<%@ Page Title="Voting record" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Voting_record.aspx.cs" Inherits="Database_CW.Voting_record" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h1><%: Title %></h1>
    <br />
    <p>
   
    </p>
    <h4>Voting record Details</h4>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="VOTER_ID" DataValueField="VOTER_ID"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT &quot;VOTER_ID&quot; FROM &quot;VOTERS&quot;"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VOTER_ID,CANDIDATE_ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="VOTER_ID" HeaderText="VOTER_ID" ReadOnly="True" SortExpression="VOTER_ID" />
            <asp:BoundField DataField="CANDIDATE_ID" HeaderText="CANDIDATE_ID" ReadOnly="True" SortExpression="CANDIDATE_ID" />
            <asp:BoundField DataField="VOTING_YEAR" HeaderText="VOTING_YEAR" SortExpression="VOTING_YEAR" />
            <asp:BoundField DataField="VOTING_MONTH" HeaderText="VOTING_MONTH" SortExpression="VOTING_MONTH" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:final connection %>" ProviderName="<%$ ConnectionStrings:final connection.ProviderName %>" SelectCommand="SELECT * FROM &quot;VOTER_DETAILS&quot; WHERE (&quot;VOTER_ID&quot; = :VOTER_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="VOTER_ID" PropertyName="SelectedValue" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p> 
       
        </p>
        <br />
    </asp:Content>
