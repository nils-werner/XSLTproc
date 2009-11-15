Requirements
============
- Mac OSX: TextMate, xsltproc
- Windows: e Texteditor and cygwin with the libxslt package installed

Mac OSX:
xsltproc should come preinstalled with your system. For better Unicode-support you may install recode from Darwinports: http://recode.darwinports.com/

Windows:
You need cygwin and its package "LibXSLT".

Even if you have installed cygwin upon installation of e, you have to download the cygwin setup.exe again and re-install it. Cygwin will run an update and let you chose what packages you wish to install. Select "LibXSLT". Done.

Installation
============
Mac OSX:
Extract the contents to `/Library/Application Support/TextMate/Bundles/XSLTproc.tmbundle`

Windows:
Extract the contents to `C:\Users\<Username>\AppData\Roaming\e\Bundles\XSLTproc.tmbundle`

Restart Editor.

Usage
=====
This bundle is a try to integrate XSLTproc into TextMate or e Texteditor. You can run it from
any .xsl stylesheet or .xml document with a stylesheet declarations. 

When running from a XSL file, it will load your XML either from `./<stylesheet>.xml` or, if not found, `./data.xml`. This file has to be existent.
	
Similarily it will load your params either from `./<stylesheet>.txt` or, if not found, `./params.txt`. This file is optional.

Params are expected to be in the form of tab-separated name and value pairs:

name`<tab>`value<br />
name2`<tab>`other value

where value is allowed to have spaces (but no tabs!) and name isn't.

If the params-file is executable, it will be executed instead of just read line by line. The returned lines will be used instead. This is useful for dynamic parameters like date and time.

On Windows, the Shortcuts to XSLTproc Actions are Ctrl+Alt+Q for "Process XSLT" and Shift+Alt+Q for "Evaluate XPath".

"Process XSLT" will always process the whole stylesheet and its imported stylesheets.
"Evaluate XPath" will either evaluate the currently selected expression or ask for one if there wasn't anything selected.

Bugs
==== 
There will be many! This is a pre-alpha version of the bundle. Use with care and report all problems to nils.werner@gmail.com

Planned Features
================
- Xpath interpreter improvements
- UI improvements

Symphony CMS
============
To all of you using Symphony CMS: You'll have to copy the XML and Params from the ?debug tool into /workspace/pages/data.xml and params.txt, respectively.