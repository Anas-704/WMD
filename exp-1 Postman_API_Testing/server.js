const express = require("express");
const fs = require("fs");
const path = require("path");

const app = express();
const PORT = 3000;

app.use(express.json());

const dataFile = path.join(__dirname, "students.json");

function readStudents() {
  const data = fs.readFileSync(dataFile, "utf8");
  return JSON.parse(data);
}

function writeStudents(students) {
  fs.writeFileSync(dataFile, JSON.stringify(students, null, 2));
}

// Home route
app.get("/", function (req, res) {
  res.json({
    message: "Student ERP API is running",
    endpoints: {
      viewAllStudents: "GET /students",
      viewOneStudent: "GET /students/:id",
      addStudent: "POST /students",
      updateStudent: "PUT /students/:id",
      deleteStudent: "DELETE /students/:id"
    }
  });
});

// GET all students
app.get("/students", function (req, res) {
  const students = readStudents();
  res.status(200).json(students);
});

// GET one student by ID
app.get("/students/:id", function (req, res) {
  const students = readStudents();
  const id = Number(req.params.id);

  const student = students.find(function (s) {
    return s.id === id;
  });

  if (!student) {
    return res.status(404).json({
      message: "Student not found"
    });
  }

  res.status(200).json(student);
});

// POST add new student
app.post("/students", function (req, res) {
  const students = readStudents();

  const newStudent = {
    id: students.length > 0 ? students[students.length - 1].id + 1 : 1,
    name: req.body.name,
    rollNo: req.body.rollNo,
    course: req.body.course,
    email: req.body.email
  };

  if (!newStudent.name || !newStudent.rollNo || !newStudent.course || !newStudent.email) {
    return res.status(400).json({
      message: "name, rollNo, course, and email are required"
    });
  }

  students.push(newStudent);
  writeStudents(students);

  res.status(201).json({
    message: "Student created successfully",
    student: newStudent
  });
});

// PUT update student
app.put("/students/:id", function (req, res) {
  const students = readStudents();
  const id = Number(req.params.id);

  const index = students.findIndex(function (s) {
    return s.id === id;
  });

  if (index === -1) {
    return res.status(404).json({
      message: "Student not found"
    });
  }

  const updatedStudent = {
    id: id,
    name: req.body.name,
    rollNo: req.body.rollNo,
    course: req.body.course,
    email: req.body.email
  };

  if (!updatedStudent.name || !updatedStudent.rollNo || !updatedStudent.course || !updatedStudent.email) {
    return res.status(400).json({
      message: "name, rollNo, course, and email are required"
    });
  }

  students[index] = updatedStudent;
  writeStudents(students);

  res.status(200).json({
    message: "Student updated successfully",
    student: updatedStudent
  });
});

// DELETE student
app.delete("/students/:id", function (req, res) {
  const students = readStudents();
  const id = Number(req.params.id);

  const studentExists = students.some(function (s) {
    return s.id === id;
  });

  if (!studentExists) {
    return res.status(404).json({
      message: "Student not found"
    });
  }

  const remainingStudents = students.filter(function (s) {
    return s.id !== id;
  });

  writeStudents(remainingStudents);

  res.status(200).json({
    message: "Student deleted successfully",
    deletedStudentId: id
  });
});

app.listen(PORT, function () {
  console.log("Student ERP API running at http://localhost:" + PORT);
});