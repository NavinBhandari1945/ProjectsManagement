<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="DB_CW_SEM2.Task" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Task Management</title>
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

            #FormView1 input[type="text"], #FormView1 input[type="date"] {
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                border: 1px solid #ddd;
                border-radius: 4px;
                transition: border-color 0.3s ease;
            }

                #FormView1 input[type="text"]:focus, #FormView1 input[type="date"]:focus {
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
            <a class="navbar-brand" href="#">Task Management</a>
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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="T_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="T_ID" HeaderText="TaskID" ReadOnly="True" SortExpression="T_ID" />
                    <asp:BoundField DataField="T_NAME" HeaderText="TaskName" SortExpression="T_NAME" />
                    <asp:BoundField DataField="T_STARTDATE" HeaderText="TaskStartDate" SortExpression="T_STARTDATE" />
                    <asp:BoundField DataField="T_DUEDATE" HeaderText="TaskDueDate" SortExpression="T_DUEDATE" />
                    <asp:BoundField DataField="T_STATUS" HeaderText="TaskStatus" SortExpression="T_STATUS" />
                </Columns>
            </asp:GridView>

            <!-- Centered New Button -->
            <div class="new-button-container">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="T_ID" DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        T_ID:
                        <asp:Label ID="T_IDLabel1" runat="server" Text='<%# Eval("T_ID") %>' />
                        <br />
                        T_NAME:
                        <asp:TextBox ID="T_NAMETextBox" runat="server" Text='<%# Bind("T_NAME") %>' />
                        <br />
                        T_STARTDATE:
                        <asp:TextBox ID="T_STARTDATETextBox" runat="server" Text='<%# Bind("T_STARTDATE") %>' />
                        <br />
                        T_DUEDATE:
                        <asp:TextBox ID="T_DUEDATETextBox" runat="server" Text='<%# Bind("T_DUEDATE") %>' />
                        <br />
                        T_STATUS:
                        <asp:TextBox ID="T_STATUSTextBox" runat="server" Text='<%# Bind("T_STATUS") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="LinkButton" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="LinkButton" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        TaskID:
                        <asp:TextBox ID="T_IDTextBox" runat="server" Text='<%# Bind("T_ID") %>' />
                        <br />
                        TaskName:
                        <asp:TextBox ID="T_NAMETextBox" runat="server" Text='<%# Bind("T_NAME") %>' />
                        <br />
                        TaskStartDate:
                        <asp:TextBox ID="T_STARTDATETextBox" runat="server" Text='<%# Bind("T_STARTDATE") %>' />
                        <br />
                        TaskDueDate:
                        <asp:TextBox ID="T_DUEDATETextBox" runat="server" Text='<%# Bind("T_DUEDATE") %>' />
                        <br />
                        TaskStatus:
                        <asp:TextBox ID="T_STATUSTextBox" runat="server" Text='<%# Bind("T_STATUS") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="LinkButton" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="LinkButton" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="LinkButton" />
                    </ItemTemplate>
                </asp:FormView>
            </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TASK&quot; WHERE &quot;T_ID&quot; = :T_ID" InsertCommand="INSERT INTO &quot;TASK&quot; (&quot;T_ID&quot;, &quot;T_NAME&quot;, &quot;T_STARTDATE&quot;, &quot;T_DUEDATE&quot;, &quot;T_STATUS&quot;) VALUES (:T_ID, :T_NAME, :T_STARTDATE, :T_DUEDATE, :T_STATUS)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TASK&quot;" UpdateCommand="UPDATE &quot;TASK&quot; SET &quot;T_NAME&quot; = :T_NAME, &quot;T_STARTDATE&quot; = :T_STARTDATE, &quot;T_DUEDATE&quot; = :T_DUEDATE, &quot;T_STATUS&quot; = :T_STATUS WHERE &quot;T_ID&quot; = :T_ID">
                <DeleteParameters>
                    <asp:Parameter Name="T_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="T_ID" Type="Decimal" />
                    <asp:Parameter Name="T_NAME" Type="String" />
                    <asp:Parameter Name="T_STARTDATE" Type="String" />
                    <asp:Parameter Name="T_DUEDATE" Type="String" />
                    <asp:Parameter Name="T_STATUS" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="T_NAME" Type="String" />
                    <asp:Parameter Name="T_STARTDATE" Type="String" />
                    <asp:Parameter Name="T_DUEDATE" Type="String" />
                    <asp:Parameter Name="T_STATUS" Type="String" />
                    <asp:Parameter Name="T_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>




</body>
</html>
