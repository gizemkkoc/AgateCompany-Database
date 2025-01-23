### AgateCompany Database

AgateCompany is a backend system designed to manage various aspects of an advertising agency's operations, including clients, staff, campaigns, and advertisements. The database plays a crucial role in storing and managing all relevant data efficiently. It has been designed with PostgreSQL to ensure scalability, performance, and data integrity.

### Features

- **Client Management**: Store, retrieve, update, and delete client information.
- **Staff Management**: Maintain staff details, including roles and grades.
- **Campaign Management**: Track advertising campaigns, assign managers, and monitor progress.
- **Advertisement Handling**: Manage advertisements associated with campaigns.

### Database Schema

The database schema consists of several tables, relationships, and constraints to ensure data consistency and optimal performance.

#### Tables

- **clients**
  - Stores client details such as name, contact information, and company details.
- **staff**
  - Manages staff details including roles, grades, and assignments.
- **staff_grades**
  - Defines staff grades and their respective attributes.
- **campaigns**
  - Tracks advertising campaigns, their timelines, and progress.
- **campaign_managers**
  - Associates campaigns with their assigned managers.
- **advertisements**
  - Manages advertisements under specific campaigns.

### Technologies Used

- **Database**: PostgreSQL
- **ORM**: GORM (for seamless interaction with the database)
- **Migrations**: Goose for managing database migrations

### Deployment

1. Clone the repository.
2. Set up the PostgreSQL database.
3. Run the migration scripts using Goose.
4. Configure `.env` file with database credentials.
5. Start the backend server.

### Future Improvements

- Implement indexing for better query performance.
- Introduce caching for frequently accessed data.
- Enhance security with role-based access control.



