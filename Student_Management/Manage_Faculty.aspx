<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Manage_Faculty.aspx.cs" Inherits="Student_Management.Mange_Faculty" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title>Manage Faculty</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        <div class="p-6 bg-gray-100 rounded shadow-md">
            <div class="flex justify-between items-center mb-4">
                <h1 class="text-2xl font-bold">All Facultys List</h1>
            </div>
    
           <div class="flex justify-between items-center mb-4">
                <asp:Button ID="AddFacultyButton" runat="server" Text="+ Add Faculty" 
                    CssClass="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600" 
                    OnClick="AddFacultyButton_Click" />
    
                <div class="flex items-center">
                    <asp:TextBox ID="SearchBox" runat="server" Placeholder="Search..." 
                        CssClass="border border-gray-300 rounded-md px-4 py-2"></asp:TextBox>
                    <asp:Button ID="SearchButton" runat="server" Text="Search" 
                        CssClass="ml-2 bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600" 
                        OnClick="SearchButton_Click" />
                </div>
            </div>
    
            <asp:GridView ID="FacultyGridView" runat="server" AutoGenerateColumns="false" CssClass="table-auto border border-gray-300 rounded w-full text-sm shadow-lg">
                <Columns>
                    <asp:BoundField DataField="RollNo" HeaderText="Roll No." HeaderStyle-CssClass="bg-blue-500 text-white text-left px-4 py-2" ItemStyle-CssClass="border-b text-gray-700 px-4 py-2" />
                    <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-CssClass="bg-blue-500 text-white text-left px-4 py-2" ItemStyle-CssClass="border-b text-gray-700 px-4 py-2" />
                    <asp:BoundField DataField="Education" HeaderText="Education" HeaderStyle-CssClass="bg-blue-500 text-white text-left px-4 py-2" ItemStyle-CssClass="border-b text-gray-700 px-4 py-2" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" HeaderStyle-CssClass="bg-blue-500 text-white text-left px-4 py-2" ItemStyle-CssClass="border-b text-gray-700 px-4 py-2" />
                    <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-CssClass="bg-blue-500 text-white text-left px-4 py-2" ItemStyle-CssClass="border-b text-gray-700 px-4 py-2" />
                    <asp:BoundField DataField="AdmissionDate" HeaderText="Admission Date" DataFormatString="{0:dd-MM-yyyy}" 
                                    HeaderStyle-CssClass="bg-blue-500 text-white text-left px-4 py-2" ItemStyle-CssClass="border-b text-gray-700 px-4 py-2" />
                    <asp:TemplateField HeaderText="Action">
                        <HeaderStyle CssClass="bg-blue-500 text-white text-left px-4 py-2" />
                        <ItemStyle CssClass="border-b text-gray-700 px-4 py-2 text-center" />
                        <ItemTemplate>
                            <a href="#" class="text-blue-600 hover:text-blue-800 mx-2">
                                <i class="fas fa-edit"></i>
                            </a>
                            <a href="#" class="text-red-600 hover:text-red-800 mx-2">
                                <i class="fas fa-trash-alt"></i>
                            </a>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</asp:Content>
