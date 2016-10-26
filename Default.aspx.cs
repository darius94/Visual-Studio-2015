using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if (!IsPostBack) {
            for (float i = 1; i <= 5; i += 0.25f) {

                ddlRate.Items.Add(new ListItem(i.ToString()));
            }

        }
        amountTotalText.Text = "0.00";
    }
    
   

    public Double calculateLoan(Decimal amount, Decimal rate, int years)
    {
        Double amountMod = (Double)(amount * (rate / 12));
        int yearsOwed = (-(years * 12));
       Double firstOp = (Double)(1 + (rate) / 12);
        Double powered = 1 - Math.Pow(firstOp, (Double)yearsOwed);
       Double total = amountMod / powered;
        return total;
    }
   public int convertToMonths(int years)
    {
        return (years * 12);
    }

    protected void calculate_Click(object sender, EventArgs e)
    {
        Decimal amount = (Decimal)Convert.ToDouble(txtAmount.Text);
        int years = (int)Convert.ToInt16(yearsInput.Text);
        Decimal rate = (Decimal)Convert.ToDouble((ddlRate.SelectedValue)) / 100;
        Double total = Math.Round(calculateLoan(amount, rate, years), 2);
        amountTotalText.Text = "$" + total.ToString();
    }



    protected void clear_Click(object sender, EventArgs e)
    {
        txtAmount.Text = "";
        yearsInput.Text = "";
    }





}