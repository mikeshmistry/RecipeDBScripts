/**********************************************************************
Author: Mikesh Mistry												  *	
                                                                      *
Decription: SQL script to comine creating database and adding tables  * 
            for the Recipe Database.                                  *
																	  *				
Date Created: 11/20/20                                                *
***********************************************************************/

/* create the database if it does not exist */
IF DB_ID('RecipeDB') IS NULL

BEGIN
   PRINT 'Creating Recipe Database'
  CREATE DATABASE RecipeDB
  PRINT 'Recipe Database Created'
END

/* The database exist */
ELSE
BEGIN
    PRINT 'Recipe Database Exists'
END

/*Use the RecipeDB this assumes the first script to create the db was runned (CreateRecipeDatabase.sql) */ 
GO 
USE RecipeDB;

/*Create the Recipe Table if it does not exist in RecipeDB */

IF OBJECT_ID('RecipeDB.dbo.Recipe') IS NULL

   BEGIN
     PRINT 'Creating Table Recipe'
   
   CREATE TABLE dbo.Recipe
	(
	recipe_id INT NOT NULL IDENTITY(1,1),
	name VARCHAR(MAX) NOT NULL,
	description VARCHAR(MAX) NOT NULL,
	instructions VARCHAR(MAX) NOT NULL,
	PRIMARY KEY(recipe_id)
	)  
	  PRINT 'Table Recipe Created'
   END
   
   /* Recipe Table Exists */
   ELSE
   PRINT 'Recipe Table Exists'

   /*Create the Ingredients Table if it does not exist in RecipeDB */

IF OBJECT_ID('RecipeDB.dbo.Ingredients') IS NULL

   BEGIN
     PRINT 'Creating Table Ingredients'
   
   CREATE TABLE dbo.Ingredients
	(
	ingredient_id int NOT NULL IDENTITY (1, 1),
	name varchar(MAX) NOT NULL,
	description varchar(MAX) NOT NULL,
	recipe_id int FOREIGN KEY REFERENCES Recipe(recipe_id)
	) 
	
	  PRINT 'Table Ingredients Created'
   END
     /* Ingredients Table Exists */
   ELSE
   PRINT 'Ingredients Table Exists'

