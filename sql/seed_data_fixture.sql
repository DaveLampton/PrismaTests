INSERT INTO public."User"
("name", email, "passwordHash", "role", "createdAt", "updatedAt")
VALUES('Dave Lampton', 'dave@example.com', 'j19w3kq8f94qj74a7bvzw9nc', 'SUPERADMIN'::"UserRole", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."User"
("name", email, "passwordHash", "role", "createdAt", "updatedAt")
VALUES('John Doe', 'jdoe@example.com', 'f94qj74a7bvzw9ncj19w3kq8', 'USER'::"UserRole", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."User"
("name", email, "passwordHash", "role", "createdAt", "updatedAt")
VALUES('Jane Smith', 'jsmith@example.com', '7bvzw9ncj19w3kq8f94qj74a', 'USER'::"UserRole", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."User"
("name", email, "passwordHash", "role", "createdAt", "updatedAt")
VALUES('Ted Jones', 'tjones@example.com', '3hgzcvn8d2ew3ju8f9t5454k', 'USER'::"UserRole", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('wikipedia.org', 95.3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('politifact.com', 92.6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('nytimes.com', 88.7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('huffpost.com', 91.1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('breitbart.com', 26.8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('nypost.com', 19.3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('berkeley.edu', 95.7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."_SourceToUser"
("A", "B")
VALUES(1, 2);

INSERT INTO public."_SourceToUser"
("A", "B")
VALUES(1, 3);

INSERT INTO public."_SourceToUser"
("A", "B")
VALUES(2, 2);

INSERT INTO public."_SourceToUser"
("A", "B")
VALUES(2, 4);

INSERT INTO public."_SourceToUser"
("A", "B")
VALUES(3, 3);

INSERT INTO public."_SourceToUser"
("A", "B")
VALUES(3, 4);

INSERT INTO public."Assertion"
("text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES('Joe Biden is the President-elect of the USA.', 2, 1, 98.2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Assertion"
("text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES('Kamala Harris is the Vice President-elect of the USA.', 3, 2, 97.8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Assertion"
("text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES('The prevalent color of the sky is blue.', 3, 2, 86.9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "userId", "sourceId", score, "text", "createdAt", "updatedAt")
VALUES(1, true, 2, 1, 89.4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed elementum tempus egestas sed sed risus pretium quam vulputate.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "userId", "sourceId", score, "text", "createdAt", "updatedAt")
VALUES(1, false, 3, 2, 28.4, 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictum fusce ut placerat orci nulla pellentesque dignissim enim.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "userId", "sourceId", score, "text", "createdAt", "updatedAt")
VALUES(1, true, 2, 1, 56.7, 'Fusce fringilla egestas tincidunt. Aenean rutrum, tortor non pretium malesuada, nunc lacus ultricies nisl, quis commodo odio sem quis est. Nunc quis dui vitae quam.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "userId", "sourceId", score, "text", "createdAt", "updatedAt")
VALUES(1, false, 3, 2, 21.2, 'Nunc suscipit, felis quis pulvinar sodales, mauris ipsum viverra dolor, ac mollis magna lacus dapibus lacus. Vestibulum semper viverra magna id porta. Duis mattis ultrices.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "userId", "sourceId", score, "text", "createdAt", "updatedAt")
VALUES(1, true, 2, 1, 84.3, 'Vestibulum aliquam at est quis placerat. Curabitur sit amet leo a elit blandit vulputate. Sed lobortis mauris at turpis convallis, et eleifend magna molestie donec.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "userId", "sourceId", score, "text", "createdAt", "updatedAt")
VALUES(2, false, 3, 2, 66.0, 'Aliquam non tempor quam. Nullam convallis sapien a sagittis lacinia. Cras magna neque, laoreet quis dolor eget, dapibus rutrum odio. Vivamus sed cursus ligula ut.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "userId", "sourceId", score, "text", "createdAt", "updatedAt")
VALUES(2, true, 2, 1, 49.3, 'Sed tempus consequat nulla, et egestas quam auctor in. Aliquam ullamcorper sem in orci euismod bibendum. Ut quis cursus dui, ultricies dictum sapien praesent non.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "userId", "sourceId", score, "text", "createdAt", "updatedAt")
VALUES(3, false, 3, 2, 64.7, 'Sed porta, risus quis finibus pretium, sapien justo euismod orci, sed dignissim neque urna ut orci. Aenean eu consequat neque. Interdum et malesuada ac fames.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "userId", "sourceId", score, "text", "createdAt", "updatedAt")
VALUES(3, true, 2, 1, 91.8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed elementum tempus egestas sed sed risus pretium quam vulputate.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
