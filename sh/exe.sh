# 'cp' command = copy and paste file
# 'cd' command = change directory

echo "Copy createDB.html file to C:/xampp/htdocs ..."

cd ../website/
cp createDB.html C:/xampp/htdocs/createDB.html
# mv createDB.html C:/xampp/htdocs/createDB.html

echo "Copy all php file to C:/xampp/htdocs ..."

cd ../php/
find . -name '*.php' -exec cp {} C:/xampp/htdocs \;
# find . -name '*.php' -exec mv {} C:/xampp/htdocs \;

echo "Start chrome web browser to localhost"

# Open Chrome Browser
start chrome http://localhost/createDB.html
#start chrome http://xxx.xxx.xxx.xxx/createDB.html
# **input your IPv4 Address** ^^^ here 

:<<'END'
Instead of 'cp' command, yon can 'mv' command 
Not to copy and paste But to move files completely.
And You should install "Git for Windows" with GitBash.
END
