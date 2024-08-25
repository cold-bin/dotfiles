#!/bin/bash

# 要修改的文件路径
file_path="/usr/bin/linuxqq"

# 检查文件是否存在
if [ -f "$file_path" ]; then 
    # 要插入的内容
    insert_text='--ozone-platform-hint=auto --enable-wayland-ime'

    # 使用 sed 查找行并在指定位置插入内容
    sed -i "/^exec \/opt\/QQ\/qq \${QQ_USER_FLAGS\[@\]}.*\"\$@\"$/s/\"\$@\"/$insert_text &/" "$file_path"
    echo "文件已修改。"
else
    echo "文件不存在，请检查文件路径。"
fi
