<%@ Page Language="C#" CodeBehind="~/Exercise5.aspx.cs" MasterPageFile="~/MasterSite.Master" Inherits="Module1Exercise1.Exercise4" %>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3>How would you compare plain HTML to ASP.NET WebForms</h3>
        <p>Answer:</p>
        <p>
            Hypertext Markup Language (HTML) is a basic markup language of the web. 
            HTML is used for creating static web pages. HTML needs manual coding for each element, making it good for simple, static sites. 
            Furthermore, HTML does not handle server-side processing or dynamic content on its own. 

            On the other hand, ASP.NET WebForms functions as a framework designed for constructing web applications. 
            It simplifies aspects of web development by offering an advanced level of abstraction compared to HTML. 
            ASP.NET WebForms provides functionalities like server-side controls, state management, an event driven 
            programming model and data binding enabling the creation of applications. 
 
            In essence while HTML focuses on generating web pages ASP.NET WebForms serves as a framework tailored for web applications. 
            It offers abstraction levels. Incorporates features such as server-side controls and event driven programming to facilitate 
            the development of complex applications rapidly. 
        </p>
    </div>
    <div>
        <h3>The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples.</h3>
        <p>Answer:</p>
        <p>
            In web development, both C# (typically used in ASP.NET) and JavaScript are commonly used languages, 
            but they serve different purposes and are executed in different environments.  

            Code-behind (C#) is typically used for server-side operations, where data processing or access to 
            server resources is required. This includes tasks such as retrieving data from a database, performing calculations 
            based on server-side data, or handling authentication and authorization. For instance, when dealing with form submissions, 
            server-side logic handles tasks like validating inputs, preventing SQL injection attacks, and ensuring data integrity. 

            JavaScript is key for client-side interactivity and dynamic user interfaces, handling tasks like real-time 
            form validation, updating UI based on user actions, and performing asynchronous operations like AJAX requests. 
            It also optimizes performance by processing tasks on the client-side, reducing server load. This includes sorting data, 
            lazy-loading content, and implementing interactive components, resulting in a smoother user experience, especially for 
            tasks not reliant on server interaction. 

            In conclusion, the decision of where to implement logic depends on factors such as data requirements, 
            interactivity needs, and performance considerations. While server-side logic in the code-behind (C#) ensures 
            security, data integrity, and access to server resources, JavaScript empowers dynamic client-side interactions, 
            real-time feedback, and performance optimization. 
        </p>
    </div>
    <div>
        <h3>Explain what post backs are.</h3>
        <p>Answer:</p>
        <p>
            PostBack is the process of submitting an ASP.NET page to the server for further processing. 
            PostBack in ASP.NET involves users interacting with a webpage, which triggers data submission to the server for 
            processing. The server then handles this data, executing appropriate code and generating a response, which is sent 
            back to the user's browser. The browser updates the webpage, accordingly, reflecting any changes made by the server, 
            thus completing the PostBack cycle. 

            PostBack is a key mechanism that enables the creation of interactive and dynamic web applications. 
            It is any request in a page that is not the first request. PostBacks allows the server to respond to the user's action, 
            execute server-side code, and potentially update the content of the page based on the added information or user input. 

            PostBacks can be triggered in several ways within an ASP.NET application. A PostBack is a response to a user action. 
            When a user interacts with controls on the web page, such as clicking a button, a PostBack is usually triggered. 
            This allows the server to respond to the user's action and process any data submitted by the user. Moreover, a PostBack 
            can configured to automatically trigger a PostBack when their value changes, known as the AutoPostBack control. 
            AutoPostBack enables real-time interaction with the server without the need for the user to explicitly submit the form. 
            Lastly, Ajax enables partial page updates without full PostBack. S
            pecific page parts can dynamically update in response to user actions without reloading the entire page.
        </p>
</div>
</asp:Content>
