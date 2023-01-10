package com.stepDefinations;

import org.openqa.selenium.WebDriver;
import org.testng.Assert;

import com.pageObjects.LinkedListPage;
import com.pageObjects.StackPage;
import com.utils.Helper;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class StackStepDef extends BaseClass {
	WebDriver driver = Helper.getDriver();
	

@When("user click on Get Started button in Stack section")
public void user_click_on_get_started_button_in_stack_section() {
	stackPage = new StackPage(driver);
    stackPage.clickGetStarted();
}
@Then("user should navigate to corresponding stack page with title {string}")
public void user_should_navigate_to_corresponding_stack_page_with_title(String title) {
	Assert.assertEquals(title, Helper.getDriver().getTitle());
    
}


	


}
