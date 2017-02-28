
#### Common Http status codes

* 200 OK: The request has succeeded.
* 300 Multiple Choices: The requested source has different choices and cannot be resolved into one. The user can select a link to go to.
* 301 Moved Permanently: The page was moved to a new URL.
* 302 Found: Temporarily moved to a new URL.
* 304 Not Modified: The requested page has not been modified since last request. 
* 307 Temporary Redirect: Temporarily moved to a new URL.
* 400 Bad Request: The request cannot be fulfilled due to bad syntax.
* 401 Unauthorized: The server is refusing to respond to a legal request.
* 403 Forbidden: Similar to 401.
* 404 Not Found: The requested page cannot be found but may be available in the future.
* 500 Internal server error: Generic response when the server cannot provide a response.
* 501 Not Implemented: The server either cannot recognize the request method or is unable to fulfill the request.
* 503 Service Unavailable: Server is either unavailable or down.
* 550 Permission Denied: The client doesn't have a permission to perform the requested action.

#### GET vs POST

* The two methods for a request- response between a client and a server have some differences. GET requests can be cached and remain in the browser history as opposed to POST. GET requests have length restrictions as well as data type restrictions. POST requests have no data length or type restrictions. GET is less secure compared to POST because data sent is part of the URL. GET is avoided when transfering sensitive information like passwords. 
GET requests are idempotent. POST requests are not, meaning that they are not cached and the server is recontacted each time the page is displayed. That makes POST requests suitable for anything that causes changes like placing an order or writing to the database. GET requests are more suitable for simple queries that don't affect anything on the server.

#### What is a cookie
 * A small piece of data sent from a web site and stored on the user's computer by the user's browser while the user is browsing. They are used to store arbitrary pieces of information.
 * Authentication cookies are used to inform the web server if the user is logged in or not.
 * Tracking cookies are used to store browsing history and are potential privacy concern.
 * Session cookies exist while the user navigates the site and are deleted when the browser is closed.
 * Persistent cookie. During its lifespan(set by its creators) it will send information for the user to the web site it belongs to.
 * Third party cookie. Often used by advertisers in an effort to sell their products. Opens up the potential for tracking users browsing history.
 * Zombie cookie. Automatically recreates after being deleted. Accomplished by storing the cookie in multiple locations.