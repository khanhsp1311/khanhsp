/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Material {
    /*
  id int NOT NULL AUTO_INCREMENT,
  material_description varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  author varchar(45) DEFAULT NULL,
  publisher varchar(45) DEFAULT NULL,
  published_date varchar(45) DEFAULT NULL,
  edition varchar(45) DEFAULT NULL,
  isbn varchar(45) DEFAULT NULL,
  is_main tinyint DEFAULT NULL,
  is_hard_copy tinyint DEFAULT NULL,
  is_online tinyint DEFAULT NULL,
  note varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  subject_code varchar(100) DEFAULT NULL,
  status tinyint DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY material_description_UNIQUE (material_description),
  KEY subject_code_id1 (subject_code),
  CONSTRAINT subject_code2 FOREIGN KEY (subject_code) REFERENCES subjects (subject_code)
*/
    private int id;
    private String material_description;
    private String author;
    private String publisher;
    private String published_date;
    private String edition;
    private String isbn;
    private int is_main;
    private int is_hard_copy;
    private int is_online;
    private String note;
    private Subject subject_code;
    private String subjectCode2;
    private int status;
    

    public Material() {
    }
    
    public Material(String material_description, String author, String publisher, String published_date, String edition, String isbn, int is_main, int is_hard_copy, int is_online, String note, String subjectCode2,int status) {
        
        this.material_description = material_description;
        this.author = author;
        this.publisher = publisher;
        this.published_date = published_date;
        this.edition = edition;
        this.isbn = isbn;
        this.is_main = is_main;
        this.is_hard_copy = is_hard_copy;
        this.is_online = is_online;
        this.note = note;
        this.subjectCode2 = subjectCode2;
        this.status = status;
    }

    
    public Material(int id, String material_description, String author, String publisher, String published_date, String edition, String isbn,int is_main, int is_hard_copy, int is_online, String note, Subject subject_code, int status) {
        this.id = id;
        this.material_description = material_description;
        this.author = author;
        this.publisher = publisher;
        this.published_date = published_date;
        this.edition = edition;
        this.isbn = isbn;
        this.is_main = is_main;
        this.is_hard_copy = is_hard_copy;
        this.is_online = is_online;
        this.note = note;
        this.subject_code = subject_code;
        this.status = status;
    }
    
    

    public Material(int id, String material_description, String author, String publisher, String published_date, String edition, String isbn, int is_main, int is_hard_copy, int is_online, String note, Subject subject_code) {
        this.id = id;
        this.material_description = material_description;
        this.author = author;
        this.publisher = publisher;
        this.published_date = published_date;
        this.edition = edition;
        this.isbn = isbn;
        this.is_main = is_main;
        this.is_hard_copy = is_hard_copy;
        this.is_online = is_online;
        this.note = note;
        this.subject_code = subject_code;
    }

    public String getSubjectCode2() {
        return subjectCode2;
    }

    public void setSubjectCode2(String subjectCode2) {
        this.subjectCode2 = subjectCode2;
    }

 
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaterial_description() {
        return material_description;
    }

    public void setMaterial_description(String material_description) {
        this.material_description = material_description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getPublished_date() {
        return published_date;
    }

    public void setPublished_date(String published_date) {
        this.published_date = published_date;
    }

    public String getEdition() {
        return edition;
    }

    public void setEdition(String edition) {
        this.edition = edition;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }



    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Subject getSubject_code() {
        return subject_code;
    }

    public void setSubject_code(Subject subject_code) {
        this.subject_code = subject_code;
    }

    public int getIs_main() {
        return is_main;
    }

    public void setIs_main(int is_main) {
        this.is_main = is_main;
    }

    public int getIs_hard_copy() {
        return is_hard_copy;
    }

    public void setIs_hard_copy(int is_hard_copy) {
        this.is_hard_copy = is_hard_copy;
    }

    public int getIs_online() {
        return is_online;
    }

    public void setIs_online(int is_online) {
        this.is_online = is_online;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Material{" + "id=" + id + ", material_description=" + material_description + ", author=" + author + ", publisher=" + publisher + ", published_date=" + published_date + ", edition=" + edition + ", isbn=" + isbn + ", is_main=" + is_main + ", is_hard_copy=" + is_hard_copy + ", is_online=" + is_online + ", note=" + note + ", subject_code=" + subject_code + ", subjectCode2=" + subjectCode2 + ", status=" + status + '}';
    }
    
    

  
    
}
