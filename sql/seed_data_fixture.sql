INSERT INTO public."User"
("name", email, "password", "role", "createdAt", "updatedAt")
VALUES('Dave Lampton', 'dave@example.com', 'j19w3kq8', 'SUPERADMIN'::"UserRole", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."User"
("name", email, "password", "role", "createdAt", "updatedAt")
VALUES('John Doe', 'jdoe@example.com', 'f94qj74a', 'USER'::"UserRole", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."User"
("name", email, "password", "role", "createdAt", "updatedAt")
VALUES('Jane Smith', 'jsmith@example.com', '7bvzw9nc', 'USER'::"UserRole", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('wikipedia.org', 95.3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('politifact.com', 92.6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('nytimes.com', 88.7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

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
("assertionId", side, "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(1, true, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed elementum tempus egestas sed sed risus pretium quam vulputate.', 2, 1, 89.4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(1, false, 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictum fusce ut placerat orci nulla pellentesque dignissim enim.', 3, 2, 28.4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(1, true, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed elementum tempus egestas sed sed risus pretium quam vulputate.', 2, 1, 56.7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(2, false, 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictum fusce ut placerat orci nulla pellentesque dignissim enim.', 3, 2, 21.2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(2, true, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed elementum tempus egestas sed sed risus pretium quam vulputate.', 2, 1, 84.3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(2, false, 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictum fusce ut placerat orci nulla pellentesque dignissim enim.', 3, 2, 66.0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(3, true, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed elementum tempus egestas sed sed risus pretium quam vulputate.', 2, 1, 49.3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(3, false, 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictum fusce ut placerat orci nulla pellentesque dignissim enim.', 3, 2, 64.7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", side, "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(3, true, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed elementum tempus egestas sed sed risus pretium quam vulputate.', 2, 1, 91.8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

