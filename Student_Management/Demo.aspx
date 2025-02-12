﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="Student_Management.Demo" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My App</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
    <style>
        body {
            display: flex;
            height: 100vh;
            flex-direction: column;
        }

        .content-wrapper {
            display: flex;
            flex: 1;
        }

        .sidebar {
            transition: width 0.3s ease-in-out;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        .main-content {
            transition: margin-left 0.3s ease-in-out;
        }

        .closed-sidebar .sidebar {
            width: 4rem;
        }

        .closed-sidebar .sidebar ul li span {
            display: none;
        }

        .closed-sidebar .sidebar ul li .submenu-icon {
            display: none;
        }

        .sidebar ul li ul {
            display: none;
            position: absolute;
            left: 4rem;
            top: 0;
            width: 12rem;
            background: #fff;
            z-index: 10;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar ul li ul.show {
            display: block;
        }

        .sidebar ul li:hover ul {
            display: block;
        }

        .closed-sidebar ul li ul {
            left: 2rem;
        }
    </style>
</head>
<body>
    <nav class="w-full bg-blue-500 text-white p-4">
        <div class="flex justify-between items-center max-w-full">
            <h1 class="text-lg font-bold">My App</h1>
            <div class="flex items-center space-x-4">
                <img src="https://via.placeholder.com/40" alt="Profile Picture" class="rounded-full w-10 h-10" />
                <div class="relative">
                    <button id="dropdownButton" class="flex items-center space-x-2">
                        <span>Jaydeep Virani</span>
                        <i class="fas fa-caret-down"></i>
                    </button>
                    <div id="dropdownMenu" class="absolute right-0 mt-2 bg-white text-black rounded shadow-lg hidden w-40">
                        <ul>
                            <li class="font-bold hover:font-bold hover:scale-105 px-4 py-2"><a href="#">Settings</a></li>
                            <li class="font-bold hover:font-bold hover:scale-105 px-4 py-2"><a href="#">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>

     <div class="content-wrapper">
        <div id="sidebar" class="sidebar w-64 bg-white text-black flex flex-col">
            <div class="p-4">
                <button id="toggleButton" class="text-black">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
            <ul class="flex-1">
                <li class="p-4 flex items-center space-x-4 font-bold hover:font-bold hover:scale-105 transition">
                    <i class="fas fa-tachometer-alt text-blue-500"></i>
                    <span>Dashboard</span>
                </li>
                <li class="p-4 flex flex-col font-bold hover:font-bold hover:scale-105 transition relative">
                    <div class="flex items-center justify-between space-x-4 cursor-pointer" id="masterMenu">
                        <div class="flex items-center space-x-4">
                            <i class="fas fa-folder text-green-500"></i>
                            <span>Master</span>
                        </div>
                        <i class="fas fa-chevron-down submenu-icon"></i>
                    </div>
                    <ul class="hidden ml-8 mt-10 space-y-2 bg-gray-50 text-gray-700 rounded shadow-md py-2" id="masterSubMenu">
                        <li class="font-bold hover:font-bold hover:scale-105 px-4 py-2">Sub-item 1</li>
                        <li class="font-bold hover:font-bold hover:scale-105 px-4 py-2">Sub-item 2</li>
                        <li class="font-bold hover:font-bold hover:scale-105 px-4 py-2">Sub-item 3</li>
                    </ul>
                </li>
                <li class="p-4 flex items-center space-x-4 font-bold hover:font-bold hover:scale-105 transition">
                    <i class="fas fa-cogs text-yellow-500"></i>
                    <span>Settings</span>
                </li>
                <li class="p-4 flex items-center space-x-4 font-bold hover:font-bold hover:scale-105 transition">
                    <i class="fas fa-user text-purple-500"></i>
                    <span>Profile</span>
                </li>
            </ul>
            <ul class="mt-auto">
                <li class="p-4 flex items-center space-x-4 font-bold hover:font-bold hover:scale-105 transition">
                    <i class="fas fa-sign-out-alt text-red-500"></i>
                    <span>Logout</span>
                </li>
            </ul>
        </div>

        <div id="mainContent" class="main-content flex-1 p-8 bg-gray-100">
            <h1 class="text-3xl font-bold">Welcome to My App!</h1>
            <p class="mt-4">This is the main content area.</p>
        </div>
    </div>

    <script>
        document.getElementById('toggleButton').addEventListener('click', () => {
            document.body.classList.toggle('closed-sidebar');
        });

        document.getElementById('dropdownButton').addEventListener('click', () => {
            document.getElementById('dropdownMenu').classList.toggle('hidden');
        });

        document.addEventListener('click', (event) => {
            if (!document.getElementById('dropdownButton').contains(event.target) &&
                !document.getElementById('dropdownMenu').contains(event.target)) {
                document.getElementById('dropdownMenu').classList.add('hidden');
            }
        });

        document.getElementById("masterMenu").addEventListener("click", (e) => {
            e.stopPropagation();
            document.getElementById("masterSubMenu").classList.toggle("hidden");
        });

        document.addEventListener("click", () => {
            if (!document.getElementById("masterSubMenu").classList.contains("hidden")) {
                document.getElementById("masterSubMenu").classList.add("hidden");
            }
        });
    </script>
</body>
</html>