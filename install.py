import os
import errno

current_dir = os.getcwd()

dotfiles = ['bash_profile',
            'bashrc',
            'zshrc',
	    'gitconfig',
	    'hgrc',
	    'shsh',
	    'ssh',
	    'vim',
            ]

def create_symlink(target, link):
	try:
		os.symlink(target, link)
	except OSError, e:
		if e.errno == errno.EEXIST:
			print("removing " + link)
			os.remove(link) 
			print("symlinking " + link + " to " + target)
			os.symlink(target, link)

dotfile_pathes = []
for dotfile in dotfiles:
	dotfile_pathes.append("%s/%s" % (current_dir, dotfile))

symlinks = []

for path in dotfile_pathes:
	print path

for dotfile in dotfiles:
	print dotfile

home_dir = os.path.expanduser('~')
os.chdir(home_dir)
print os.getcwd()

for (source, symlink) in zip(dotfile_pathes, dotfiles):
	dotfile = '.' + symlink
	print("create symlink " + dotfile + ' targeting ' + source)
	create_symlink(source, dotfile)

print(" please manually create a symlink from ~/.vim/janus.vim/vimrc to ~/.vimrc

