# EmpowerMART: Multi-Vendor E-Commerce Platform

EmpowerMART is a multi-vendor e-commerce platform developed to empower rural women entrepreneurs by providing them with a digital marketplace, skill-building resources, and mentorship opportunities. Built with **Laravel 9** (backend) and **React.js** (frontend), the platform bridges the gap between rural businesses and global markets.

---

## Features

### User Roles
- **Admin**: Manage categories, tags, and products.
- **Customer**: Browse, shop, and place orders.

### Core Functionality
1. **Admin Dashboard**:
   - **Category Management**: Create, edit, and delete categories.
   - **Tag Management**: Manage product tags.
   - **Product Management**: Upload, edit, and delete products with detailed specifications.
2. **Customer Dashboard**:
   - **Shopping Features**: Sort and filter products by price or popularity.
   - **Order Management**: Add to cart, checkout, and view order history.
3. **Frontend Pages**:
   - **Home Page**: Highlights featured categories and products.
   - **Shop Page**: Provides product filtering and sorting.
   - **Categories Page**: Organized view of products by category.

---

## Tech Stack

- **Backend**: Laravel 9
- **Frontend**: React.js
- **Database**: MySQL
- **Styling**: Bootstrap
- **Version Control**: GitHub

---

## Installation and Setup

### Prerequisites
- PHP >= 8.1
- Composer
- Node.js and npm
- MySQL

### Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/AYESHA19SIDDIQA/EmpowerMART-WebProject.git
   cd EmpowerMART-WebProject
   ```

2. **Install Backend Dependencies**:
   ```bash
   composer install
   ```

3. **Install Frontend Dependencies**:
   ```bash
   npm install
   ```

4. **Set Up Environment Variables**:
   - Copy `.env.example` to `.env`:
     ```bash
     cp .env.example .env
     ```
   - Configure database credentials in `.env`.

5. **Generate Application Key**:
   ```bash
   php artisan key:generate
   ```

6. **Run Migrations and Seed Data**:
   ```bash
   php artisan migrate:fresh --seed
   ```

7. **Link Storage**:
   ```bash
   php artisan storage:link
   ```

8. **Start the Development Server**:
   ```bash
   php artisan serve
   ```

---

## Project Structure

- **Backend**: Laravel 9 handles server-side logic, including authentication and database interactions.
- **Frontend**: React.js delivers dynamic and interactive user interfaces.
- **Database**: MySQL stores user, product, and order data.

---

## Contribution Guidelines

1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add feature-name"
   ```
4. Push to the branch:
   ```bash
   git push origin feature-name
   ```
5. Submit a pull request.

---

## License

This project is licensed under the MIT License.

---
![image](https://github.com/user-attachments/assets/f12c87a8-041f-458b-9f10-4f7ba5748b3b)

![image](https://github.com/user-attachments/assets/e1247a96-95d6-42dd-ad9a-45528f26254a)

# PRODUCTS:

![image](https://github.com/user-attachments/assets/df10d155-b5dc-4caf-bcec-9f32a30526f3)

![image](https://github.com/user-attachments/assets/d4d8b097-4512-48c1-8d48-9b8fdfcbe2d4)

![image](https://github.com/user-attachments/assets/5a2a9636-bc63-40e6-880d-8b7b29dbb842)

# ADMIN DASHBOARD:

![image](https://github.com/user-attachments/assets/266cfaaa-0675-44bb-ae80-8b0f0acc8937)

![image](https://github.com/user-attachments/assets/b75ab39b-e3a4-4912-9657-a6a26a619cf8)

![image](https://github.com/user-attachments/assets/71b224d7-ac80-4fe3-a100-67e6d863a17e)

# SHOPPING CART 

![image](https://github.com/user-attachments/assets/c7f4eaa3-34c7-46e1-a882-9779e11020d4)

# CHECKOUT

![image](https://github.com/user-attachments/assets/7feae432-0da5-4876-8bc2-817614a4abc2)
