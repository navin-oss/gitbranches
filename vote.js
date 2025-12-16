
/*Q1. User Profile Setup
A web app stores user details.
Declare variables for username, email, and isLoggedIn.
Assign sample values.
Print them in a single sentence using template literals.
 Industry use: User dashboards, profile pages.*/
 let username = prompt("enter user name :")


let isLoggedIn = false
let sign_up = false

function login(username, email)
{
    let choice = prompt("Login or sign up ? (type signup or login)")
    let email = prompt("Enter email :")
    let password = prompt("enter password :")
    if (choice === "signup")
    {
        sign_up = true
    }

    if (sign_up == true)
    {
        if (typeof username === "string" && 
            typeof email === "string" && 
            typeof password === "string")
        {
            confirm("Login successful...!")
            isLoggedIn = true
        }
        else
        {
            alert("try again later..!")
        }
    }
    else if (isLoggedIn == true)
    {
        alert("already logged in....!")
    }
}

login(username, email)
