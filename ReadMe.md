Project Management System - Web-based Database Application

Project Overview  
This project is a web-based application designed for managing projects, tasks, and milestones within an organization. Developed using ASP.NET with C# and Oracle SQL Developer Data Modeler, the system centralizes project management processes to improve efficiency, communication, and visibility. Users can interact with various entities such as Users, Projects, Tasks, Subtasks, and Milestones to ensure smooth project execution.

Features  
- Basic Webforms:  
  - User Details: Manage user information, including roles like developer, designer, project manager, etc.  
  - Project Details: Manage project-related information, including project names, statuses, and deadlines.  
  - Task Details: Manage tasks within a project, assigning users and resources to tasks.  
  - Subtask Details: Link subtasks to main tasks for more granular tracking of task progress.  
  - Milestone Details: Track milestones within a project with due dates for key project achievements.  

- Complex Webforms:  
  - User Project: Displays the details of all the projects a user has worked on, including the status of each project.  
  - Project Milestone: Shows all milestones for a given project, including deadlines and completion status.  
  - Top Performer: Displays the top 3 users who have completed the most tasks in a given project, excluding pending tasks.  

- Dashboard: An attractive and informative homepage that provides an overview of project statuses, task assignments, and performance metrics.  

- Task Comments: Users can comment on tasks to facilitate better communication and collaboration between team members.  

- Resource Management: Tasks may require multiple resources, and the system allows easy tracking of these resource needs.  

- Input, Update, and Delete: All forms allow users to input new data, update existing data, and delete records as necessary.  

Development Considerations  
- Database Design: The system uses Oracle SQL Developer Data Modeler to model the underlying database, ensuring relational integrity and optimal data organization.  
- ASP.NET & C#: Developed using ASP.NET for web forms and C# for backend logic to manage the flow of data between the frontend and database.  
- Version Control: Git is used for version control to manage the codebase and track progress through the development lifecycle.  
- User Experience: Focused on creating an intuitive, user-friendly interface that enhances user experience and productivity.  
- Error Handling: Robust error handling and validation are implemented to ensure smooth operations and reduce the risk of data inconsistency.  

The application aims to streamline project management by centralizing data, improving task management, and offering insights into user performance, ensuring efficient project completion.