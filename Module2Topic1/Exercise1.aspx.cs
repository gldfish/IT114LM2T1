﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClickPlay(object sender, EventArgs e)
        {
            spanDisplay.InnerText = $"Now Playing: {favSong.Text}";
        }
    }
}