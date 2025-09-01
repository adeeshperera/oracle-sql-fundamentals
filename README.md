# Oracle SQL Fundamentals

Learn Oracle SQL from scratch to improve your developer skills or access Oracle databases at work. This comprehensive course teaches you the fundamentals of SQL language on Oracle database through hands-on practice and real-world examples.

## 🎯 What You'll Learn

This course covers essential Oracle SQL topics including:

- **Environment Setup**: Setting up your Oracle development environment
- **Database Fundamentals**: Basic terminology and database concepts
- **Data Retrieval**: Reading data using SELECT statements and advanced querying
- **SQL Functions**: String, number, date functions, and conditional logic
- **Data Types**: Understanding Oracle data types and conversions
- **Advanced Concepts**: Joins, set operators, and subqueries
- **Data Manipulation**: Inserting, updating, and deleting data
- **Database Design**: Creating and managing tables and schemas
- **Best Practices**: Professional SQL development techniques

## 🐳 Docker Database Setup

Simple Oracle Database Express Edition setup using Docker for consistent learning environment.

### Quick Start

1. **Start the Oracle database:**

   ```bash
   docker compose up -d
   ```

2. **Wait for database initialization** (first startup takes 2-3 minutes)

3. **Check startup progress:**

   ```bash
   docker compose logs -f oracle-db
   ```

4. **Load sample data:**
   ```bash
   # Connect and run the sample data script
   docker exec -it oracle-xe sqlplus system/oracle123@XEPDB1 @/path/to/02-Sample-Data/sample_data.sql
   ```

## 🔌 Database Connection

### DBeaver Connection Settings

- **Host**: `localhost`
- **Port**: `1521`
- **Database**: `XEPDB1`
- **Username**: `system`
- **Password**: `oracle123`

### Alternative SID Connection

- **Connection Type**: SID
- **SID**: `XE`

### SQL\*Plus Connection

```bash
docker exec -it oracle-xe sqlplus system/oracle123@XEPDB1
```

## 📖 How to Use This Repository

### For Beginners

1. Start with **02-Sample-Data** to understand the database structure
2. Progress through **03-Viewing-Data** for basic SELECT operations
3. Practice with **04-Quiz** exercises
4. Continue sequentially through numbered folders

### For Intermediate Users

- Jump to specific topics like **09-Joins** or **10-Functions**
- Use **08-Aggregate-Function-and-Grouping** for reporting queries
- Practice **11-Subqueries** for complex data retrieval

### For Advanced Users

- Focus on **12-Inserting-Updating-and-Deleting-Data** for data manipulation
- Master **13-Creating-Altering-and-Dropping-Tables** for schema design
- Combine concepts from multiple modules for real-world scenarios

## 🎯 Learning Objectives

By completing this repository, you will master:

- **Basic SQL**: SELECT, WHERE, ORDER BY, filtering techniques
- **Advanced Querying**: JOINs, subqueries, set operations
- **Data Analysis**: Aggregate functions, grouping, statistical operations
- **Data Manipulation**: INSERT, UPDATE, DELETE operations
- **Database Design**: Table creation, modification, constraints
- **Oracle-Specific Features**: Functions, data types, transaction control

## 📋 Sample Database Schema

The learning database includes:

```
📊 Company Database
├── department (9 departments)
├── employee (200 employees with manager hierarchy)
├── product (8 products across departments)
├── customer (10 customers from various states)
└── customer_order (50 orders linking customers to products)
```

## 🛠 System Requirements

- **Docker**: Latest version with Docker Compose
- **Memory**: At least 2GB RAM for Oracle XE
- **Storage**: 2GB free space for database files
- **SQL Client**: DBeaver, SQL Developer, or any Oracle-compatible client

## 📝 Default Configuration

- **System Password**: `oracle123`
- **Database Name**: `XEPDB1`
- **SID**: `XE`
- **Oracle Enterprise Manager**: http://localhost:5500/em

## 🚀 Useful Commands

```bash
# Database Management
docker compose up -d              # Start database
docker compose down               # Stop database
docker compose logs -f            # View logs
docker compose restart           # Restart database

# Database Connection
docker exec -it oracle-xe sqlplus system/oracle123@XE        # Connect via SID
docker exec -it oracle-xe sqlplus system/oracle123@XEPDB1    # Connect via PDB

# File Operations
docker cp script.sql oracle-xe:/tmp/    # Copy SQL file to container
docker exec -it oracle-xe sqlplus system/oracle123@XEPDB1 @/tmp/script.sql
```

## 📚 Additional Resources

- [Oracle SQL Documentation](https://docs.oracle.com/en/database/oracle/oracle-database/)
- [Oracle SQL Developer](https://www.oracle.com/database/sqldeveloper/)
- [DBeaver Universal Database Tool](https://dbeaver.io/)

## 🤝 Contributing

Feel free to contribute by:

- Adding more practice exercises
- Improving existing examples
- Fixing any issues in the SQL scripts
- Enhancing documentation

---

_Start your Oracle SQL journey today! 🚀_
