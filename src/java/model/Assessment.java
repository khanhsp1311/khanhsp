/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author rinsnow
 */
public class Assessment {
    int id,syllabusID;
    String category, type;
    int part;
    String weight,completionCriteria,clo ,duration, questionType;
    String noQuestion;
    String knowledgeAndSkill, gradingGuide, Note;
    int isActive;
    
    
    private Syllabus syllabusID2;
    
    

    public Assessment() {
    }

    public Assessment(int id, int syllabusID, String category, String type, int part, String weight, String completionCriteria, String clo, String duration, String questionType, String noQuestion, String knowledgeAndSkill, String gradingGuide, String Note, int isActive) {
        this.id = id;
        this.syllabusID = syllabusID;
        this.category = category;
        this.type = type;
        this.part = part;
        this.weight = weight;
        this.completionCriteria = completionCriteria;
        this.clo = clo;
        this.duration = duration;
        this.questionType = questionType;
        this.noQuestion = noQuestion;
        this.knowledgeAndSkill = knowledgeAndSkill;
        this.gradingGuide = gradingGuide;
        this.Note = Note;
        this.isActive = isActive;
        
    }


    public Assessment(int syllabusID, String category, String type, int part, String weight, String completionCriteria, String clo, String duration, String questionType, String noQuestion, String knowledgeAndSkill, String gradingGuide, String Note, int isActive) {
       
        this.syllabusID = syllabusID;
        this.category = category;
        this.type = type;
        this.part = part;
        this.weight = weight;
        this.completionCriteria = completionCriteria;
        this.clo = clo;
        this.duration = duration;
        this.questionType = questionType;
        this.noQuestion = noQuestion;
        this.knowledgeAndSkill = knowledgeAndSkill;
        this.gradingGuide = gradingGuide;
        this.Note = Note;
        this.isActive = isActive;
    
    }
    
    
 

  
    public String getClo() {
        return clo;
    }

    public void setClo(String clo) {
        this.clo = clo;
    }

    public int getSyllabusID() {
        return syllabusID;
    }

    public void setSyllabusID(int syllabusID) {
        this.syllabusID = syllabusID;
    }

   
    public Syllabus getSyllabusID2() {
        return syllabusID2;
    }

    public void setSyllabusID2(Syllabus syllabusID2) {
        this.syllabusID2 = syllabusID2;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id ) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getPart() {
        return part;
    }

    public void setPart(int part) {
        this.part = part;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getCompletionCriteria() {
        return completionCriteria;
    }

    public void setCompletionCriteria(String completionCriteria) {
        this.completionCriteria = completionCriteria;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getQuestionType() {
        return questionType;
    }

    public void setQuestionType(String questionType) {
        this.questionType = questionType;
    }

    public String getNoQuestion() {
        return noQuestion;
    }

    public void setNoQuestion(String noQuestion) {
        this.noQuestion = noQuestion;
    }

    public String getKnowledgeAndSkill() {
        return knowledgeAndSkill;
    }

    public void setKnowledgeAndSkill(String knowledgeAndSkill) {
        this.knowledgeAndSkill = knowledgeAndSkill;
    }

    public String getGradingGuide() {
        return gradingGuide;
    }

    public void setGradingGuide(String gradingGuide) {
        this.gradingGuide = gradingGuide;
    }

    public String getNote() {
        return Note;
    }

    public void setNote(String Note) {
        this.Note = Note;
    }

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    @Override
    public String toString() {
        return "Assessment{" + "id=" + id + ", syllabusID=" + syllabusID + ", category=" + category + ", type=" + type + ", part=" + part + ", weight=" + weight + ", completionCriteria=" + completionCriteria + ", duration=" + duration + ", questionType=" + questionType + ", noQuestion=" + noQuestion + ", knowledgeAndSkill=" + knowledgeAndSkill + ", gradingGuide=" + gradingGuide + ", Note=" + Note + ", isActive=" + isActive + ", clo=" + clo + ", syllabusID2=" + syllabusID2 + '}';
    }

 
    
}
