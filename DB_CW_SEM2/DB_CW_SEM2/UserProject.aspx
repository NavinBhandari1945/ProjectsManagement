<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProject.aspx.cs" Inherits="DB_CW_SEM2.UserProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Project Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            margin: 0;
            padding: 0;
            color: #333;
            overflow-x: hidden; /* Prevent horizontal scrollbar */
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

        /* DropDownList Styles */
        .dropdown-container {
            text-align: center;
            margin: 20px 0;
        }

        .styled-dropdown {
            width: 100%; /* Full width */
            max-width: 300px; /* Maximum width */
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            background-color: #fff;
            font-size: 16px;
            color: #333;
            transition: all 0.3s ease;
        }

            .styled-dropdown:focus {
                border-color: #667eea;
                outline: none;
                box-shadow: 0 0 5px rgba(102, 126, 234, 0.5);
            }

        /* GridView Styles */
        .table-responsive {
            overflow-x: auto; /* Enable horizontal scrolling if needed */
            margin: 20px 0;
        }

        #GridView1 {
            width: 100%; /* Full width */
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-in-out;
        }

            #GridView1 th, #GridView1 td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
                white-space: nowrap; /* Prevent text wrapping */
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

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <!-- Bootstrap 5 Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">User Project Management</a>
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
        <div class="dropdown-container">
            <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="U_NAME" DataValueField="U_ID" CssClass="styled-dropdown">
            </asp:DropDownList>
        </div>
        <br />
        <br />
        <div class="table-responsive">
            <!-- Wrap GridView in a responsive container -->
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="P_ID" HeaderText="ProjectID" SortExpression="P_ID" />
                    <asp:BoundField DataField="U_ID" HeaderText="User_ID" SortExpression="U_ID" />
                    <asp:TemplateField HeaderText="ProjectName">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList6" Enabled="false" runat="server" DataSourceID="SqlDataSource3" DataTextField="P_NAME" DataValueField="P_ID" SelectedValue='<%# Bind("P_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText=" ProjectStartDate">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList7" Enabled="false" runat="server" DataSourceID="SqlDataSource3" DataTextField="P_STARTDATE" DataValueField="P_ID" SelectedValue='<%# Bind("P_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ProjectDueDate">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList8" Enabled="false" runat="server" DataSourceID="SqlDataSource3" DataTextField="P_DUEDATE" DataValueField="P_ID" SelectedValue='<%# Bind("P_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ProjectStatus">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList9" Enabled="false" runat="server" DataSourceID="SqlDataSource3" DataTextField="P_STATUS" DataValueField="P_ID" SelectedValue='<%# Bind("P_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserName">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList10" Enabled="false" runat="server" DataSourceID="SqlDataSource2" DataTextField="U_NAME" DataValueField="U_ID" SelectedValue='<%# Bind("U_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserContact">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList11" Enabled="false" runat="server" DataSourceID="SqlDataSource2" DataTextField="U_CONTACT" DataValueField="U_ID" SelectedValue='<%# Bind("U_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserRole">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList12" Enabled="false" runat="server" DataSourceID="SqlDataSource2" DataTextField="U_ROLE" DataValueField="U_ID" SelectedValue='<%# Bind("U_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserEmail">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList13" Enabled="false" runat="server" DataSourceID="SqlDataSource2" DataTextField="U_EMAIL" DataValueField="U_ID" SelectedValue='<%# Bind("U_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;P_ID&quot;, &quot;U_ID&quot; FROM &quot;TASKBRIDGE&quot; WHERE (&quot;U_ID&quot; = :U_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList14" Name="U_ID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;User&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot;"></asp:SqlDataSource>
    </form>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
