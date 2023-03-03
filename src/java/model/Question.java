/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;


public class Question {
//    question_id int(11) NOT NULL,
//  sesid int(11) NOT NULL,
//  name varchar(100) NOT NULL,
//  detail longtext NOT NULL,
    private int id;
    private int syllabusID;
    private int sessionNo;
    private String name;
    private String detail;

    public Question() {
    }

    public Question(int id, int syllabusID, int sessionNo, String name, String detail) {
        this.id = id;
        this.syllabusID = syllabusID;
        this.sessionNo = sessionNo;
        this.name = name;
        this.detail = detail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSyllabusID() {
        return syllabusID;
    }

    public void setSyllabusID(int syllabusID) {
        this.syllabusID = syllabusID;
    }

    public int getSessionNo() {
        return sessionNo;
    }

    public void setSessionNo(int sessionNo) {
        this.sessionNo = sessionNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "Question{" + "id=" + id + ", syllabusID=" + syllabusID + ", sessionNo=" + sessionNo + ", name=" + name + ", detail=" + detail + '}';
    }
    
    
}
