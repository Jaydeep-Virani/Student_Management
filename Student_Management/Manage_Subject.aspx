<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Manage_Subject.aspx.cs" Inherits="Student_Management.Manage_Subject" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title> Subject </title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="container mx-auto p-4 flex space-x-4">

            <!-- Add Subject Section -->
            <div class="w-1/2 p-4 bg-white rounded-lg shadow">
                <h2 class="text-xl font-bold mb-4">Add Subject</h2>

                <!-- Error Message Label (for server-side validation) -->
                <asp:Label ID="lblError" runat="server" CssClass="text-red-500 text-sm mb-4" Visible="false"></asp:Label>

                <!-- Subject Name Input -->
                <div class="mb-4">
                    <label for="subjectName" class="block text-sm font-medium text-gray-700">Subject Name</label>
                    <asp:TextBox ID="txtSubjectName" runat="server" CssClass="mt-1 block w-full border border-gray-300 rounded-md shadow-sm p-2 focus:ring-blue-500 focus:border-blue-500" />

                    <!-- Client-side validation for required field -->
                    <asp:RequiredFieldValidator 
                        ID="rfvSubjectName" 
                        runat="server" 
                        ControlToValidate="txtSubjectName" 
                        InitialValue="" 
                        ErrorMessage="Subject name is required!" 
                        ForeColor="Red" 
                        Display="Dynamic" />
                </div>

                <!-- Add Subject Button -->
                <asp:Button ID="btnAddSubject" runat="server" Text="Add Subject" CssClass="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600" OnClick="btnAddSubject_Click" OnClientClick="return validateSubjectName();" />
            </div>

            <!-- Subject List Section -->
            <div class="w-1/2 p-4 bg-white rounded-lg shadow">
                <h2 class="text-xl font-bold mb-4">Subject List</h2>
                <table class="w-full border">
                    <thead>
                        <tr class="bg-blue-500 text-white">
                            <th class="p-2 border">Sr No.</th>
                            <th class="p-2 border">Subject Name</th>
                            <th class="p-2 border">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptSubjectList" runat="server">
                            <ItemTemplate>
                                <tr class="border-t">
                                    <td class="p-2 text-center"><%# Container.ItemIndex + 1 %></td>
                                    <td class="p-2 text-center"><%# Eval("SubjectName") %></td>
                                    <td class="p-2 text-center">
                                        <a href='Edit_Subject.aspx?ID=<%# Eval("SubjectID") %>' class="text-blue-500 hover:text-blue-700 mr-2">
                                            <i class="fas fa-edit"></i>
                                        </a>
                                        <a href='Delete_Subject.aspx?ID=<%# Eval("SubjectID") %>' class="text-red-500 hover:text-red-700">
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
