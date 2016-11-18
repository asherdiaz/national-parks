package com.techelevator.npgeek;

import java.util.List;

public interface SurveyDao {

	public List<Survey> getSurveys();
	public void save(Survey survey);
	public List<Vote> getVotingResults();
}
