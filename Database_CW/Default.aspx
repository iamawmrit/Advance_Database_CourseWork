<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Database_CW._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="text-info">XTenCode</h1>
        <strong><p class="lead"> <b class="text-success">XTenCode</b> is a electronic company founded in 2014 and headquartered in Harichowkl!

 </p></strong>
        <img src="https://th.bing.com/th/id/OIP.18WddVHNpW1mhAM5eHUH2gHaHa?w=176&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" height="200" width="200" />
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2 class="text-success">Departments</h2>
            <p>
               To ensure the smooth operation of the business, XTenCode's employees are divided into various departments. Each department has a leader who oversees the other employees in the department.
            </p>
            <p>
            </p>
        </div>
        <div class="col-md-4">
            <h2 class="text-success">Employees</h2>
            <p>
                Employees are not permitted to vote for themselves. Furthermore, employees are permitted to vote for any other employee regardless of department affiliation.
            </p>
            <p>
                
              
                
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="select count(*) as Total_employees from employee
"></asp:SqlDataSource>
                
            </p>
            
        </div>
        <div class="col-md-4">
            <h2 class="text-success">Available Jobs</h2>
            <p>
                Jobs are always being added on Monster, so bookmark this page and check back often!            </p>
            
            <p>
            </p>
            
        </div>
        <div class="col-md-4">
            <h2 class="text-success">Role</h2>
            <p>
                Roles are positions that have certain sets of responsibilities.  </p>
             <p>
               
                 
            </p>
        </div>
        <div class="col-md-0">
            <h2 class="text-success">Voting Procedure</h2>
            <p>
               Employees are not permitted to vote for themselves. Furthermore, employees are permitted to vote for any other employee regardless of department affiliation.
            </p>
            <p>
               
            </p>
        </div>
       
    <br />
        <div class="row">

        </div>
        
</asp:Content>
