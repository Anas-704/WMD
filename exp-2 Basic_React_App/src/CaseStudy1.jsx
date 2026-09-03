import React from "react";

// 1. STATIC DATA
const books = [
  {
    id: 1,
    title: "Clean Code",
    author: "Robert C. Martin",
    genre: "Programming",
    available: true,
  },
  {
    id: 2,
    title: "React Basics",
    author: "John Smith",
    genre: "Technology",
    available: false,
  },
  {
    id: 3,
    title: "Java Fundamentals",
    author: "James Gosling",
    genre: "Programming",
    available: true,
  },
];

const members = [
  {
    id: 1,
    name: "Mohammad Anas",
    membershipId: "M101",
  },
  {
    id: 2,
    name: "Danish",
    membershipId: "M102",
  },
];

// 2. COMPONENTS

function BookItem({ book }) {
  return (
    <li>
      {book.title} - {book.author} - {book.genre} -{" "}
      {book.available ? "Available" : "Checked Out"}
    </li>
  );
}

function BookList({ books }) {
  return (
    <div>
      <h2>Books</h2>
      <ul>
        {books.map((book) => (
          <BookItem key={book.id} book={book} />
        ))}
      </ul>
    </div>
  );
}

function MemberItem({ member }) {
  return (
    <li>
      {member.name} ({member.membershipId})
    </li>
  );
}

function MemberList({ members }) {
  return (
    <div>
      <h2>Members</h2>
      <ul>
        {members.map((member) => (
          <MemberItem key={member.id} member={member} />
        ))}
      </ul>
    </div>
  );
}

// 3. APP

export default function App() {
  return (
    <div>
      <h1>Library Book Catalog</h1>

      <BookList books={books} />

      <MemberList members={members} />
    </div>
  );
}