<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DB_CW_SEM2.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LS Corp Project Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        :root {
            --primary-color: #2A5C82;
            --secondary-color: #5BA4E6;
            --accent-color: #FF6B6B;
        }

        .hero-section {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 5rem 0;
            clip-path: polygon(0 0, 100% 0, 100% 90%, 0 100%);
        }

        .feature-card {
            transition: transform 0.3s ease;
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

            .feature-card:hover {
                transform: translateY(-10px);
            }

        .workflow-step {
            padding: 2rem;
            border: 2px solid var(--primary-color);
            border-radius: 15px;
            position: relative;
        }

        .mock-chart {
            background: #f8f9fa;
            border-radius: 15px;
            padding: 2rem;
            height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .screenshot-placeholder {
            background: #e9ecef;
            height: 300px;
            border-radius: 15px;
        }

        .benefit-card {
            border-left: 4px solid var(--secondary-color);
            transition: all 0.3s ease;
        }

        @media (max-width: 768px) {
            .hero-section {
                padding: 3rem 0;
            }
        }
    </style>
</head>
<body>
    <!-- Hero Section -->
    <section class="hero-section text-center">
        <div class="container">
            <h1 class="display-4 fw-bold mb-4">LS Corporation Project Management</h1>
            <p class="lead mb-4">Centralized solution for collaborative project tracking</p>
            <div class="d-flex gap-3 justify-content-center">
                <a href="#features" class="btn btn-light btn-lg px-4">Explore Features</a>
                <a href="UserManual.aspx" class="btn btn-outline-light btn-lg px-4">User Manual</a>
                <a href="User.aspx" class="btn btn-outline-light btn-lg px-4">User</a>
            </div>
        </div>
    </section>

    <!-- Key Features -->
    <section class="py-5" id="features">
        <div class="container">
            <h2 class="text-center mb-5 fw-bold">System Modules</h2>
            <div class="row g-4">
                <!-- User Management -->
                <div class="col-md-4">
                    <div class="feature-card card h-100 p-4">
                        <i class="fas fa-users fa-3x text-primary mb-3"></i>
                        <h3>User Management</h3>
                        <p>Manage team members with different roles and permissions including developers, designers, and project managers</p>
                    </div>
                </div>

                <!-- Project Management -->
                <div class="col-md-4">
                    <div class="feature-card card h-100 p-4">
                        <i class="fas fa-project-diagram fa-3x text-primary mb-3"></i>
                        <h3>Project Management</h3>
                        <p>Create and manage projects with detailed timelines, status tracking, and team assignments</p>
                    </div>
                </div>

                <!-- Task Management -->
                <div class="col-md-4">
                    <div class="feature-card card h-100 p-4">
                        <i class="fas fa-tasks fa-3x text-primary mb-3"></i>
                        <h3>Task Management</h3>
                        <p>Create, assign, and track tasks with deadlines, priorities, and progress status updates</p>
                    </div>
                </div>

                <!-- Subtask Management -->
                <div class="col-md-4">
                    <div class="feature-card card h-100 p-4">
                        <i class="fas fa-list-ul fa-3x text-primary mb-3"></i>
                        <h3>Subtask Management</h3>
                        <p>Break down tasks into manageable subtasks with individual tracking and completion status</p>
                    </div>
                </div>

                <!-- Milestone Management -->
                <div class="col-md-4">
                    <div class="feature-card card h-100 p-4">
                        <i class="fas fa-flag-checkered fa-3x text-primary mb-3"></i>
                        <h3>Milestone Tracking</h3>
                        <p>Define and monitor key project milestones with deadline alerts and completion tracking</p>
                    </div>
                </div>

                <!-- User Project Module -->
                <div class="col-md-4">
                    <div class="feature-card card h-100 p-4">
                        <i class="fas fa-user-friends fa-3x text-primary mb-3"></i>
                        <h3>User Project Overview</h3>
                        <p>View complete user profiles with all associated projects and historical contributions</p>
                    </div>
                </div>

                <!-- Project Milestone Module -->
                <div class="col-md-4">
                    <div class="feature-card card h-100 p-4">
                        <i class="fas fa-map-marked fa-3x text-primary mb-3"></i>
                        <h3>Project Milestone Map</h3>
                        <p>Detailed project timelines with all milestones, dependencies, and completion progress</p>
                    </div>
                </div>

                <!-- Top Performers Module -->
                <div class="col-md-4">
                    <div class="feature-card card h-100 p-4">
                        <i class="fas fa-trophy fa-3x text-primary mb-3"></i>
                        <h3>Top Performers</h3>
                        <p>Identify top contributors through task completion metrics and performance analytics</p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- System Workflow -->
    <section class="bg-light py-5">
        <div class="container">
            <h2 class="text-center mb-5 fw-bold">System Architecture</h2>
            <div class="row g-4 text-center">

                <!-- User -->
                <div class="col-md-3 workflow-step">
                    <i class="fas fa-user fa-2x mb-3"></i>
                    <h4>Users</h4>
                </div>

                <!-- Project -->
                <div class="col-md-3 workflow-step">
                    <i class="fas fa-project-diagram fa-2x mb-3"></i>
                    <h4>Projects</h4>
                </div>

                <!-- Task -->
                <div class="col-md-3 workflow-step">
                    <i class="fas fa-tasks fa-2x mb-3"></i>
                    <h4>Tasks</h4>
                </div>

                <!-- Subtask -->
                <div class="col-md-3 workflow-step">
                    <i class="fas fa-list-ol fa-2x mb-3"></i>
                    <h4>Subtasks</h4>
                </div>

                <!-- Milestone -->
                <div class="col-md-3 workflow-step">
                    <i class="fas fa-flag-checkered fa-2x mb-3"></i>
                    <h4>Milestones</h4>
                </div>

            </div>
        </div>
    </section>

    <!-- Visual Analytics -->
    <section class="py-5">
        <div class="container">
            <h2 class="text-center mb-5 fw-bold">Project Insights</h2>
            <div class="row g-4">
                <div class="col-md-6">
                    <div class="mock-chart">
                        <canvas id="taskStatusChart"></canvas>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mock-chart">
                        <canvas id="projectTimeline"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- Footer -->
    <footer class="bg-dark text-light py-4">
        <div class="container text-center">
            <p>&copy; 2023 LS Corporation. Demonstration version.</p>

        </div>
    </footer>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Task Status Chart (Static Data)
        new Chart(document.getElementById('taskStatusChart'), {
            type: 'doughnut',
            data: {
                labels: ['Completed', 'In Progress', 'Pending'],
                datasets: [{
                    data: [45, 30, 25],
                    backgroundColor: ['#2A5C82', '#5BA4E6', '#FF6B6B']
                }]
            }
        });

        // Project Timeline Chart
        new Chart(document.getElementById('projectTimeline'), {
            type: 'bar',
            data: {
                labels: ['Phase 1', 'Phase 2', 'Phase 3'],
                datasets: [{
                    label: 'Progress',
                    data: [80, 65, 90],
                    backgroundColor: '#2A5C82'
                }]
            }
        });
    </script>
</body>
</html>
