using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
            if (!IsPostBack)
            {
                finalGradeLbl.Text = "Submit your grade percentage to see your final grade!";
            } else
            {
                finalGradeLbl.Text = "Final Grade: ";
            }
        }


        protected void Calculate_Click(object sender, EventArgs e)
        {
            try
            {

                double percentGrade = double.Parse(percentageGrade.Text);
                string finalGradeTxt = "";

                if (percentGrade <= 100.00 && percentGrade > 96)
                {
                    finalGradeTxt = "1.0";
                    Response.Write($"<script>alert('Congrats You Got an Uno!');</script>");

                }

                else if (percentGrade <= 96.00 && percentGrade >= 91.51)
                {
                    finalGradeTxt = "1.25";
                }

                else if (percentGrade <= 91.50 && percentGrade >= 87.01)
                {
                    finalGradeTxt = "1.50";
                }

                else if (percentGrade <= 87.00 && percentGrade >= 82.51)
                {
                    finalGradeTxt = "1.75";
                }

                else if (percentGrade <= 82.50 && percentGrade >= 78.01)
                {
                    finalGradeTxt = "2.00";
                }

                else if (percentGrade <= 78.00 && percentGrade >= 73.51)
                {
                    finalGradeTxt = "2.25";
                }

                else if (percentGrade <= 73.50 && percentGrade >= 69.01)
                {
                    finalGradeTxt = "2.50";
                }

                else if (percentGrade <= 69.00 && percentGrade >= 64.51)
                {
                    finalGradeTxt = "2.75";
                }

                else if (percentGrade <= 64.50 && percentGrade >= 60.00)
                {
                    finalGradeTxt = "3.00";
                }

                else if (percentGrade < 60)
                {
                    finalGradeTxt = "5.00";
                }

                else
                {
                    finalGradeTxt = "Error! Grade cannot be processed. Invalid Grade!";
                } 

                finalGrade.Text = finalGradeTxt.ToString();
            }
            catch
            {

            }

        }
    }
}