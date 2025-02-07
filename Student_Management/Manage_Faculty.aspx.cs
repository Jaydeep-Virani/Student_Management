using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management
{
    public partial class Mange_Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindFacultyGrid();
            }
        }

        private void BindFacultyGrid()
        {
            // Simulate fetching data (replace with actual database call)
            DataTable dt = new DataTable();
            dt.Columns.Add("RollNo");
            dt.Columns.Add("Name");
            dt.Columns.Add("Education");
            dt.Columns.Add("Mobile");
            dt.Columns.Add("Email");
            dt.Columns.Add("AdmissionDate");

            dt.Rows.Add(1, "Tiger Nixon", "M.COM, P.H.D.", "123 456 7890", "info@example.com", DateTime.Parse("2011/04/25"));
            dt.Rows.Add(2, "Garrett Winters", "M.COM, P.H.D.", "987 654 3210", "info@example.com", DateTime.Parse("2011/07/25"));
            dt.Rows.Add(3, "Ashton Cox", "B.COM, M.COM.", "(123) 456 789", "info@example.com", DateTime.Parse("2009/01/12"));
            dt.Rows.Add(4, "Tiger Nixon", "M.COM, P.H.D.", "123 456 7890", "info@example.com", DateTime.Parse("2011/04/25"));
            dt.Rows.Add(5, "Garrett Winters", "M.COM, P.H.D.", "987 654 3210", "info@example.com", DateTime.Parse("2011/07/25"));
            dt.Rows.Add(6, "Ashton Cox", "B.COM, M.COM.", "(123) 456 789", "info@example.com", DateTime.Parse("2009/01/12"));

            FacultyGridView.DataSource = dt;
            FacultyGridView.DataBind();
        }

        protected void FacultyGridView_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            FacultyGridView.PageIndex = e.NewPageIndex;
            BindFacultyGrid();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string searchText = SearchBox.Text.Trim().ToLower();

            // Simulate fetching data (replace with actual database call)
            DataTable dt = new DataTable();
            dt.Columns.Add("RollNo");
            dt.Columns.Add("Name");
            dt.Columns.Add("Education");
            dt.Columns.Add("Mobile");
            dt.Columns.Add("Email");
            dt.Columns.Add("AdmissionDate");

            dt.Rows.Add(1, "Tiger Nixon", "M.COM, P.H.D.", "123 456 7890", "info@example.com", DateTime.Parse("2011/04/25"));
            dt.Rows.Add(2, "Garrett Winters", "M.COM, P.H.D.", "987 654 3210", "info@example.com", DateTime.Parse("2011/07/25"));
            dt.Rows.Add(3, "Ashton Cox", "B.COM, M.COM.", "(123) 456 789", "info@example.com", DateTime.Parse("2009/01/12"));
            dt.Rows.Add(4, "Tiger Nixon", "M.COM, P.H.D.", "123 456 7890", "info@example.com", DateTime.Parse("2011/04/25"));
            dt.Rows.Add(5, "Garrett Winters", "M.COM, P.H.D.", "987 654 3210", "info@example.com", DateTime.Parse("2011/07/25"));
            dt.Rows.Add(6, "Ashton Cox", "B.COM, M.COM.", "(123) 456 789", "info@example.com", DateTime.Parse("2009/01/12"));

            // Filter rows based on search text
            DataView dv = dt.DefaultView;
            dv.RowFilter = $"Name LIKE '%{searchText}%' OR Education LIKE '%{searchText}%' OR Email LIKE '%{searchText}%'";

            FacultyGridView.DataSource = dv;
            FacultyGridView.DataBind();
        }

        protected void AddFacultyButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Faculty.aspx");
        }
    }
}