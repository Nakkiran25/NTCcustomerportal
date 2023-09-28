<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdown.aspx.cs" Inherits="NTCcustomerportal.dropdown" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Dropdown</title>
    <style>
       
        .grid-container 
        {
            display: flex;
        }
       
    </style>
   

</head>
<body> <form id="form1" runat="server" class="form-inline">
   
   <div class="grid-container">
    <table style="width: 50%; height: 86px;">
        
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Status1:"></asp:Label>
                 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataTextField="Status1" DataValueField="Status1" AppendDataBoundItems="true" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
                    <asp:ListItem Value="0">--Select Status--</asp:ListItem>
                </asp:DropDownList>
            </td>
           <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Status2 :"></asp:Label>
            
            
                <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="true" DataTextField="Status2" 
                    DataValueField="Status3" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" >
                    <asp:ListItem Value="0">-- Select Status--</asp:ListItem>
                </asp:DropDownList>
            </td>
             <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Status3 :"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="true" DataTextField="Status3" 
                    DataValueField="Status1" >
                    <asp:ListItem Value="0">-- Select Status--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
           <td>
                &nbsp;

            </td>
        </tr>
        <tr>
         <td>
                &nbsp;
        </td>
        </tr>
    </table>
 </div>

    
</form>
</body>
</html>
