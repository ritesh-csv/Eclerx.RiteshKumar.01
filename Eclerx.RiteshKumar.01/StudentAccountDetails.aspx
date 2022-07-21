<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAccountDetails.aspx.cs" Inherits="Eclerx.RiteshKumar._01.StudentAccountDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">  
                <tr>  
                    <td>User Name:</td>  
                    <td>  
                        <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RfvUsertName" runat="server" ErrorMessage="User Name should not be empty" ControlToValidate="TxtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>   
               </tr>  
                <tr>  
                    <td>Password</td>  
                     <td>
                         <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RfvPassword" ForeColor="Red" ErrorMessage="Password is required" ControlToValidate="TxtPassword" runat="server"/>
                     </td>  
                </tr>  
                <tr>  
                    <td>Confirm Password</td>  
                    <td>  
                        <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox> 
                        <asp:CompareValidator ID="CvPassword" ErrorMessage="Password and Confirm Password doesn't match" ControlToValidate="TxtConfirmPassword" ControlToCompare="TxtPassword" ForeColor="Red" runat="server"/>
                    </td>  
                </tr> 
                <tr>
                    <td>Account Creation Date</td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                </tr>
                <tr>  
                    <td>Hobbies</td>  
                    <td>  <asp:CheckBoxList ID="CheckBoxList1" runat="server">                 
             <asp:ListItem>Reading</asp:ListItem>
             <asp:ListItem>Drawing</asp:ListItem>
             <asp:ListItem>Football</asp:ListItem>
             <asp:ListItem>Cricket</asp:ListItem>
             <asp:ListItem>Badminton</asp:ListItem>
             <asp:ListItem>Swiming</asp:ListItem>
                    </asp:CheckBoxList>
                        <asp:RequiredFieldValidator ID="RfvHobbies" ForeColor="Red" ErrorMessage="Please select a Hobby" InitialValue="-1" ControlToValidate="CheckBoxList1" runat="server"/>
                    </td>  
                </tr>                 
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Submit"/>  
                    </td>  
                </tr>  
            </table> 
        </div>
    </form>
</body>
</html>
