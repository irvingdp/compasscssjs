﻿1.setup mindscape web workbench
	http://visualstudiogallery.msdn.microsoft.com/2b96d16a-c986-4501-8f97-8008f9db141a

2.right-click project => select "setup compass project"

3.left click images/icons folder -> then select 'Generate spriting import'

4.rename *.css -> *.scss and put in /sass folder

5.edit jquery.dropdown.scss

	@import "sprites/_icons";
	...
	...
	...
	.dropdown .undo A { @include icons-sprite(arrow-curve-180-left); }
	.dropdown .redo A { @include icons-sprite(arrow-curve); }
	.dropdown .cut A { @include icons-sprite(scissors); }
	.dropdown .copy A { @include icons-sprite(document-copy);  }
	.dropdown .paste A { @include icons-sprite(clipboard); }
	.dropdown .delete A { @include icons-sprite(cross-script); }


*adjustment dropdown.scss--
	.dropdown.has-icons LI > A {
		padding-left: 25px;
		margin-left:10px;
		//background-position: 8px center;
		background-repeat: no-repeat;
	}