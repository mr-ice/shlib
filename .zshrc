# shlib - shell functions in bash or zsh
# Copyright (C) 2014 Michael Rice <michael@riceclan.org>
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# System-wide rc file for interactive bash(1) or zsh(1) shells.
if [ -z "$PS1" ]; then
   return
fi

if [ -f $HOME/.zshlib/all ]; then
	source $HOME/.zshlib/all
fi

declare -U path
declare -U manpath
declare -T -U LD_LIBRARY_PATH ld_library_path

path=( /usr/local/bin $path /usr/local/git/bin )
# Need to find the zsh equiv of this bash directive
#shopt -s checkwinsize
