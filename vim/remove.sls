######################################################
# Name: vim.remove.sls
#
# Description: remove Vim editor. 
#
# verified OS: CentOS 6.5, Ubuntu 14.04
#
# usage:
# salt \* state.sls vim.remove
#
######################################################
vim:
  pkg:
    - removed
    {% if grains['os_family'] == 'RedHat' %}
    - name: vim-enhanced
    {% else %}
    - name: vim
    {% endif %}
