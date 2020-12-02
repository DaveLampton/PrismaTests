CREATE TYPE UserRole AS ENUM ('SUPERADMIN', 'ADMIN', 'USER');

CREATE TABLE "User" (
"id" SERIAL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "role" UserRole NOT NULL DEFAULT 'USER',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
)

CREATE TABLE "Rating" (
"id" SERIAL,
    "userId" INTEGER NOT NULL,
    "argumentId" INTEGER NOT NULL,
    "rating" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
)

CREATE TABLE "Argument" (
"id" SERIAL,
    "assertionId" INTEGER NOT NULL,
    "text" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "sourceId" INTEGER NOT NULL,
    "score" INTEGER NOT NULL DEFAULT 50,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
)

CREATE TABLE "Source" (
"id" SERIAL,
    "domain" TEXT NOT NULL,
    "score" INTEGER NOT NULL DEFAULT 50,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
)

CREATE TABLE "Representative" (
"id" SERIAL,
    "sourceId" INTEGER NOT NULL,
    "userId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
)

CREATE TABLE "Assertion" (
"id" SERIAL,
    "text" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "sourceId" INTEGER NOT NULL,
    "score" INTEGER NOT NULL DEFAULT 50,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
)

CREATE UNIQUE INDEX "User.email_unique" ON "User"("email")

CREATE UNIQUE INDEX "Rating.userId_argumentId_unique" ON "Rating"("userId", "argumentId")

CREATE UNIQUE INDEX "Source.domain_unique" ON "Source"("domain")

CREATE UNIQUE INDEX "Representative.userId_sourceId_unique" ON "Representative"("userId", "sourceId")

ALTER TABLE "Rating" ADD FOREIGN KEY("userId")REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE "Rating" ADD FOREIGN KEY("argumentId")REFERENCES "Argument"("id") ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE "Argument" ADD FOREIGN KEY("assertionId")REFERENCES "Assertion"("id") ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE "Argument" ADD FOREIGN KEY("userId")REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE "Argument" ADD FOREIGN KEY("sourceId")REFERENCES "Source"("id") ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE "Representative" ADD FOREIGN KEY("sourceId")REFERENCES "Source"("id") ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE "Representative" ADD FOREIGN KEY("userId")REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE "Assertion" ADD FOREIGN KEY("userId")REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE "Assertion" ADD FOREIGN KEY("sourceId")REFERENCES "Source"("id") ON DELETE CASCADE ON UPDATE CASCADE
