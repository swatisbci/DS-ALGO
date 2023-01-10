package com.pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.stepDefinations.BaseClass;
import com.utils.Loggerload;
import com.utils.Utils;

public class StackPage extends BaseClass {
	public StackPage(WebDriver webDriver) {

		PageFactory.initElements(webDriver, this);
	}
	
	@FindBy(xpath ="//h5[text()='Stack']/..//a[text()='Get Started']")
	WebElement getStartedBtn;
	
	@FindBy(xpath ="//a[text()='Operations in Stack']")
	WebElement OperationsInStackLink;
	
	@FindBy(xpath ="//form/div/div/div/textarea")
	WebElement textEditor;
	
	@FindBy(xpath ="//button[text()='Run']")
	WebElement runBtn;
	
	
	
	
	public void clickGetStarted() {
		Loggerload.info("Click on stack "+ getStartedBtn.getText()+ " button");
		Utils.webClick(getStartedBtn);
	}
	
	public void clickoperationInStackLink() {
		Loggerload.info("Click on stack "+ getStartedBtn.getText()+ " button");
		Utils.webClick(OperationsInStackLink);
	}

	
	

}
