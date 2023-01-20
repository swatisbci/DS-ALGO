package com.pageObjects;

import java.time.Duration;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.utils.Helper;
import com.utils.Utils;

public class Ds_IntroPage {
	public Ds_IntroPage(WebDriver webDriver) {
		PageFactory.initElements(webDriver, this);
	}
	
	@FindBy(xpath ="//h5[text()='Data Structures-Introduction']/..//a[text()='Get Started']")
	WebElement getStartedLinkDs;
	
	@FindBy(xpath ="//a[text()='Time Complexity']")
	WebElement timeComplexityLink;
	
	@FindBy(xpath ="//a[text()='Try here>>>']")
	WebElement tryHereLink;
	
	@FindBy (xpath ="//pre[@class=' CodeMirror-line ']")
	WebElement editor;
	
	@FindBy(xpath ="//button[text()='Run']")
	WebElement runBtn;
	
	public void clickGetStartedDs() throws InterruptedException {
		Thread.sleep(1000);
		Utils.webClick(getStartedLinkDs);
	}
	
	public void clickTimeComplexityLink() throws InterruptedException {
		Thread.sleep(1000);
		Utils.webClick(timeComplexityLink);
	}
	
	public void clickTryHereLink() throws InterruptedException {
		Thread.sleep(1000);
		Utils.webClick(tryHereLink);
	}
	
	public void enterCode(String PythonCode) throws InterruptedException {
		Thread.sleep(2000);
		WebDriverWait driverWait = new WebDriverWait(Helper.getDriver(), Duration.ofSeconds(60));
				driverWait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//pre[@class=' CodeMirror-line ']")));
		Utils.webClick(editor);
		Utils.webSendKeys(editor, PythonCode);
	}
	
	public void clickRunBtn() throws InterruptedException {
		Thread.sleep(1000);
		Utils.webClick(runBtn);
	}

}
