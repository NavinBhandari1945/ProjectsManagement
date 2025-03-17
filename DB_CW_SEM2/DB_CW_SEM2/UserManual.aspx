<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManual.aspx.cs" Inherits="DB_CW_SEM2.UserManual" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Manual</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <style>
        :root {
            --primary-color: #2A5C82;
            --secondary-color: #5BA4E6;
            --accent-color: #FF6B6B;
        }

        .manual-section {
            padding: 3rem 0;
            border-bottom: 2px solid #eee;
            animation: fadeIn 1s ease-in;
        }

        .step-card {
            background: white;
            border-radius: 15px;
            padding: 2rem;
            margin: 1rem 0;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

            .step-card:hover {
                transform: translateY(-5px);
            }

        .step-number {
            width: 40px;
            height: 40px;
            background: var(--primary-color);
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1rem;
        }

        .sql-query {
            background: #f8f9fa;
            padding: 1rem;
            border-radius: 8px;
            font-family: monospace;
            position: relative;
        }

        .copy-icon {
            position: absolute;
            right: 10px;
            top: 10px;
            cursor: pointer;
            color: var(--primary-color);
        }

        .screenshot-placeholder {
            background: #e9ecef;
            height: 300px;
            border-radius: 15px;
            margin: 1rem 0;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #666;
        }

        .nav-sidebar {
            position: sticky;
            top: 20px;
            background: white;
            padding: 1rem;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .filter-instruction {
            border: 1px solid #dee2e6;
            transition: all 0.3s ease;
        }

            .filter-instruction:hover {
                transform: translateX(5px);
                box-shadow: 2px 2px 8px rgba(0,0,0,0.1);
            }
    </style>
</head>
<body data-bs-spy="scroll" data-bs-target="#nav-sidebar">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark" style="background: linear-gradient(135deg, var(--primary-color), var(--secondary-color))">
        <div class="container">
            <a class="navbar-brand" href="#"><i class="fas fa-book-open"></i>User Manual</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="Home.aspx"><i class="fas fa-home"></i>Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#getting-started"><i class="fas fa-play-circle"></i>Getting Started</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="row">
            <!-- Sidebar Navigation -->
            <div class="col-md-3">
                <div id="nav-sidebar" class="nav-sidebar">
                    <nav class="nav flex-column">
                        <a class="nav-link" href="#getting-started">Getting Started</a>
                        <a class="nav-link" href="#simple-forms">Simple Forms Guide</a>
                        <a class="nav-link" href="#complex-forms">Complex Forms Guide</a>
                        <a class="nav-link" href="#workflow">System Workflow</a>
                        <a class="nav-link" href="#support">Support</a>
                    </nav>
                </div>
            </div>

            <!-- Main Content -->
            <div class="col-md-9">

                <!-- Getting Started -->
                <section id="getting-started" class="manual-section">
                    <h2 class="mb-4"><i class="fas fa-play-circle"></i>Getting Started</h2>
                    <div class="step-card">
                        <div class="step-number">1</div>
                        <h4>System Access</h4>
                        <p>Navigate to the system using the home page provided button links.</p>

                        <div class="">System access Example</div>
                        <img src="https://uploads-us-west-2.insided.com/figma-en/attachment/db830b47502d01b1178c2b0192dcdb7d80cc1430.png" alt="System Workflow" class="img-fluid">

                    </div>
                </section>

                <!-- Simple Forms Guide -->
                <section id="simple-forms" class="manual-section">
                    <h2 class="mb-4"><i class="fas fa-table"></i>Simple Forms Guide</h2>
                    <div class="step-card">
                        <div class="step-number">1</div>
                        <h4>User Management</h4>
                        <p>Create/Edit/Delete users,projects,tasks etc with appropriate data.</p>
                        <div class="">User Form Example</div>
                        <img src="https://techbrij.com/img/915/insert-update-delete-new-page.png" alt="System Workflow" class="img-fluid">

                        <div class="mt-3">
                            <h5>CRUD Operations:</h5>
                            <ul>
                                <li><i class="fas fa-plus-circle text-success"></i>Add: Click "New" button</li>
                                <li><i class="fas fa-edit text-primary"></i>Edit: Click row edit text button.</li>
                                <li><i class="fas fa-trash-alt text-danger"></i>Delete: Click row delete text button.</li>
                            </ul>
                        </div>
                    </div>
                </section>


                <!-- Complex Forms Guide -->
                <section id="complex-forms" class="manual-section">
                    <h2 class="mb-4"><i class="fas fa-chart-network"></i>Complex Forms Guide</h2>
                    <div class="step-card">
                        <div class="step-number">1</div>
                        <h4>User Project Analysis</h4>
                        <div class="sql-query">
                            <i class="fas fa-copy copy-icon"></i>
                            SELECT u.UserID, u.Name, p.ProjectName<br>
                            FROM Users u<br>
                            JOIN UserProjects up ON u.UserID = up.UserID<br>
                            JOIN Projects p ON up.ProjectID = p.ProjectID
                        </div>

                        <!-- Dropdown Filter Explanation -->
                        <div class="filter-instruction mt-4 p-3 bg-light rounded">
                            <div class="d-flex align-items-center gap-3">
                                <i class="fas fa-caret-square-down fa-2x text-primary"></i>
                                <div>
                                    <h5 class="mb-2">Filter Data Using Dropdown</h5>
                                    <p class="mb-0">
                                        Use the dropdown lists to select specific users. 
                        The form will automatically filter results based on your selection.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="mt-4">
                            <h5 class="mb-3">Filter Interface Example</h5>
                            <img src="https://ucsbcarpentry.github.io/2020-01-31-UCSB-SQL/fig/sql-filter.svg"
                                alt="Filter Interface"
                                class="img-fluid border rounded p-2">
                        </div>
                    </div>
                </section>

                <!-- System Workflow -->
                <section id="workflow" class="manual-section">
                    <h2 class="mb-4"><i class="fas fa-project-diagram"></i>System Workflow</h2>
                    <div class="step-card">
                        <img src="https://www.weareunleashed.com/wp-content/uploads/2022/01/Workflow-Management-System-Features-1.png" alt="System Workflow" class="img-fluid">
                        <p class="mt-3">Flow: Home->User Manual->Home->User->Project,Task,Subtask,Milestone,UserProject,ProjectMilestone,UserProjectTask</p>
                    </div>
                </section>

                <!-- Support -->
                <section id="support" class="manual-section">
                    <h2 class="mb-4"><i class="fas fa-life-ring"></i>Technical Support</h2>
                    <div class="step-card">
                        <h4><i class="fas fa-envelope"></i>Contact Information</h4>
                        <ul>
                            <li>Email: support@lscorp.com</li>
                            <li>Phone: +1 (555) 123-4567</li>
                        </ul>
                    </div>
                </section>
            </div>
        </div>
    </div>

        <!-- Footer -->
    <footer class="bg-dark text-light py-4">
        <div class="container text-center">
            <p>&copy; 2023 LS Corporation. Demonstration version.</p>

        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
