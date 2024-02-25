<%@ Page Language="C#" CodeBehind="~/Exercise4.aspx.cs" MasterPageFile="~/MasterSite.Master" AutoEventWireup="true" Inherits="Module1Exercise1.Exercise4" %>

<%-- Exercise 4: Using validation controls --%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mapua MCL WebDev Club Registration</h1>
    <form runat="server">
        <asp:Label runat="server" Text="Full Name"></asp:Label><br />
        <asp:TextBox runat="server" ID="fullName" />
        <%-- Todo 4.1 Add a validator that makes sure the text box is not empty --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=RequiredFieldValidator%20Control --%>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="fullName" runat="server" ErrorMessage="Fulll Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />


        <asp:Label runat="server" Text="Age"></asp:Label><br />
        <asp:TextBox runat="server" ID="age" TextMode="Number" />
        <%-- Todo 4.2 Add a range validator that checks if the value inputted in the text box is within 0 and 100--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=RangeValidator%20Control--%>

        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="age" runat="server" ErrorMessage="Age must be within the range of 0 to 100" MinimumValue="0" MaximumValue="100" Type="Integer" ForeColor="Red"></asp:RangeValidator>
        <br />

        <asp:Label runat="server" Text="Email"></asp:Label><br />
        <asp:TextBox runat="server" ID="email" />
        <%-- Todo 4.3 Add a regex validator that checks if the inputted value is a valid email. The regex for validating email is /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/ --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=The%20RegularExpressionValidator%20allows --%>
        
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="email"  runat="server" ErrorMessage="Not a Valid Email" ValidationExpression="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />

        <asp:Label runat="server" Text="Confirm Email"></asp:Label><br />
        <asp:TextBox runat="server" ID="confirmEmail" />
        <%-- Todo 4.4 Add a compare validator that checks if the confirmation email is the same as the original email --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=CompareValidator%20Control --%>

        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="confirmEmail" ControlToCompare="email" Operator="Equal" Type="String" runat="server" ErrorMessage="Emails do not match" ForeColor="Red"></asp:CompareValidator>
        <br />
        <br />


        <asp:Label ID="result" runat="server" />
        <%-- Todo 4.5 When the user submits the form and all validations pass, display all the inputted texts in the "result" label --%>
        <br />
        <br />
        <asp:Button ID="submitBtn" runat="server" Text="Submit" onclick="submitBtn_Click" UseSubmitBehavior="true" />


    </form>
</asp:Content>

