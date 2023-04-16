function dos2unix() { sed -i.bak 's/\r$//' $1; }
function fvim() { $EDITOR $(fzf); }
