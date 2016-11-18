package com.techelevator.npgeek;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SurveyController {
	
	private SurveyDao surveyDao;
	
	@Autowired
	public SurveyController(SurveyDao surveyDao) {
		this.surveyDao = surveyDao;
	}
	
	@RequestMapping(path="/surveyInput", method=RequestMethod.GET)
	public String showSurveyInput() {
		return "surveyInput";
	}
	
	@RequestMapping(path="/surveyInput", method=RequestMethod.POST)
	public String processSurveySubmission(Survey survey) {
		surveyDao.save(survey);
		return "redirect:/surveyResults";
	}
	
	@RequestMapping(path="/surveyResults", method=RequestMethod.GET)
	public String showSurveyResults(ModelMap model) {
		List<Vote> votes = surveyDao.getVotingResults();
		model.addAttribute("votes", votes);
		return "surveyResults";
	}

}
