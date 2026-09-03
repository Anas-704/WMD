import React from "react";

// 1. STATIC DATA
const products = [
  { id: 1, name: "Coffee Mug", price: 12.99 },
  { id: 2, name: "Notebook", price: 5.5 },
  { id: 3, name: "Desk Lamp", price: 24.0 },
];

const users = [
  { id: 1, name: "Mohammad Anas", email: "anas@mhhsce.com" },
  { id: 2, name: "Danish", email: "danish@mhssce.com" },
];

// 2. COMPONENTS
function ProductItem({ product }) {
  return (
    <li>
      {product.name} — ${product.price.toFixed(2)}
    </li>
  );
}

function ProductList({ products }) {
  return (
    <div>
      <h2>Products</h2>
      <ul>
        {products.map((p) => (
          <ProductItem key={p.id} product={p} />
        ))}
      </ul>
    </div>
  );
}

function UserItem({ user }) {
  return (
    <li>
      {user.name} ({user.email})
    </li>
  );
}

function UserList({ users }) {
  return (
    <div>
      <h2>Users</h2>
      <ul>
        {users.map((u) => (
          <UserItem key={u.id} user={u} />
        ))}
      </ul>
    </div>
  );
}

// 3. APP
export default function App() {
  return (
    <div>
      <h1>My Simple React App</h1>
      <ProductList products={products} />
      <UserList users={users} />
    </div>
  );
}




