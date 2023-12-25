echo ========= Run jflex Scanner.jflex ============
call jflex Scanner.jflex

echo ========= Run java java_cup.MainDrawTree parser.cup ============
call java java_cup.MainDrawTree parser.cup

echo ========= javac *.java ============ 
call javac *.java

echo ========= java Main input.txt ============
call java Main input.txt
