# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

export QSYS_ROOTDIR="/opt/intelFPGA/17.1/quartus/sopc_builder/bin"
export LM_LICENSE_FILE=27000@10.0.0.7
alias d='dirs -v'
alias p='pushd > /dev/null 2>&1'
alias almake='make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j8 LOADADDR=0x8000'
alias gits='git status --column'
alias gitsu='git status --column --untracked-files=no' 
alias gitc='git commit'
alias ashell='~/altera/16.0/embedded/embedded_command_shell.sh'
alias pmake='make ARCH=arm CROSS_COMPILE=arm-poky-linux-gnueabi- -j8 LOADADDR=0x8000'
alias l138shell='. /usr/local/oecore-x86_64/environment-setup-armv5te-angstrom-linux-gnueabi'
alias xshell='. ~/Xilinx/13.2/ISE_DS/settings64.sh'
alias minicom='minicom -C ~/cap/console_$(date +%Y%d%m_%H%M%S).log'
alias vsim=/opt/intelFPGA/17.1/modelsim_ae/bin/vsim
#alias vsim='~/altera/16.0/modelsim_ase/bin/vsim'
gitsvnclone () { git svn clone "$@" --stdlayout --prefix svn/ git; } 

