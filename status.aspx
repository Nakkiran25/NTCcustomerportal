<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="status.aspx.cs" Inherits="NTCcustomerportal.status" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      
        <div>
              <table style="width: 100%;">
            <tr>
                 <td class="style1">  
                <asp:Label ID="Label1" runat="server" Text="Status1:"></asp:Label>  
            </td>  
                <td> <asp:DropDownList ID="DropDownList1" runat="server"  Font-Size="X-Large" AutoPostBack="True"   
                    DataTextField="Status1" DataValueField="Status1" AppendDataBoundItems="true"  > 
                    <asp:ListItem value="value" selected="True">  Please Select </asp:ListItem></asp:DropDownList></td>
                <td class="style1">  
                <asp:Label ID="Label2" runat="server" Text="Status2:"></asp:Label>  
            </td>
                <td><asp:DropDownList ID="DropDownList2" runat="server"  Font-Size="X-Large" AppendDataBoundItems="true"  AutoPostBack="True"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem value="value" selected="True">  Please Select </asp:ListItem></asp:DropDownList></td>

                <td class="style1">  
                <asp:Label ID="Label3" runat="server" Text="Status3:"></asp:Label>  
            </td>  
                <td><asp:DropDownList ID="DropDownList3" runat="server" Font-Size="X-Large" AppendDataBoundItems="true"  AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem value="value" selected="True">  Please Select </asp:ListItem></asp:DropDownList></td>
            </tr>
            <tr>
                <td></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                
        </table>

            
    
        </div>
    </form>
</body>
</html>
