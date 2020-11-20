/**********************************************************************
Author: Mikesh Mistry                                                 *    
																	  *	
Description:SQL script to create the tables for the recipe database   *                            
This is the second script to run in the series of scripts             *                             
                                                                      *
Date Created: 11/20/20                                                *																	  	
***********************************************************************/

/*Use the RecipeDB this assumes the first script to create the db was runned (CreateRecipeDatabase.sql) */ 
USE RecipeDB

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
