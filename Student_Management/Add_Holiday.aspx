<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Add_Holiday.aspx.cs" Inherits="Student_Management.Add_Holiday" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title>Add Holiday</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="flex justify-center items-center">
            <div class="bg-white rounded-lg shadow-lg p-8 w-full">
                <h1 class="text-xl font-bold text-gray-800 mb-6">Add Holiday</h1>
                
                <!-- Holiday Name -->
                <div class="mb-4">
                    <label for="holidayName" class="block text-gray-700 font-medium mb-2">Holiday Name</label>
                    <asp:TextBox ID="holidayName" runat="server" CssClass="w-full h-10 block border-2 border-black rounded-md focus:outline-sky-600" Placeholder="Holiday Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredHolidayName" runat="server" ControlToValidate="holidayName" ErrorMessage="Holiday Name is required." CssClass="text-red-500 text-sm" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>

                <!-- Date -->
                <div class="mb-4">
                    <label for="holidayDate" class="block text-gray-700 font-medium mb-2">Date</label>
                    <asp:TextBox ID="holidayDate" runat="server" CssClass="w-full h-10 block border-2 border-black rounded-md focus:outline-sky-600" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredHolidayDate" runat="server" ControlToValidate="holidayDate" ErrorMessage="Date is required." CssClass="text-red-500 text-sm" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>

                <!-- Submit Button -->
                <asp:Button ID="btnAddHoliday" runat="server" CssClass="w-50 bg-blue-500 text-white font-medium py-2 px-4 rounded-lg hover:bg-blue-600 transition" Text="Add Holiday" OnClick="btnAddHoliday_Click" />
            </div>
        </div>
    </form>
</asp:Content>
