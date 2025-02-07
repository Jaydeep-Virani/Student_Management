<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Manage_Class.aspx.cs" Inherits="Student_Management.Manage_Class" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title> Class </title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="container mx-auto p-4 flex space-x-4">

            <!-- Add Class Section -->
            <div class="w-1/2 p-4 bg-white rounded-lg shadow">
                <h2 class="text-xl font-bold mb-4">Add Class</h2>

                <!-- Error Message Label (for server-side validation) -->
                <asp:Label ID="lblError" runat="server" CssClass="text-red-500 text-sm mb-4" Visible="false"></asp:Label>

                <!-- Class Name Input -->
                <div class="mb-4">
                    <label for="className" class="block text-sm font-medium text-gray-700">Class Name</label>
                    <asp:TextBox ID="txtClassName" runat="server" CssClass="mt-1 block w-full border border-gray-300 rounded-md shadow-sm p-2 focus:ring-blue-500 focus:border-blue-500" />

                    <!-- Client-side validation for required field -->
                    <asp:RequiredFieldValidator 
                        ID="rfvClassName" 
                        runat="server" 
                        ControlToValidate="txtClassName" 
                        InitialValue="" 
                        ErrorMessage="Class name is required!" 
                        ForeColor="Red" 
                        Display="Dynamic" />

                </div>

                <!-- Add Class Button -->
                <asp:Button ID="btnAddClass" runat="server" Text="Add Class" CssClass="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600" OnClick="btnAddClass_Click" OnClientClick="return validateClassName();" />
            </div>

            <!-- Class List Section -->
            <div class="w-1/2 p-4 bg-white rounded-lg shadow">
                <h2 class="text-xl font-bold mb-4">Class List</h2>
                <table class="w-full border">
                    <thead>
                        <tr class="bg-blue-500 text-white">
                            <th class="p-2 border">Sr No.</th>
                            <th class="p-2 border">Class Name</th>
                            <th class="p-2 border">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptClassList" runat="server">
                            <ItemTemplate>
                                <tr class="border-t">
                                    <td class="p-2 text-center"><%# Container.ItemIndex + 1 %></td>
                                    <td class="p-2 text-center"><%# Eval("ClassName") %></td>
                                    <td class="p-2 text-center">
                                        <a href='Edit_Class.aspx?ID=<%# Eval("ClassID") %>' class="text-blue-500 hover:text-blue-700 mr-2">
                                            <i class="fas fa-edit"></i>
                                        </a>
                                        <a href='Delete_Class.aspx?ID=<%# Eval("ClassID") %>' class="text-red-500 hover:text-red-700">
                                            <i class="fas fa-trash-alt"></i>
                                        </a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</asp:Content>