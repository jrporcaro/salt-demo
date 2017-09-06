######################################################
# Name: vim
#
# Description: install of Vim editor. 
#
# verified OS: CentOS 6.5, Ubuntu 14.04
#
# usage:
# salt \* state.sls vim
#
######################################################

vim:
  pkg:
    - installed
    {% if grains['os_family'] == 'RedHat' %}
    - name: vim-enhanced
    {% else %} 
    - name: vim
    {% endif %}
