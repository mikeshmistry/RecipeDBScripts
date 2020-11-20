/**********************************************************
SQL script to check to see if the recipe database exists. *                            
This is the first script to run in the series of scripts  */                              
/**********************************************************/


IF DB_ID('RecipeDB') IS NULL
BEGIN
  /* create the database */
  CREATE DATABASE RecipeDB
END
ELSE

/* The database exist */
BEGIN
    PRINT 'Recipe Database Exists'
END
