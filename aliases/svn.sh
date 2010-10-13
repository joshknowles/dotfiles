alias svnadd="svn status | grep '^\?' | sed -e 's/? *//' | sed -e 's/ /\ /g' | xargs svn add"
alias svnrm="svn status | grep '^\!' | sed -e 's/! *//' | sed -e 's/ /\ /g' | xargs svn remove"