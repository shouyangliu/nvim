you need run this to install packer
'git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim'

 you need to install a nerdfont at 'https://www.nerdfonts.com/'
 the recommend font is "Dejavu"
 
 you need to install lsp by "Mason"


#### clangd  无法找到头文件
r1 :
    在项目文件夹下新建compile_flags.json, 内容为
    -I
    包含头文件的文件夹

    即可
r2 :
    通过CMakeLists来添加：
    在CMakeLists中添加 set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

reference from Charlestz in bilibili
###################################

#### clangd format
在根目录下新建.clangd-format
 内容是 BasedOnStyle: Google
