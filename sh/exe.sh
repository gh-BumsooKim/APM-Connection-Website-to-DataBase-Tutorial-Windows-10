# 'cp' command = copy and paste file
# 'cd' command = change directory

cd ../website/
cp createDB.html C:/xampp/htdocs/createDB.html
# mv createDB.html C:/xampp/htdocs/createDB.html

cd ../php/
find . -name '*.php' -exec cp {} C:/xampp/htdocs \;
# find . -name '*.php' -exec mv {} C:/xampp/htdocs \;

# Open Chrome Browser
start chrome http://localhost/createDB.html
#start chrome http://xxx.xxx.xxx.xxx/creteaDB.html
# **input your IPv4 Address** ^^^ here 

:<<'END'
Instead of 'cp' command, yon can 'mv' command 
Not to copy and paste But to move files completely.
END
