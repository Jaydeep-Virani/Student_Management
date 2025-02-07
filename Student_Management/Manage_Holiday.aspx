<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Manage_Holiday.aspx.cs" Inherits="Student_Management.Manage_Holiday" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="container mx-auto p-4 bg-white rounded-lg shadow">
            <a href="Add_Holiday.aspx"<button type="button" class="mb-6 px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600">+ Add Holiday</button></a>

            <div class="flex">
                <!-- Month List -->
                <div class="w-1/4 p-4 border-r">
                    <h2 class="text-lg font-bold mb-2">Months</h2>
                    <ul>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:scale-105" onclick="showHolidays(1)">January</li>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:bg-gray-200 hover:scale-105" onclick="showHolidays(2)">February</li>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:bg-gray-200 hover:scale-105" onclick="showHolidays(3)">March</li>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:bg-gray-200 hover:scale-105" onclick="showHolidays(4)">April</li>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:bg-gray-200 hover:scale-105" onclick="showHolidays(5)">May</li>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:bg-gray-200 hover:scale-105" onclick="showHolidays(6)">June</li>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:bg-gray-200 hover:scale-105" onclick="showHolidays(7)">July</li>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:bg-gray-200 hover:scale-105" onclick="showHolidays(8)">August</li>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:bg-gray-200 hover:scale-105" onclick="showHolidays(9)">September</li>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:bg-gray-200 hover:scale-105" onclick="showHolidays(10)">October</li>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:bg-gray-200 hover:scale-105" onclick="showHolidays(11)">November</li>
                        <li class="p-2 bg-gray-100 rounded mb-2 cursor-pointer hover:bg-gray-200 hover:scale-105" onclick="showHolidays(12)">December</li>
                    </ul>
                </div>

                <!-- Holiday List -->
                <div class="w-3/4 p-4">
                    <h2 class="text-lg font-bold mb-2 flex items-center">
                        <span class="mr-2">&#128197;</span> 
                        <span id="monthName">January</span>
                    </h2>
                    <table class="w-full border text-center">
                        <thead>
                            <tr class="bg-blue-500 text-white">
                                <th class="p-2">Sr No.</th>
                                <th class="p-2">Holiday Name</th>
                                <th class="p-2">Date</th>
                                <th class="p-2">Action</th>
                            </tr>
                        </thead>
                        <tbody id="holidayTable">
                            <tr class="border-t">
                                <td class="p-2">1</td>
                                <td class="p-2">Makarsankranti</td>
                                <td class="p-2">14-01-2025</td>
                                <td class="p-2">
                                    <a href="#" class="text-blue-500 hover:text-blue-700 mr-2">✏️ Edit</a>
                                    <a href="#" class="text-red-500 hover:text-red-700">🗑 Delete</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>

    <script>
        function showHolidays(month) {
            const monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
            document.getElementById('monthName').innerText = monthNames[month - 1];

            const holidays = [
                { id: 1, name: 'Makarsankranti', date: '14-01-2025', month: 1 },
                { id: 2, name: 'Republic Day', date: '26-01-2025', month: 1 },
                { id: 3, name: 'Independence Day', date: '15-08-2025', month: 8 },
                { id: 4, name: 'Christmas', date: '25-12-2025', month: 12 },
            ];

            const filteredHolidays = holidays.filter(holiday => holiday.month === month);
            const holidayTable = document.getElementById('holidayTable');
            holidayTable.innerHTML = '';

            filteredHolidays.forEach((holiday, index) => {
                holidayTable.innerHTML += `
                    <tr class="border-t">
                        <td class="p-2">${index + 1}</td>
                        <td class="p-2">${holiday.name}</td>
                        <td class="p-2">${holiday.date}</td>
                        <td class="p-2">
                            <a href="#" class="text-blue-500 hover:text-blue-700 mr-2">✏️ Edit</a>
                            <a href="#" class="text-red-500 hover:text-red-700">🗑 Delete</a>
                        </td>
                    </tr>
                `;
            });
        }
    </script>
</asp:Content>
