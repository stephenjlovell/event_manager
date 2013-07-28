## Event Manager

This is a simple ruby program for generating basic thank-you letters to attendees of a conference.

The program reads in a CSV file of conference participants.  For each participant, the program looks up their members of Congress via the [sunlight-congress](https://github.com/steveklabnik/sunlight-congress) gem and creates an HTML thank-you note that is saved to the output folder.

This exercise is based on [this tutorial](http://tutorials.jumpstartlab.com/projects/eventmanager.html#iteration-4:-form-letters) from JumpStart Labs.