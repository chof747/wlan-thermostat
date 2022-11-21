#!/bin/sh
WORKDIR=$(dirname "$0")
cd $WORKDIR

REPOURL=`git config --get remote.origin.url`
REPONAME=`basename -s .git $REPOURL`

#rename project files to match repo name

mv template-project.kicad_pcb $REPONAME.kicad_pcb
mv template-project.kicad_prl $REPONAME.kicad_prl
mv template-project.kicad_pro $REPONAME.kicad_pro
mv template-project.kicad_sch $REPONAME.kicad_sch

#git add the template as a remote to get updates if needed
git remote add template https://github.com/chof747/kicad-project-template

#setup a basic README.md
echo "## $REPONAME\n" > README.md