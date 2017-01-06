# author: Michal Niklas 

import sys
import zipfile
import glob

def show_jar_classes(jar_file):
	"""prints out .class files from jar_file"""
	zf = zipfile.ZipFile(jar_file, 'r')
	try:
		lst = zf.infolist()
		for zi in lst:
			fn = zi.filename
			if fn.endswith('.class'):
				print(fn)
	finally:
		zf.close()


def main():
	jars = glob.glob('*.jar')
	if not jars:
		sys.stderr.write('No .jar files found!\n')
	else:
		for jf in jars:
			print('\n\n-- %s --' % (jf))
			show_jar_classes(jf)


if __name__ == '__main__':
	if '--version' in sys.argv:
		print(__version__)
	else:
		main() 
