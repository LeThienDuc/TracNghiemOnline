package Models;

import java.sql.Date;

public class Model_Exam {
	public String ExamID;
	public String ExamName;
	public String SubID;
	public String TimeText;
	public Date TimeOpen;
	public Date TimeClose;
	public int SumQuestion;
	public String getExamID() {
		return ExamID;
	}
	public void setExamID(String examID) {
		ExamID = examID;
	}
	public String getExamName() {
		return ExamName;
	}
	public void setExamName(String examName) {
		ExamName = examName;
	}
	public String getSubID() {
		return SubID;
	}
	public void setSubID(String subID) {
		SubID = subID;
	}
	public String getTimeText() {
		return TimeText;
	}
	public void setTimeText(String timeText) {
		TimeText = timeText;
	}
	public Date getTimeOpen() {
		return TimeOpen;
	}
	public void setTimeOpen(Date timeOpen) {
		TimeOpen = timeOpen;
	}
	public Date getTimeClose() {
		return TimeClose;
	}
	public void setTimeClose(Date timeClose) {
		TimeClose = timeClose;
	}
	public int getSumQuestion() {
		return SumQuestion;
	}
	public void setSumQuestion(int sumQuestion) {
		SumQuestion = sumQuestion;
	}
}
