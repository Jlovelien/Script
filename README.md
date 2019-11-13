# ScriptDrop Coding Challange

**The hardest part of the implementation?**

Being new to Elixir and Phoenix, the part that took the most time was getting the project up and running. The “stable build” I downloaded has an outdated dependency reference, so debugging the issue, finding, and fixing it all in a system I was unfamiliar with took some time. However, now that I am more familiar with the framework, it would be a minor issue that can be resolved quickly.

The hardest implementation was the login system using the guardian module. Not only was I using this framework for the first time, but I had to overcome the complexities of adding and using plugins in order to accomplish additional tasks such as querying the database to select only the orders by the user logged in.

**What would be the next tasks if I had time?**

Now that I have gained further experience with this framework, and worked through some of the challenges in its functionality, I would make some improvements to its user-friendly capabilities.  First would be an ability to auto-populate the order form with data from the database. I was only able to get a basic version working in which you need to know exactly what keystrokes to type to make it work (marking an order as delivered means changing a string to a 1 or needing to type in “pharmacy”, or “courier” when you sign up to take you to the proper screen.)  There are several attributes like this that I would like to revise to function in a more intelligent way.

I would also like to take more time to focus on the UI or UX of the app. While it wouldn’t be very difficult to go back and add CSS to make it look and flow nicely, I was primarily focused on learning the language and the framework.

**How to change the project to make it more interesting?**

The next logical steps to improve this application would be:
-Adding the reporting suite (said in the Optional features)

-Add a mapping feature. Making it easy to go from picking up to delivery without much interaction with the app.

-The end-user getting a tracking feature. Ideally setting up an ETA either using the drivers mapping feature or using a “number of stops” away tracking.

-A notification system. Emails and text notifications for the end-user and the couriers.

-Potential a courier rating system? This could be more used internally as a way of auditing them.

-Adding a user history and notes to assist the couriers

-A more advanced feature would be to be able to refill prescriptions directly within the app. This would make the process of ordering and having it delivered reduced to a single click.

	-For prescriptions that are eligible for refill without a doctor’s authorization, the user would see a button that says “Refill”

	-For prescriptions that require a doctor’s authorization, or have extended past the refill period, the user would have an option to fill in their doctor’s contact information to display a button that says “Call my Doctor”
