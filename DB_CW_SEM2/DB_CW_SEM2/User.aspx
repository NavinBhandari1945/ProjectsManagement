<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="DB_CW_SEM2.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Management</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Navbar Styles */
        .navbar {
            background: linear-gradient(135deg, #667eea, #764ba2);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand, .navbar-nav .nav-link {
            color: #fff !important;
            font-weight: 500;
            transition: all 0.3s ease;
        }

            .navbar-nav .nav-link:hover {
                color: #ffdd57 !important;
                transform: translateY(-2px);
            }

        /* GridView Styles */
        #GridView1 {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-in-out;
        }

            #GridView1 th, #GridView1 td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            #GridView1 th {
                background: linear-gradient(135deg, #667eea, #764ba2);
                color: #fff;
                font-weight: 600;
            }

            #GridView1 tr:hover {
                background-color: #f1f1f1;
                transition: background-color 0.3s ease;
            }

        /* FormView Styles */
        #FormView1 {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px auto; /* Center the form */
            animation: slideIn 0.5s ease-in-out;
            width: 50%; /* Set an appropriate width */
            max-width: 600px; /* Limit maximum width */
        }

            #FormView1 input[type="text"], #FormView1 input[type="email"] {
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                border: 1px solid #ddd;
                border-radius: 4px;
                transition: border-color 0.3s ease;
            }

                #FormView1 input[type="text"]:focus, #FormView1 input[type="email"]:focus {
                    border-color: #667eea;
                    outline: none;
                }

            #FormView1 .LinkButton {
                background: linear-gradient(135deg, #667eea, #764ba2);
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                transition: all 0.3s ease;
            }

                #FormView1 .LinkButton:hover {
                    transform: translateY(-2px);
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                }

        /* Center New Button */
        .new-button-container {
            text-align: center;
            margin: 20px 0;
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @keyframes slideIn {
            from {
                transform: translateY(20px);
                opacity: 0;
            }

            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>


</head>
<body>

    <!-- Bootstrap 5 Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">User Management</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Home.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/UserManual.aspx">UserManual</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/User.aspx">User</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Project.aspx">Project</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Task.aspx">Task</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Milestone.aspx">Milestone</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/SubTask.aspx">SubTask</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/UserProject.aspx">UserProject</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/ProjectMilestone.aspx">ProjectMilestone</a></li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/UserTask.aspx">UserTask</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="U_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="U_ID" HeaderText="UserID" ReadOnly="True" SortExpression="U_ID" />
                    <asp:BoundField DataField="U_NAME" HeaderText="UserName" SortExpression="U_NAME" />
                    <asp:BoundField DataField="U_CONTACT" HeaderText="UserContact" SortExpression="U_CONTACT" />
                    <asp:BoundField DataField="U_EMAIL" HeaderText="UserEmail" SortExpression="U_EMAIL" />
                    <asp:BoundField DataField="U_ROLE" HeaderText="UserRole" SortExpression="U_ROLE" />
                </Columns>
            </asp:GridView>

            <!-- Centered New Button -->
            <div class="new-button-container">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="U_ID" DataSourceID="SqlDataSource2">
                    <EditItemTemplate>
                        U_ID:
                        <asp:Label ID="U_IDLabel1" runat="server" Text='<%# Eval("U_ID") %>' />
                        <br />
                        U_NAME:
                        <asp:TextBox ID="U_NAMETextBox" runat="server" Text='<%# Bind("U_NAME") %>' />
                        <br />
                        U_CONTACT:
                        <asp:TextBox ID="U_CONTACTTextBox" runat="server" Text='<%# Bind("U_CONTACT") %>' />
                        <br />
                        U_EMAIL:
                        <asp:TextBox ID="U_EMAILTextBox" runat="server" Text='<%# Bind("U_EMAIL") %>' />
                        <br />
                        U_ROLE:
                        <asp:TextBox ID="U_ROLETextBox" runat="server" Text='<%# Bind("U_ROLE") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="LinkButton" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="LinkButton" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        UserID:
                        <asp:TextBox ID="U_IDTextBox" runat="server" Text='<%# Bind("U_ID") %>' />
                        <br />
                        UserName:
                        <asp:TextBox ID="U_NAMETextBox" runat="server" Text='<%# Bind("U_NAME") %>' />
                        <br />
                        UserContact:
                        <asp:TextBox ID="U_CONTACTTextBox" runat="server" Text='<%# Bind("U_CONTACT") %>' />
                        <br />
                        UserEmail:
                        <asp:TextBox ID="U_EMAILTextBox" runat="server" Text='<%# Bind("U_EMAIL") %>' />
                        <br />
                        UserRole:
                        <asp:TextBox ID="U_ROLETextBox" runat="server" Text='<%# Bind("U_ROLE") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="LinkButton" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="LinkButton" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="LinkButton" />
                    </ItemTemplate>
                </asp:FormView>
            </div>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;User&quot; WHERE &quot;U_ID&quot; = :U_ID" InsertCommand="INSERT INTO &quot;User&quot; (&quot;U_ID&quot;, &quot;U_NAME&quot;, &quot;U_CONTACT&quot;, &quot;U_EMAIL&quot;, &quot;U_ROLE&quot;) VALUES (:U_ID, :U_NAME, :U_CONTACT, :U_EMAIL, :U_ROLE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;User&quot;" UpdateCommand="UPDATE &quot;User&quot; SET &quot;U_NAME&quot; = :U_NAME, &quot;U_CONTACT&quot; = :U_CONTACT, &quot;U_EMAIL&quot; = :U_EMAIL, &quot;U_ROLE&quot; = :U_ROLE WHERE &quot;U_ID&quot; = :U_ID">
                <DeleteParameters>
                    <asp:Parameter Name="U_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="U_ID" Type="Decimal" />
                    <asp:Parameter Name="U_NAME" Type="String" />
                    <asp:Parameter Name="U_CONTACT" Type="String" />
                    <asp:Parameter Name="U_EMAIL" Type="String" />
                    <asp:Parameter Name="U_ROLE" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="U_NAME" Type="String" />
                    <asp:Parameter Name="U_CONTACT" Type="String" />
                    <asp:Parameter Name="U_EMAIL" Type="String" />
                    <asp:Parameter Name="U_ROLE" Type="String" />
                    <asp:Parameter Name="U_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;User&quot; WHERE &quot;U_ID&quot; = :U_ID" InsertCommand="INSERT INTO &quot;User&quot; (&quot;U_ID&quot;, &quot;U_NAME&quot;, &quot;U_CONTACT&quot;, &quot;U_EMAIL&quot;, &quot;U_ROLE&quot;) VALUES (:U_ID, :U_NAME, :U_CONTACT, :U_EMAIL, :U_ROLE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;User&quot;" UpdateCommand="UPDATE &quot;User&quot; SET &quot;U_NAME&quot; = :U_NAME, &quot;U_CONTACT&quot; = :U_CONTACT, &quot;U_EMAIL&quot; = :U_EMAIL, &quot;U_ROLE&quot; = :U_ROLE WHERE &quot;U_ID&quot; = :U_ID">
                <DeleteParameters>
                    <asp:Parameter Name="U_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="U_ID" Type="Decimal" />
                    <asp:Parameter Name="U_NAME" Type="String" />
                    <asp:Parameter Name="U_CONTACT" Type="String" />
                    <asp:Parameter Name="U_EMAIL" Type="String" />
                    <asp:Parameter Name="U_ROLE" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="U_NAME" Type="String" />
                    <asp:Parameter Name="U_CONTACT" Type="String" />
                    <asp:Parameter Name="U_EMAIL" Type="String" />
                    <asp:Parameter Name="U_ROLE" Type="String" />
                    <asp:Parameter Name="U_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
