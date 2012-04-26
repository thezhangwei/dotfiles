import os
current_dir = os.getcwd()
#os.symlink(hgrc, './test/link')

dotfiles = ['bash_profile',
            'bashrc',
				    'gitconfig',
				    'hgrc',
				    'shsh',
				    'ssh',
				    'vim',
            'vimrc'
			      ]

dotfile_pathes = []
for dotfile in dotfiles:
	dotfile_pathes.append("%s/%s" % (current_dir, dotfile))

symlinks = []
for dotfile in dotfiles:
	symlinks.append("./test/%s" % dotfile)

for path in dotfile_pathes:
	print path

for dotfile in dotfiles:
	print dotfile

home_dir = os.path.expanduser('~')
os.chdir(home_dir)
print os.getcwd()
for (path, symlink) in zip(dotfile_pathes, dotfiles):
	print("create symlink src " + path + ' dst ' + os.getcwd() + '/.' +symlink)
	os.symlink(path, './.' + symlink)
  


