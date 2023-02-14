/*using NUnit.Framework;*/
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Firefox;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VTACourses
{
    class SeleniumDemo
    {
        IWebDriver driver;

        /*[SetUp]*/
        public void startBrowser()
        {
            driver = new ChromeDriver("D:\\");
            driver.Manage().Window.Maximize();
        }

        /* [Test]*/
        public void Demo1()
        {
            driver.Url = "https://testing.devforum.info/";

            IWebElement element = driver.FindElement(By.XPath("//a[normalize-space()='Add/Remove Elements']"));
            element.Click();

            IWebElement button = driver.FindElement(By.XPath("//button[normalize-space()='Add Element']"));
            button.Click();

        }


        /* [TearDown]*/
        public void closeBrowser()
        {
            driver.Close();
        }
    }
}