using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management
{
    public partial class Manage_Class : System.Web.UI.Page
    {
        private static List<Class> classList = new List<Class>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if classList is empty and add a default class
                if (classList.Count == 0)
                {
                    classList.Add(new Class { ClassID = 1, ClassName = "Class 1" });
                }

                // Bind the class list to the Repeater control
                BindClassList();
            }
        }

        protected void btnAddClass_Click(object sender, EventArgs e)
        {
            string className = txtClassName.Text.Trim();

            if (!string.IsNullOrEmpty(className))
            {
                // Add new class to the list (or save to your database)
                classList.Add(new Class { ClassID = classList.Count + 1, ClassName = className });

                // Clear the TextBox
                txtClassName.Text = string.Empty;

                // Rebind the class list to the Repeater
                BindClassList();
            }
        }

        // Bind the class list to the Repeater control
        private void BindClassList()
        {
            rptClassList.DataSource = classList;
            rptClassList.DataBind();
        }

        // Class model to represent a Class entity
        public class Class
        {
            public int ClassID { get; set; }
            public string ClassName { get; set; }
        }
    }
}