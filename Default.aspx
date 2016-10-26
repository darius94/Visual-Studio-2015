<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<!-- Darius Little 10/26/2016  -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Styles.css" media="screen" />
    <title>Lab9</title>
</head>
<body>
    <form id="form1" runat="server">
         <img src="logo.gif" alt="Wells Fargo" style="width:50px;height:50px;"/>
        <p></p>
        <p></p>
        <h1>Loan Payment Calculator</h1>
        
        Amount:  <asp:TextBox ID="txtAmount" runat="server">                     </asp:TextBox><div class="validator"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAmount" ErrorMessage="Amount Out Of Range">
        </asp:RequiredFieldValidator></div>
        
        Annual Interest Rate:<asp:DropDownList ID="ddlRate" runat="server"></asp:DropDownList>
        <p></p>
      Number of Years: <asp:TextBox ID="yearsInput" runat="server"> </asp:TextBox><div class="validator">
        <asp:RequiredFieldValidator ID="numberOfYearsValidator" runat="server" ControlToValidate="txtAmount"  ErrorMessage="Years Out OF Range ">
        </asp:RequiredFieldValidator>  </div>
      
        Monthly Payment:       <asp:Label ID="amountTotalText" runat="server" Text="Label"></asp:Label>
   
        <div class="button">
        <asp:Button ID="btnCalculate"  runat="server" Text="Calculate" OnClick="calculate_Click" />
        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="clear_Click" />
            </div>
        
    </form>
</body>
</html>
