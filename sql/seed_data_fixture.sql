INSERT INTO public."User"
("name", email, "password", "role", "createdAt", "updatedAt")
VALUES('Dave Lampton', 'dave@example.com', 'galaga', 'SUPERADMIN'::"UserRole", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."User"
("name", email, "password", "role", "createdAt", "updatedAt")
VALUES('John Doe', 'jdoe@example.com', 'f94qj74a', 'USER'::"UserRole", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."User"
("name", email, "password", "role", "createdAt", "updatedAt")
VALUES('Jane Smith', 'jsmith@example.com', '7bvzw9nc', 'USER'::"UserRole", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('wikipedia.org', 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('politifact.com', 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Source"
("domain", score, "createdAt", "updatedAt")
VALUES('nytimes.com', 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Assertion"
("text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES('Joe Biden is the President-elect of the USA.', 2, 1, 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Assertion"
("text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES('Kamala Harris is the Vice President-elect of the USA.', 3, 2, 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Assertion"
("text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES('The prevalent color of the sky is blue.', 3, 2, 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed elementum tempus egestas sed sed risus pretium quam vulputate.', 2, 1, 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(2, 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictum fusce ut placerat orci nulla pellentesque dignissim enim.', 3, 2, 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed elementum tempus egestas sed sed risus pretium quam vulputate.', 2, 1, 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(3, 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictum fusce ut placerat orci nulla pellentesque dignissim enim.', 3, 2, 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed elementum tempus egestas sed sed risus pretium quam vulputate.', 2, 1, 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO public."Argument"
("assertionId", "text", "userId", "sourceId", score, "createdAt", "updatedAt")
VALUES(3, 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictum fusce ut placerat orci nulla pellentesque dignissim enim.', 3, 2, 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
