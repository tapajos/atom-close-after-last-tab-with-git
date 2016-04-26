module.exports =

  activate: ->
    atom.workspace.onDidDestroyPaneItem ->
      if atom.workspace.getTextEditors().length is 0
        if atom.project.getDirectories().length is 1
          splitedPath = atom.project.getDirectories()[0].path.split("/")
          if splitedPath[(splitedPath.length-1)] is ".git"
            atom.close()
