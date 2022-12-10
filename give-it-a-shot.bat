@echo off
set name=%1

call jflex %name%.l

echo GENERATING PARSER...
call yacc -J %name%.y
echo COMPILING JAVA CODE...
call javac Yylex.java

echo RUNNING PARSER
java Parser
