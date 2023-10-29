%{
#include <stdio.h>
%}

%%
int|char|float|double   { printf("Keyword: %s\n", yytext); }
[0-9]+                  { printf("Number: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*  { printf("Identifier: %s\n", yytext); }
[=+*/-]                 { printf("Operator: %s\n", yytext); }
[ \t\n]                 ;  // Ignore whitespace
.                       { printf("Error : %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

