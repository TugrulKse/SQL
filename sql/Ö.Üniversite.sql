use odevler;
-- University (Üniversite) tablosu
CREATE TABLE University (
  university_id INT PRIMARY KEY,
  university_name VARCHAR(50)
);

-- Faculty (Fakülte) tablosu
CREATE TABLE Faculty (
  faculty_id INT PRIMARY KEY,
  faculty_name VARCHAR(50),
  university_id INT,
  FOREIGN KEY (university_id) REFERENCES University(university_id)
);

-- Department (Bölüm) tablosu
CREATE TABLE Department (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50),
  faculty_id INT,
  FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);

-- Class (Sınıf) tablosu
CREATE TABLE Class (
  class_id INT PRIMARY KEY,
  class_name VARCHAR(50),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- University (Üniversite) tablosuna veri ekleme
INSERT INTO University (university_id, university_name) VALUES
  (1, 'Örnek Üniversite');

-- Faculty (Fakülte) tablosuna veri ekleme
INSERT INTO Faculty (faculty_id, faculty_name, university_id) VALUES
  (1, 'Mühendislik Fakültesi', 1);

-- Department (Bölüm) tablosuna veri ekleme
INSERT INTO Department (department_id, department_name, faculty_id) VALUES
  (1, 'Bilgisayar Mühendisliği', 1);

-- Class (Sınıf) tablosuna veri ekleme
INSERT INTO Class (class_id, class_name, department_id) VALUES
  (1, 'Sinif 201', 1);
