<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formlogin.aspx.cs" Inherits="NTCcustomerportal.formlogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
            height: 139px;
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
            padding: 14px 20px;
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
        .style4
        {
            width: 212px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div>
            <table class="auto-style1">

                <tr>
                    <td><asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Employee ID"></asp:Label></td>
                    <td><asp:TextBox ID="text_uid" runat="server" Font-Size="X-Large" autocomplete="on"></asp:TextBox> </td>
                       
                </tr>

                <tr>
                    <td><asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Password"></asp:Label></td>
                    <td><asp:TextBox ID="text_pwd" runat="server" Font-Size="X-Large" autocomplete="on" TextMode="Password"></asp:TextBox></td>
                    <td align="left"></td>
                    
               <td align="left" class="style4"><asp:RequiredFieldValidator runat="server" ControlToValidate="text_pwd" ErrorMessage="* Password is required." ForeColor="Red" >
                   </asp:RequiredFieldValidator></td>
                   
                  
                </tr>

                <tr>
                    <td><asp:Button ID="Button1" runat="server"  CssClass="lgnbtn"  Font-Size="X-Large" Text="Log In" OnClick="Button1_Click"/></td>
                </tr>

            </table>

        </div>

         

 
    <asp:LinkButton ID="LinkButton2"  CausesValidation="False"  Font-Size="X-Large" runat="server" OnClick="LinkButton1_Click" OnClientClick="signInResult">Forgot Password</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <%--<asp:LinkButton ID="LinkButton3"  CausesValidation="False" Font-Size="X-Large" runat="server" OnClick="LinkButton3_Click">NewUser</asp:LinkButton>--%>
           </form>
<%--   <script>
        var signInResult = await signInManager.PasswordSignInAsync(Employee ID, Password, lockoutOnFailure: 'false');
        if (signInResult.Succeeded) {
            // If the user is authenticated, proceed to authorization.
            // Authorization logic will depend on your specific requirements.

            Response.Write("Registereds Succcesfully");
        }

        // Authorization (Tracking)
        if (User.Identity.IsAuthenticated) {
            // Check if the dispatch number belongs to the logged-in user.
            bool isAuthorized = CheckIfDispatchNumberBelongsToUser(Consignment_No, User.Identity.Name);

            if (isAuthorized) {
                // Allow tracking.
                Response.Redirect("cusportal.aspx");
            }
            else {
                // Deny access because the dispatch number doesn't belong to the logged-in user.
            }
        }
        else {
            Response.Redirect("formlogin.aspx");
        }
     </script>--%>
</body>

</html>
