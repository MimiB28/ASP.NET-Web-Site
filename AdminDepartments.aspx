<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminDepartments.aspx.cs" Inherits="AdminDepartments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="titlePlaceHolder" runat="Server">
    <span class="AdminTitle">Catalog Admin
        <br />
        Departments
    </span>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="adminPlaceHolder" runat="Server">
    <div>
        <asp:Label ID="statusLabel" runat="server" Text=""></asp:Label>
        <asp:GridView ID="grid" runat="server" DataKeyNames="DepartmentID" Width="100%" AutoGenerateColumns="False" OnRowCancelingEdit="grid_RowCancelingEdit" OnRowEditing="grid_RowEditing" OnRowDeleting="grid_RowDeleting" OnRowUpdating="grid_RowUpdating">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Deparment Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Department Description" SortExpression="Description" />
                <asp:CommandField ShowEditButton="True" />
                <asp:ButtonField CommandName="Delete" Text="Delete" />
            </Columns>
        </asp:GridView>
    </div>
    <div>
        <p>Create a new department:</p>
        <p>Name:</p>
        <asp:TextBox ID="newName" runat="server" Width="400px" />
        <p>Description:</p>
        <asp:TextBox ID="newDescription" runat="server" Width="400px" Height="70px" TextMode="MultiLine" />
        <p>
            <asp:Button ID="createDepartment" Text="Create Department" runat="server" OnClick="createDepartment_Click" />
        </p>
    </div>
</asp:Content>

