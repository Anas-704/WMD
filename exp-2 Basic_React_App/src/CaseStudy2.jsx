import React from "react";

// 1. STATIC DATA
const movies = [
  { id: 1, title: "Inception", year: 2010, rating: 9.0 },
  { id: 2, title: "Interstellar", year: 2014, rating: 8.8 },
  { id: 3, title: "Avengers: Endgame", year: 2019, rating: 8.4 },
];

const reviewers = [
  { id: 1, name: "Mohammad Anas", reviewsWritten: 15 },
  { id: 2, name: "Danish", reviewsWritten: 10 },
];

// 2. COMPONENTS

function MovieItem({ movie }) {
  return (
    <li>
      {movie.title} ({movie.year}) - Rating: {movie.rating}
    </li>
  );
}

function MovieList({ movies }) {
  const sortedMovies = [...movies].sort((a, b) => b.rating - a.rating);

  return (
    <div>
      <h2>Movies</h2>
      <ul>
        {sortedMovies.map((movie) => (
          <MovieItem key={movie.id} movie={movie} />
        ))}
      </ul>
    </div>
  );
}

function ReviewerItem({ reviewer }) {
  return (
    <li>
      {reviewer.name} - Reviews Written: {reviewer.reviewsWritten}
    </li>
  );
}

function ReviewerList({ reviewers }) {
  return (
    <div>
      <h2>Reviewers</h2>
      <ul>
        {reviewers.map((reviewer) => (
          <ReviewerItem
            key={reviewer.id}
            reviewer={reviewer}
          />
        ))}
      </ul>
    </div>
  );
}

// 3. APP

export default function App() {
  return (
    <div>
      <h1>Movie & Reviewer Directory</h1>

      <MovieList movies={movies} />

      <ReviewerList reviewers={reviewers} />
    </div>
  );
}