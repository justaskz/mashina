# CTRL+P show files and directories in current folder only
# __fsel_mod() {
#   local cmd="${FZF_CTRL_P_COMMAND:-"command find -L . -maxdepth 1 \\( -path '*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
#     -o -type f -print \
#     -o -type d -print \
#     -o -type l -print 2> /dev/null | cut -b3-"}"
#   setopt localoptions pipefail no_aliases 2> /dev/null
#   eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@" | while read item; do
#     echo -n "${(q)item} "
#   done
#   local ret=$?
#   echo
#   return $ret
# }

# fzf-file-widget_mod() {
#   LBUFFER="${LBUFFER}$(__fsel_mod)"
#   local ret=$?
#   zle reset-prompt
#   return $ret
# }

# search inventory file with fzf
function _fzf_complete_ssh() {
  _fzf_complete "--multi --reverse" "$@" < <(cat $HOME/repos/inventory)
}

_fzf_complete_ssh_post() {
  awk '{print $NF " -t \"sudo su -\""}'
}
