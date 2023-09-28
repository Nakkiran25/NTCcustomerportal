<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="NTCcustomerportal.forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .btn
        {
           visibility:hidden;
        }
         body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
             border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 50%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 10px 14px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
        
        <div>
              <table class="auto-style1">  

              <tr>

                  <td> <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="CustomerCode" autocomplete="off"></asp:Label> </td>
                  <td> <asp:TextBox ID="txt_uid" runat="server" Font-Size="X-Large" autocomplete="off" ></asp:TextBox> </td>
                  <td> <asp:Button ID="Button2"  CausesValidation="False" runat="server" Text="Search" CssClass="btn" OnClick="Button2_Click"/> </td>
                  
             </tr>
                  
             <tr>
                  <td>  <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Security Questions" autocomplete="off"></asp:Label></td>
                  <td>
                        <asp:DropDownList id="Txt_sec" runat="server"  >  
                        <asp:ListItem value="value" selected="True">  Please Select </asp:ListItem>
                        <asp:ListItem>What is Your favourite color?</asp:ListItem>
                        <asp:ListItem>What is Your First Pet Name?</asp:ListItem>
                        <asp:ListItem>What was the name of your elementary school?</asp:ListItem>
                        <asp:ListItem>Which is Native Place?</asp:ListItem>
                        <asp:ListItem>What was your favorite food as a child?</asp:ListItem>
                        <asp:ListItem>What year was your father (or mother) born?</asp:ListItem>
                        <asp:ListItem>what is your age at the year 2020? </asp:ListItem>
                       </asp:DropDownList>  

                  </td>
             </tr>


             <%-- <tr>

                    <td> <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Security Questions" autocomplete="off"></asp:Label></td>
                    <td> <asp:TextBox ID="Txt_sec" runat="server" Font-Size="X-Large"></asp:TextBox></td>

                  </tr>--%>

             <tr>
                 <td> <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Security Answers" autocomplete="off"></asp:Label></td>
                 <td> <asp:TextBox ID="Txt_ans" runat="server" Font-Size="X-Large"  ></asp:TextBox> </td>
             </tr>

             <tr>
                 <td> <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="New Password" autocomplete="off"></asp:Label></td>
                 <td> <asp:TextBox ID="txt_new" runat="server" Font-Size="X-Large" autocomplete="off" TextMode="Password" ></asp:TextBox> </td>

               <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_new" ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic">
               </asp:RequiredFieldValidator>
                
             </tr>
                  
             <tr>
                 <td> <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Confirm Password" autocomplete="off"></asp:Label></td>
                 <td> <asp:TextBox ID="txt_cnf" runat="server" Font-Size="X-Large" autocomplete="off" TextMode="Password" ></asp:TextBox></td>

            <asp:CompareValidator runat="server" ControlToCompare="txt_new" ControlToValidate="txt_cnf" ErrorMessage="Password do not match." ForeColor="Red" Display="Dynamic">
                 </asp:CompareValidator>
                <asp:RegularExpressionValidator ID="revPassword" runat="server" ErrorMessage="Invalid Credentials"
                  ValidationExpression ="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}" ControlToValidate="txt_new" ForeColor="Red" ></asp:RegularExpressionValidator>
                   
             </tr>
        
             <tr><td><asp:Button ID="Button1" runat="server" Font-Size="X-Large" CssClass="lgnbtn"  OnClick="Button1_Click" Text="Save" /></td></tr>
                <tr><td><asp:LinkButton ID="Login_back"  Font-Size="X-Large" CausesValidation="False" runat="server" OnClick="Login_back_Click">Login?</asp:LinkButton></td></tr>
        </table>  
         

          
        </div>
        </form>
</body>
</html>
