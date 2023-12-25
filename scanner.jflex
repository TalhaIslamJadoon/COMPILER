import java_cup.runtime.*;
%%
%cup
%class Example
PLUS="+"
MINUS="-"
MUL="*"
DIV="/"
MOD="%"
LP="("
RP=")"
LCB="{"
RCB="}"
ID=[_a-zA-Z][_a-zA-Z0-9]*
NUMB=([0-9]+("."?[0-9]+)?)
TER=";"
SP=\s|\n
OR="||"
AND="&&"
NOT="!"
ASS="="
EQ={ASS}{ASS}
GT=">"
LT="<"
GTE={GT}{ASS}
LTE={LT}{ASS}
INCREMENT={PLUS}{PLUS}
DECREMENT={MINUS}{MINUS}
UNARY= {INCREMENT}|{DECREMENT}                                                                                                                       
IF="if"
ELSE="else"
ELSEIF={ELSE}" "{IF}
SWCH="switch"
CASE="case"
DTYPE="int"|"float"|"double"|"char"|"string"
COLON=":"
BREAK="break"
DEFAULT="default"
FOR="for"
WHILE="while"
DO="do"
%%

{IF} {System.out.println("<" + yytext() +", IF>");return new Symbol(sym.IF);}
{TER} {System.out.println("<" + yytext() +", TER>");return new Symbol(sym.TER);}
{ELSE} {System.out.println("<" + yytext() +", ELSE>");return new Symbol(sym.ELSE);}

{DTYPE} {System.out.println("<" + yytext() +", DTYPE>");return new Symbol(sym.DTYPE);}

{SWCH} {System.out.println("<" + yytext() +", SWCH>");return new Symbol(sym.SWCH);}
{CASE} {System.out.println("<" + yytext() +", CASE>");return new Symbol(sym.CASE);}
{COLON} {System.out.println("<" + yytext() +", COLON>");return new Symbol(sym.COLON);}
{BREAK} {System.out.println("<" + yytext() +", BREAK>");return new Symbol(sym.BREAK);}
{DEFAULT} {System.out.println("<" + yytext() +", DEFAULT>");return new Symbol(sym.DEFAULT);}
{WHILE} {System.out.println("<" + yytext() +", WHILE>");return new Symbol(sym.WHILE);}
{DO} {System.out.println("<" + yytext() +", DO>");return new Symbol(sym.DO);}

{PLUS} {System.out.println("<" + yytext() +", PLUS>");return new Symbol(sym.PLUS);}
{MINUS} {System.out.println("<" + yytext() +", MINUS>");return new Symbol(sym.MINUS);}
{MUL} {System.out.println("<" + yytext() +",MUL >");return new Symbol(sym.MUL);}
{DIV} {System.out.println("<" + yytext() +", DIV >");return new Symbol(sym.DIV);}
{MOD} {System.out.println("<" + yytext() +", MOD >");return new Symbol(sym.MOD);}
{ID} {System.out.println("<" + yytext() +", ID>");return new Symbol(sym.ID);}
{LP} {System.out.println("<" + yytext() +", LP>");return new Symbol(sym.LP);}
{RP} {System.out.println("<" + yytext() +", RP>");return new Symbol(sym.RP);}

{LCB} {System.out.println("<" + yytext() +", LP>");return new Symbol(sym.LCB);}
{RCB} {System.out.println("<" + yytext() +", RP>");return new Symbol(sym.RCB);}

{NUMB} {System.out.println("<" + yytext() +", NUMB>");return new Symbol(sym.NUMB);}
{OR} {System.out.println("<" + yytext() +", OR>");return new Symbol(sym.OR);}
{AND} {System.out.println("<" + yytext() +", AND>");return new Symbol(sym.AND);}
{NOT} {System.out.println("<" + yytext() +", NOT>");return new Symbol(sym.NOT);}
{ASS} {System.out.println("<" + yytext() +", ASS>");return new Symbol(sym.ASS);}
{EQ} {System.out.println("<" + yytext() +", EQ>");return new Symbol(sym.EQ);}
{GT} {System.out.println("<" + yytext() +", GT>");return new Symbol(sym.GT);}
{LT} {System.out.println("<" + yytext() +", LT>");return new Symbol(sym.LT);}
{GTE} {System.out.println("<" + yytext() +", GTE>");return new Symbol(sym.GTE);}
{LTE} {System.out.println("<" + yytext() +", LTE>");return new Symbol(sym.LTE);}
{UNARY} {System.out.println("<" + yytext() +", UNARY>");return new Symbol(sym.UNARY);}

{SP} {}