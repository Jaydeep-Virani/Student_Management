<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Add_Faculty.aspx.cs" Inherits="Student_Management.Add_Manage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title>Add Faculty</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server" class="space-y-6 bg-white p-6 rounded shadow-md">
        <h1 class="text-2xl font-bold text-center mb-6">Add New Faculty</h1>

        <!-- First Name and Last Name -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div>
                <label for="FirstName" class="block mb-3 text-sm font-medium">First Name</label>
                <asp:TextBox ID="FirstName" runat="server" CssClass="mt-1 w-full h-10 block border-2 border-black rounded-md focus:outline-sky-600"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ControlToValidate="FirstName"
                    ErrorMessage="Please enter First name" CssClass="text-red-500 text-xs"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="LastName" class="block mb-3 text-sm font-medium">Last Name</label>
                <asp:TextBox ID="LastName" runat="server" CssClass="mt-1 w-full h-10 block border-2 border-black rounded-md focus:outline-sky-700"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ControlToValidate="LastName"
                    ErrorMessage="Please enter Last name" CssClass="text-red-500 text-xs"></asp:RequiredFieldValidator>
            </div>
        </div>

        <!-- Email and Phone Numbers -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div>
                <label for="Email" class="block mb-3 text-sm font-medium">Email</label>
                <asp:TextBox ID="Email" runat="server" CssClass="mt-1 w-full h-10 block border-2 border-black rounded-md focus:outline-sky-700"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="Email"
                    ErrorMessage="Please enter Email" CssClass="text-red-500 text-xs"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="PhoneNumber" class="block mb-3 text-sm font-medium">Phone No.</label>
                <asp:TextBox ID="PhoneNumber" runat="server" CssClass="mt-1 w-full h-10 block border-2 border-black rounded-md focus:outline-sky-700"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PhoneValidator" runat="server" ControlToValidate="PhoneNumber"
                    ErrorMessage="Phone number is required" CssClass="text-red-500 text-xs"></asp:RequiredFieldValidator>
            </div>
        </div>

        <!-- Emergency Phone and Date of Birth -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div>
                <label for="EmergencyPhoneNumber" class="block mb-3 text-sm font-medium">Emergency Phone No.</label>
                <asp:TextBox ID="EmergencyPhoneNumber" runat="server" CssClass="mt-1 w-full h-10 block border-2 border-black rounded-md focus:outline-sky-700"></asp:TextBox>
                <asp:RequiredFieldValidator ID="EmergencyPhoneValidator" runat="server" ControlToValidate="EmergencyPhoneNumber"
                    ErrorMessage="Emergency Phone number is required" CssClass="text-red-500 text-xs"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="DateOfBirth" class="block mb-3 text-sm font-medium">Date Of Birth</label>
                <asp:TextBox ID="DateOfBirth" runat="server" TextMode="Date" CssClass="mt-1 w-full h-10 block border-2 border-black rounded-md focus:outline-sky-700"></asp:TextBox>
                <asp:RequiredFieldValidator ID="DOBValidator" runat="server" ControlToValidate="DateOfBirth"
                    ErrorMessage="Please enter Date Of Birth" CssClass="text-red-500 text-xs"></asp:RequiredFieldValidator>
            </div>
        </div>

        <!-- Address and Class -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div>
                <label for="Address" class="block mb-3 text-sm font-medium">Address</label>
                <asp:TextBox ID="Address" runat="server" TextMode="MultiLine" CssClass="mt-1 w-full h-10 block border-2 border-black rounded-md focus:outline-sky-700"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AddressValidator" runat="server" ControlToValidate="Address"
                    ErrorMessage="Please enter Address" CssClass="text-red-500 text-xs"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="Class" class="block mb-3 text-sm font-medium">Class</label>
                <asp:DropDownList ID="Class" runat="server" CssClass="mt-1 w-full h-10 block border-2 border-black rounded-md">
                    <asp:ListItem Text="Choose..." Value="" />
                    <asp:ListItem Text="Class 1" Value="1" />
                    <asp:ListItem Text="Class 2" Value="2" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="ClassValidator" runat="server" ControlToValidate="Class"
                    ErrorMessage="Please select Class" CssClass="text-red-500 text-xs"></asp:RequiredFieldValidator>
            </div>
        </div>

        <!-- Gender and Student Image -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div>
                <label for="Gender" class="block mb-3 text-sm font-medium">Gender</label>
                <asp:DropDownList ID="Gender" runat="server" CssClass="mt-1 w-full h-10 block border-2 border-black rounded-md">
                    <asp:ListItem Text="Choose..." Value="" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="GenderValidator" runat="server" ControlToValidate="Gender"
                    ErrorMessage="Please select Gender" CssClass="text-red-500 text-xs"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="StudentImage" class="block mb-3 text-sm font-medium">Student Image</label>
                <asp:FileUpload ID="StudentImage" runat="server" CssClass="mt-1 w-full h-10 block border-2 border-black rounded-md"></asp:FileUpload>
                <asp:RequiredFieldValidator ID="ImageValidator" runat="server" ControlToValidate="StudentImage"
                    ErrorMessage="Please select Image" CssClass="text-red-500 text-xs"></asp:RequiredFieldValidator>
            </div>
        </div>

        <!-- Submit Button -->
        <div class="text-center">
            <asp:Button ID="SubmitButton" runat="server" Text="Add Student" CssClass="bg-blue-500 text-white px-6 py-2 rounded hover:bg-blue-600" />
        </div>
    </form>
</asp:Content>
