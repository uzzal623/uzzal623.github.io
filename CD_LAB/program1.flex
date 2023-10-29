%{

	#include <stdio.h>
%}

let [a-zA-Z]
digit [0-9]

%%

{let}({let}|{digit})*  {printf("Token ID \n");}

{dig}+ {printf("Token IntList \n");}
while|if|else {printf("%s keywords in c\n",yytext);}



%%

int main(){
printf("Enter the string \n");
yylex();
}
int yywrap(){}

