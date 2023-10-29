%{

	#include <stdio.h>
%}

let [a-zA-Z]
dig [0-9]

%%

{let}({let}|{dig})*  {printf("Token ID \n");}
{dig}+ {printf("Token IntList \n");}

%%

int main(){
printf("Enter the string \n");
yylex();
}
int yywrap(){}

