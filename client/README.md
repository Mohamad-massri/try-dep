# Full-Stack Blog Application (React + Node + Express + MySQL)

This is a full-stack blog application that allows users to register, log in, create, edit, delete, and view blog posts. It uses **React.js** for the frontend, **Node.js + Express** for the backend, and **MySQL** as the database. Authentication is handled using **JWT (JSON Web Tokens)** stored inside **HttpOnly cookies**, and posts support file uploads via **Multer**.

---

## 🚀 Features

- User Registration & Login
- JWT Authentication & Protected Routes
- Create, Edit & Delete Posts (Only by the post owner)
- Category-based filtering
- Rich Text Blog Editor with ReactQuill
- Image Upload System for Posts
- Persistent login using LocalStorage
- Responsive and clean UI

---

## 🧠 How It Works

1. **User signs up or logs in**
   - Backend verifies credentials
   - JWT is generated and stored in a cookie
2. **User can now access protected features**
   - Creating, editing, and deleting their posts
3. **Frontend communicates with backend**
   - Using `axios` & `withCredentials: true`
4. **MySQL stores all user and post data**
5. **Uploaded images**
   - Saved to `/frontend/public/upload`

---

## 🛠️ Technologies Used

| Layer          | Tech                         |
| -------------- | ---------------------------- |
| Frontend       | React.js, Axios, Context API |
| Backend        | Node.js, Express.js          |
| Database       | MySQL                        |
| Authentication | JWT + Cookies                |
| File Handling  | Multer                       |
| Editor         | React-Quill                  |

---

## 🏗️ Project Architecture

React (Frontend)
│
Axios HTTP Requests
│
Express API + JWT Auth (Backend)
│
MySQL Database

---

## 📋 Setup Instructions

### 1️⃣ Clone the repository

```sh
git clone <your-repo-url>
cd project-folder
Setup backend                                            cd backend
npm install
npm start           Edit database credentials in db.js if needed.                                       database tables                                        CREATE DATABASE blog;

CREATE TABLE users (
 id INT AUTO_INCREMENT PRIMARY KEY,
 username VARCHAR(255),
 email VARCHAR(255),
 password VARCHAR(255),
 img VARCHAR(255)
);

CREATE TABLE posts (
 id INT AUTO_INCREMENT PRIMARY KEY,
 title VARCHAR(255),
 `desc` TEXT,
 img VARCHAR(255),
 cat VARCHAR(255),
 date VARCHAR(255),
 uid INT,
 FOREIGN KEY (uid) REFERENCES users(id)
);
Setup frontend                                        cd frontend
npm install
Add Axios defaults in main.jsx: import axios from "axios";
axios.defaults.baseURL = "http://localhost:8800/api";
axios.defaults.withCredentials = true;
in the end run the app by:           npm start
```

Mohamad Massri
github: https://github.com/Mohamad-massri/Project_phase2.git

![alt text](<WhatsApp Image 2025-12-31 at 8.27.21 PM (1).jpeg>) ![alt text](<WhatsApp Image 2025-12-31 at 8.27.21 PM (2).jpeg>) ![alt text](<WhatsApp Image 2025-12-31 at 8.27.21 PM.jpeg>) ![alt text](<WhatsApp Image 2025-12-31 at 8.27.18 PM.jpeg>) ![alt text](<WhatsApp Image 2025-12-31 at 8.27.19 PM (1).jpeg>) ![alt text](<WhatsApp Image 2025-12-31 at 8.27.19 PM (2).jpeg>) ![alt text](<WhatsApp Image 2025-12-31 at 8.27.19 PM.jpeg>) ![alt text](<WhatsApp Image 2025-12-31 at 8.27.20 PM (1).jpeg>) ![alt text](<WhatsApp Image 2025-12-31 at 8.27.20 PM.jpeg>)
