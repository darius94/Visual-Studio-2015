<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <img src="csu.png" alt="logo" width="150" height="150" /><h1>Course Search</h1>

     
<br/>
     <h2 style="color:red;">Pick a Semester</h2>

    <div>
       
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Sem_Name" DataValueField="Sem_Name"></asp:DropDownList>

        <asp:sqldatasource runat="server" id="SqlDataSource1" connectionstring='<%$ ConnectionStrings:Schedule_DBConnectionString6 %>' selectcommand="SELECT [Sem_Name] FROM [Semester]"></asp:sqldatasource>

</div>


<br/>
<br/>
    <h2 style="color:red;">Pick a Subject</h2>
   <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Sub_Name" DataValueField="Sub_Name" AutoPostBack="True" ></asp:DropDownList>


            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Schedule_DBConnectionString9 %>' SelectCommand="SELECT [Sub_Name] FROM [Subjects]"></asp:SqlDataSource>
<br/>
 <br />    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Schedule_DBConnectionString9 %>" SelectCommand="SELECT [Class_Crn], [Class_Name], [Class_Sec], [Class_Tim], [Class_Loc], [Class_Day], [Class_Inst], [Class_Date], [Sem_Name] FROM [Classes] WHERE ([Sem_Name] = @Sem_Name)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList1" Name="Sem_Name" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
  
         <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Class_Crn" DataSourceID="SqlDataSource3">
             <Columns>
                 <asp:BoundField DataField="Class_Crn" HeaderText="Crn" ReadOnly="True" SortExpression="Class_Crn" />
                 <asp:BoundField DataField="Class_Name" HeaderText="Name" SortExpression="Class_Name" />
                 <asp:BoundField DataField="Class_Sec" HeaderText="Section" SortExpression="Class_Sec" />
                 <asp:BoundField DataField="Class_Tim" HeaderText="Time" SortExpression="Class_Tim" />
                 <asp:BoundField DataField="Class_Loc" HeaderText="Location" SortExpression="Class_Loc" />
                 <asp:BoundField DataField="Class_Day" HeaderText="Day" SortExpression="Class_Day" />
                 <asp:BoundField DataField="Class_Inst" HeaderText="Instructor" SortExpression="Class_Inst" />
                 <asp:BoundField DataField="Class_Date" HeaderText="Date" SortExpression="Class_Date" />
                 <asp:BoundField DataField="Sem_Name" HeaderText="Semester" SortExpression="Sem_Name" />
             </Columns>
             <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
             <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
             <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
             <RowStyle BackColor="White" ForeColor="#003399" />
             <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
             <SortedAscendingCellStyle BackColor="#EDF6F6" />
             <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
             <SortedDescendingCellStyle BackColor="#D6DFDF" />
             <SortedDescendingHeaderStyle BackColor="#002876" />
         </asp:GridView>
  
    <br/>
             
         </asp:Content>

             



 <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


</asp:Content>
