﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace POC_BuildScript
{
	public partial class MainPage : ContentPage
	{
		public MainPage()
		{
			InitializeComponent();

            lbl.Text = Util.key;
		}
	}
}
