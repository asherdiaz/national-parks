package com.techelevator.npgeek;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcSurveyDao implements SurveyDao {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcSurveyDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Survey> getSurveys() {
		List<Survey> allSurveys = new ArrayList<>();
		String sqlSelectAllSurveys = "SELECT * FROM survey_result";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllSurveys);
		while(results.next()) {
			Survey survey = new Survey();
			survey.setActivityLevel(results.getString("activitylevel"));
			survey.setEmailAddress(results.getString("emailaddress"));
			survey.setParkCode(results.getString("parkcode"));
			survey.setSurveyId(results.getLong("surveyid"));
			survey.setState(results.getString("state"));
			allSurveys.add(survey);
		}
		return allSurveys;
	}
	
	@Override
	public void save(Survey survey) {
		Long surveyId = getNextId();
		String sqlInsertSurvey = "INSERT INTO survey_result(surveyid, parkcode, emailaddress, state, activitylevel) VALUES (?,?,?,?,?)";
		jdbcTemplate.update(sqlInsertSurvey, surveyId, survey.getParkCode(), survey.getEmailAddress(), survey.getState(), survey.getActivityLevel());
		survey.setSurveyId(surveyId);
	}
	
	private Long getNextId(){
		String sqlSelectNextId = "SELECT NEXTVAL('seq_surveyid')";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectNextId);
		Long surveyId = null;
		if(results.next()) {
			surveyId = results.getLong(1);
		}
		else {
			throw new RuntimeException("Something strange happened, unable to select next forum post id from sequence");
		}
		return surveyId;
	}
	
	@Override
	public List<Vote> getVotingResults() {
		List<Vote> allVotes = new ArrayList<>();
		String sqlSelectVotingResults = "SELECT parkcode, count(*) FROM survey_result GROUP BY parkcode ORDER BY count DESC";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectVotingResults);
		while(results.next()) {
			Vote vote = new Vote();
			vote.setParkCode(results.getString("parkcode"));
			vote.setVoteCount(results.getString("count"));
			allVotes.add(vote);
		}
		return allVotes;
	}

}
