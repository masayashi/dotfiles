
alias open='cygstart'
alias editrc='cygstart ~/.bashrc'

# \[\e[1;32m\] から　\[\e[00m\] で囲まれた領域が
# 数値の色になる。
# 黒色(Black)	0;30
# 青色(Blue)	0;34
# 緑色(Green)	0;32
# 水色(Cyan)	0;36
# 赤色(Red)	0;31
# 紫色(Purple)	0;35
# 明灰色(Light Gray)	0;37
# 暗灰色(Dark Gray)	1;30
# Light Blue	1;34
# Light Green	1;32
# Light Cyan	1;36
# Light Red	1;31
# Light Purple	1;35
# 黄色(Yellow)	1;33
# 白色(White)	1;37
# すべての属性を無効	00
export PS1="\[\e[1;32m\]#####\[\e[00m\] \[\e[1;33m\]\w\[\e[00m\]  \[\e[1;37m\]\t \[\e[00m\]\n"

