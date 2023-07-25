-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "contacts" (
    "contact_id" int,   
    "first_name" varchar(20),
    "last_name" varchar(20),
    "email" varchar(50),
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category_id" varchar(20),  
    "category" varchar(20), 
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(20),  
    "subcategory" varchar(20),   
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int,   
    "contact_id" int,  
    "company_name" varchar(100),
    "description" varchar(100),
    "goal" float,
    "pledged" float,
    "outcome" varchar(20),
    "backers_count" int,
    "country" varchar(10),
    "currency" varchar(10),
    "launched_date" date,
    "end_date" date,
    "category_id" varchar(10),
    "subcategory_id" varchar(10),
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

SELECT * FROM public.campaign
ORDER BY cf_id ASC 

SELECT * FROM public.category
ORDER BY category_id ASC 

SELECT * FROM public.contacts
ORDER BY contact_id ASC 

SELECT * FROM public.subcategory
ORDER BY subcategory_id ASC 
