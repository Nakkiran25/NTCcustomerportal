<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="NTCcustomerportal.login" %>

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
    </style>
</head>

<body>
    <form id="form1" runat="server">
     <div>
              <table class="auto-style1">  
                  <tr>
                       <td> <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="CustomerCode" autocomplete="off"></asp:Label> </td>
                       <td> <asp:TextBox ID="txt_uid" runat="server" Font-Size="X-Large" autocomplete="off"></asp:TextBox> </td>
                  </tr>

                  <tr>
                      <td> <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="NewPassword" ></asp:Label> </td>
                      <td> <asp:TextBox ID="text_uid" runat="server" Font-Size="X-Large" TextMode="Password" ></asp:TextBox> 
                          
                   <asp:RequiredFieldValidator runat="server" ControlToValidate="text_uid" ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic">
                   </asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td><asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="ConfirmPassword" ></asp:Label></td>
                      <td><asp:TextBox ID="text_pwd" runat="server" Font-Size="X-Large" autocomplete="off" TextMode="Password"></asp:TextBox>
                           <asp:CompareValidator runat="server" ControlToCompare="text_uid" ControlToValidate="text_pwd" ErrorMessage="Password do not match." ForeColor="Red" Display="Dynamic">
                           </asp:CompareValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Credentials"
                   ValidationExpression ="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}" ControlToValidate="text_pwd" ForeColor="Red" ></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td><asp:Button ID="Button2" runat="server" Font-Size="X-Large"  Text="Save" OnClick="Button2_Click"/></td>
                  </tr>

               </table>  
     </div>
    </form>
</body>
</html>
