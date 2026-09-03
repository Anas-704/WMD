import React from "react";

// 1. STATIC DATA
const menuItems = [
  { id: 1, dishName: "Paneer Butter Masala", price: 250, category: "Main Course" },
  { id: 2, dishName: "Veg Biryani", price: 180, category: "Main Course" },
  { id: 3, dishName: "Chocolate Ice Cream", price: 120, category: "Dessert" },
];

const staff = [
  { id: 1, name: "Mohammad Anas", role: "Manager" },
  { id: 2, name: "Danish", role: "Chef" },
  { id: 3, name: "Rahul", role: "Waiter" },
];

// 2. COMPONENTS

function MenuItem({ item }) {
  return (
    <li>
      {item.dishName} - ₹{item.price} - {item.category}
    </li>
  );
}

function MenuList({ menuItems }) {
  return (
    <div>
      <h2>Restaurant Menu</h2>
      <ul>
        {menuItems.map((item) => (
          <MenuItem key={item.id} item={item} />
        ))}
      </ul>
    </div>
  );
}

function StaffItem({ employee }) {
  return (
    <li>
      {employee.name} - {employee.role}
    </li>
  );
}

function StaffList({ staff }) {
  return (
    <div>
      <h2>Restaurant Staff</h2>
      <ul>
        {staff.map((employee) => (
          <StaffItem key={employee.id} employee={employee} />
        ))}
      </ul>
    </div>
  );
}

// 3. APP

export default function App() {
  return (
    <div>
      <h1>Restaurant Menu & Staff</h1>

      <MenuList menuItems={menuItems} />

      <StaffList staff={staff} />
    </div>
  );
}