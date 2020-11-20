/**********************************************************************
Author: Mikesh Mistry												  *	
                                                                      *
Decription: SQL script to check to see if the recipe database exists. *                            
This is the first script to run in the series of scripts.             *
																	  *				
Date Created: 11/19/20                                                *
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
