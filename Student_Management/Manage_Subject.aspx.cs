using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management
{
    public partial class Manage_Subject : System.Web.UI.Page
    {
        private static List<Subject> subjectList = new List<Subject>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if subjectList is empty and add a default subject
                if (subjectList.Count == 0)
                {
                    subjectList.Add(new Subject { SubjectID = 1, SubjectName = "Mathematics" });
                }

                // Bind the subject list to the Repeater control
                BindSubjectList();
            }
        }

        protected void btnAddSubject_Click(object sender, EventArgs e)
        {
            string subjectName = txtSubjectName.Text.Trim();

            if (!string.IsNullOrEmpty(subjectName))
            {
                // Add new subject to the list (or save to your database)
                subjectList.Add(new Subject { SubjectID = subjectList.Count + 1, SubjectName = subjectName });

                // Clear the TextBox
                txtSubjectName.Text = string.Empty;

                // Rebind the subject list to the Repeater
                BindSubjectList();
            }
        }

        // Bind the subject list to the Repeater control
        private void BindSubjectList()
        {
            rptSubjectList.DataSource = subjectList;
            rptSubjectList.DataBind();
        }

        // Subject model to represent a Subject entity
        public class Subject
        {
            public int SubjectID { get; set; }
            public string SubjectName { get; set; }
        }
    }
}
