<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Student_Management.Dashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title>Dashboard</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-gray-100 min-h-screen flex flex-col">
        <main class="flex-1">
            <div class="max-w">
                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-6">
                    <!-- Card: Students -->
                    <div class="bg-white rounded-lg shadow text-center">
                        <div class="bg-blue-600 text-white py-2 rounded-t-lg">
                            <h2 class="text-lg font-bold">Students</h2>
                        </div>
                        <p class="text-gray-600 py-4">Total: 250</p>
                    </div>

                    <!-- Card: Teachers -->
                    <div class="bg-white rounded-lg shadow text-center">
                        <div class="bg-blue-600 text-white py-2 rounded-t-lg">
                            <h2 class="text-lg font-bold">Teachers</h2>
                        </div>
                        <p class="text-gray-600 py-4">Total: 20</p>
                    </div>

                    <!-- Card: Parents -->
                    <div class="bg-white rounded-lg shadow text-center">
                        <div class="bg-blue-600 text-white py-2 rounded-t-lg">
                            <h2 class="text-lg font-bold">Parents</h2>
                        </div>
                        <p class="text-gray-600 py-4">Total: 250</p>
                    </div>

                    <!-- Card: Class -->
                    <div class="bg-white rounded-lg shadow text-center">
                        <div class="bg-blue-600 text-white py-2 rounded-t-lg">
                            <h2 class="text-lg font-bold">Class</h2>
                        </div>
                        <p class="text-gray-600 py-4">Total: 10</p>
                    </div>

                    <!-- Card: Subjects -->
                    <div class="bg-white rounded-lg shadow text-center">
                        <div class="bg-blue-600 text-white py-2 rounded-t-lg">
                            <h2 class="text-lg font-bold">Subjects</h2>
                        </div>
                        <p class="text-gray-600 py-4">Total: 12</p>
                    </div>
                </div>
            </div>
        </main>
    </div>
</asp:Content>
