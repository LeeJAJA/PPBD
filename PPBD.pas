//Build 2.5 Release 1.0
uses crt,mouse,dos;
label 1;
var
      t               	     				:tmouseevent;
        ii,ba,kz,zz,x,x1,y,i,j,xx,k,max      	:longint;
        h,m,s,ms      	  						:word;
		cmd,q									:string;
        flag           		       				:boolean;
        ch   									:char;
        last									:array[1..80,1..44] of integer;
        back 									:array[1..1000,1..80,1..44] of integer;
        f1                          			:text;
        zhi,b,kkk								:longint;

procedure Mak1;
begin
	textbackground(white);
        clrscr;
        textbackground(yellow);
        textcolor(blue);
   		gotoxy(32,5);
   	 	writeln('               ');
    	gotoxy(30,6);
    	writeln('   Make Progress   ');
    	gotoxy(32,7);
    	writeln('               ');
		textbackground(white);
	while true do begin
    	textcolor(green);
    	textbackground(red);
    	textcolor(red);
    	textbackground(yellow);
   		gotoxy(1,10);
        writeln('NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~');
        textbackground(15);
    	textcolor(green);
    	textbackground(red);
        writeln;
        writeln('6.save       Save the picture you drew,default directory is under c:\');
        writeln('like "save ABC" or "save D:\ABC"');
    	writeln;
    	writeln('7.load       Load the picture you drew,default directory is under c:\');
    	writeln('like "load ABC" or "load D:\ABC"');
    	writeln;
    	writeln('8.redo       redo several steps    like "redo 2"');
    	writeln;
    	writeln('9.undo       undo several steps    like "undo 2"');
    	writeln;
		GetMouseEvent(t);
    	while true do begin
        	GetMouseEvent(t);
       	 	if (GetMouseButtons=1) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
       	 		textbackground(15);
       	 		clrscr;
       	 		exit;
       	 	end;
       	 	if (GetMouseButtons=0) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
    			textbackground(green);
    			textcolor(red);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end
       	 	else begin
				textbackground(yellow);
    			textcolor(green);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end;
    	end;
    end;
end;

procedure new;
begin
textbackground(white);
        clrscr;
        textbackground(yellow);
        textcolor(blue);
        gotoxy(36,5);
        writeln('         ');
        gotoxy(34,6);
        writeln('   N  E  W   ');
        gotoxy(36,7);
        writeln('         ');
	textbackground(white);
	while true do begin
    	textcolor(green);
    	textbackground(red);
    	gotoxy(1,10);
    	writeln('1.Fixed some BUGs of the command tip');
    	writeln;
    	writeln('2.Added more and more buttons');
        writeln;
        writeln('3.Save and load the picture you painted');
    	writeln;
    	writeln('4.Make it easy to stop the command line');
    	writeln;
    	writeln('5.Added the function of redo and undo');
    	writeln;
    	writeln('6.Added redo and undo to the command line');
    	writeln;
    	writeln('~~PPBD Build 2.5 Release 1.0~~');
        writeln;
        writeln('2013.07.30 Zhenzhou China');
		GetMouseEvent(t);
    	while true do begin
        	GetMouseEvent(t);
       	 	if (GetMouseButtons=1) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
       	 		textbackground(15);
       	 		exit;
       	 	end;
       	 	if (GetMouseButtons=0) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
    			textbackground(green);
    			textcolor(red);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end
       	 	else begin
				textbackground(yellow);
    			textcolor(green);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end;
    	end;
	end;
end;

procedure Des;
begin
        textbackground(white);
        clrscr;
        textbackground(yellow);
        textcolor(blue);
        gotoxy(34,5);
        writeln('          ');
        gotoxy(32,6);
        writeln('   Describe   ');
        gotoxy(34,7);
        writeln('          ');
	textbackground(white);
	while true do begin
    	textcolor(green);
    	textbackground(red);
    	gotoxy(1,10);
    	writeln('PPBD(the painter program based on dos),programed with pascal');
    	writeln;
    	writeln('Although the photoshop is really fantanstic');
        writeln;
        writeln('but PPBD can let us feel the history(Vi Style)');
    	writeln;
    	writeln('Well,ehh,but!');
    	writeln;
    	writeln('This version is only for testing,the command line and some functions');
        writeln;
        writeln('still has some BUGs');
    	writeln;
    	writeln('Welcome to tell me the BUGs you found by sending');
        writeln;
        writeln('emails to me---haocongming@yeah.net');
		GetMouseEvent(t);
    	while true do begin
        	GetMouseEvent(t);
       	 	if (GetMouseButtons=1) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
       	 		textbackground(15);
       	 		exit;
       	 	end;
       	 	if (GetMouseButtons=0) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
    			textbackground(green);
    			textcolor(red);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end
       	 	else begin
				textbackground(yellow);
    			textcolor(green);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end;
    	end;
	end;
end;

procedure Get;
begin
	textbackground(white);
        clrscr;
        textbackground(yellow);
        textcolor(blue);
    gotoxy(31,5);
    writeln('                ');
    gotoxy(29,6);
    writeln('   Getting Started   ');
    gotoxy(31,7);
    writeln('                ');
	textbackground(white);
	while true do begin
    	textcolor(green);
    	textbackground(red);
    	gotoxy(1,10);
    	writeln('So,you can see,PPBD seems like a quite old program');
    	writeln;
    	writeln('then,how could we use it');
        writeln;
        writeln('1.There is an information tip on the top,you can see the timestamp');
        writeln('(only when you moved your mouse(...))');
    	writeln;
    	writeln('2.you can also see the color you choosed at the colored area');
    	writeln;
    	writeln('3.After that,you can see coordations of your cursor');
        writeln('maybe it could help a little');
    	writeln;
    	writeln('4.There is a color tooltip on the left');
        writeln('you can choose the color you want with it');
        writeln;
    	textcolor(red);
    	textbackground(yellow);
        writeln('NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~NEW~~');
        textbackground(15);
    	textcolor(green);
    	textbackground(red);
        writeln('5.You can click both the button to draw');
        writeln('and use your scroll button to change the color');
        writeln;
        writeln('6.you can click the ''clean up'' button to clean up');
        writeln;
        writeln('7.You can click the "redo" or "undo" to redo or undo the behaviors you have done');
        writeln;
        writeln('Now,Enjoy it~~~');
		GetMouseEvent(t);
    	while true do begin
        	GetMouseEvent(t);
       	 	if (GetMouseButtons=1) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
       	 		textbackground(15);
       	 		exit;
       	 	end;
       	 	if (GetMouseButtons=0) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
    			textbackground(green);
    			textcolor(red);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end
       	 	else begin
				textbackground(yellow);
    			textcolor(green);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end;
    	end;
	end;
end;

procedure Mak;
begin
	textbackground(white);
        clrscr;
	while true do begin
        textbackground(yellow);
        textcolor(blue);
   		gotoxy(32,5);
   	 	writeln('               ');
    	gotoxy(30,6);
    	writeln('   Make Progress   ');
    	gotoxy(32,7);
    	writeln('               ');
    	textcolor(green);
    	textbackground(red);
    	gotoxy(1,10);
    	writeln('Well,i think maybe you can use the PPBD easily');
    	writeln;
    	writeln('and you must want to make progress,RIGHT?');
        writeln;
        writeln('but,ehhhh,of course you can see a command tip on the buttom');
    	writeln;
    	writeln('and this function is in testing,so please be careful');
    	writeln;
    	writeln('There are 3 commands now');
        writeln;
        writeln('1.clean up       the same as the right buttom of your mouse');
    	writeln;
    	writeln('2.sens X         sens means the sensitive of your pen(X is an integer from 1~3)');
        writeln;
        writeln('3.stop           stop the commands and continue to painting');
        writeln;
    	writeln('4.fillall          fillall the places with only one color,please type''fillall''');
    	writeln('follow a name of color(black,blue,green,cyan,red,magenta,brown,lightgray');
    	writeln('darkgray,lightBlue,lightgreen,lightcyan,lightred,lightmagenta,yellow,white');
    	writeln;
		GetMouseEvent(t);
		writeln('5.colorall        ''colorall'' means coloring all the blocks you painted');
		writeln('with the same color(black,blue,green,cyan,red,magenta,brown,lightgray)');
    	writeln('darkgray,lightBlue,lightgreen,lightcyan,lightred,lightmagenta,yellow,white');
    	while true do begin
        	GetMouseEvent(t);
       	 	if (GetMouseButtons=1) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
       	 		textbackground(15);
       	 		exit;
       	 	end;
       	 	if (GetMouseButtons=0) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
    			textbackground(green);
    			textcolor(red);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end
       	 	else begin
				textbackground(yellow);
    			textcolor(green);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end;
			if (GetMouseButtons=1) and (getmousex>=71) and (getmousey>37) and (getmousey<41) and (getmousex<=77) then begin
       	 		textbackground(15);
       	 		Mak1;
       	 		break;
       	 	end;
       	 	if (GetMouseButtons=0) and (getmousex>=71) and (getmousey>37) and (getmousey<41) and (getmousex<=77) then begin
    			textbackground(green);
    			textcolor(red);
    			gotoxy(72,39);
   				writeln('    ');
   				gotoxy(71,40);
    			writeln(' Next ');
    			gotoxy(72,41);
    			writeln('    ');
       	 	end
       	 	else begin
				textbackground(yellow);
    			textcolor(green);
    			gotoxy(72,39);
   				writeln('    ');
   				gotoxy(71,40);
    			writeln(' Next ');
    			gotoxy(72,41);
    			writeln('    ');
       	 	end;
        end;
	end;
end;

procedure Dev;
begin
	textbackground(white);
        clrscr;
        textbackground(yellow);
        textcolor(blue);
        gotoxy(34,5);
        writeln('          ');
        gotoxy(32,6);
        writeln('   Describe   ');
        gotoxy(34,7);
        writeln('          ');
	textbackground(white);
	while true do begin
    	textcolor(green);
    	textbackground(red);
    	gotoxy(1,15);
    	writeln('Lee JAJA');
    	writeln;
    	writeln('the main programmer of PPBD,15 years old');
        writeln('a student from hangzhou,who likes programming');
    	writeln('and also likes OI,is an OIer for some time');
    	write('The people who set up the ');
    	textcolor(blue);
    	textbackground(yellow);
    	writeln('ProBT-PLUS');
    	textcolor(green);
    	textbackground(red);
    	writeln;
    	writeln;
        writeln;
        writeln('ZBOT');
    	writeln;
    	writeln('the programmer of PPBD,14 years old');
        writeln('a student from yiwu,who likes programming');
        writeln('he could program in many different languages');
        writeln('-like html5 C C++ pascal Python Batch JavaScript VBScript Cascading Style Sheet');
        writeln('and he thinks OI is awful,but he does really well in it');
        write('The main member of the ');
    	textcolor(blue);
    	textbackground(yellow);
    	writeln('ProBT-PLUS');
    	textcolor(green);
    	textbackground(red);
		textbackground(yellow);
    	textcolor(green);
    	gotoxy(34,5);
    	writeln('           ');
    	gotoxy(32,6);
    	writeln('   Developer   ');
    	gotoxy(34,7);
    	writeln('           ');
		GetMouseEvent(t);
    	while true do begin
        	GetMouseEvent(t);
       	 	if (GetMouseButtons=1) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
       	 		textbackground(15);
       	 		exit;
       	 	end;
       	 	if (GetMouseButtons=0) and (getmousex>=3) and (getmousey>37) and (getmousey<41) and (getmousex<=9) then begin
    			textbackground(green);
    			textcolor(red);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end
       	 	else begin
				textbackground(yellow);
    			textcolor(green);
    			gotoxy(4,39);
   				writeln('    ');
   				gotoxy(3,40);
    			writeln(' BACK ');
    			gotoxy(4,41);
    			writeln('    ');
       	 	end;
	end;end;
end;



procedure help;
begin
while true do begin
    while true do begin
	textbackground(15);
    GetMouseEvent(t);
    clrscr;
    textbackground(red);
    textcolor(yellow);
    gotoxy(32,7);
    write('               ');
    gotoxy(31,8);
    write(' Content of help ');
    gotoxy(32,9);
    write('               ');

if (GetMouseButtons=0) and (getmousex>=34) and (getmousey>12) and (getmousey<16) and (getmousex<=42) then begin
    textbackground(yellow);
    textcolor(green);
    gotoxy(35,13);
    writeln('        ');
    gotoxy(34,14);
    writeln(' Describe ');
    gotoxy(35,15);
    writeln('        ');
end else begin
    textbackground(green);
    textcolor(red);
    gotoxy(35,13);
    writeln('        ');
    gotoxy(34,14);
    writeln(' Describe ');
    gotoxy(35,15);
    writeln('        ');
end;

if (GetMouseButtons=0) and (getmousex>=31) and (getmousey>19) and (getmousey<23) and (getmousex<=48) then begin
    textbackground(yellow);
    textcolor(green);
    gotoxy(32,20);
    writeln('              ');
    gotoxy(31,21);
    writeln(' Getting Started ');
    gotoxy(32,22);
    writeln('              ');
end
else begin
    textbackground(green);
    textcolor(red);
    gotoxy(32,20);
    writeln('              ');
    gotoxy(31,21);
    writeln(' Getting Started ');
    gotoxy(32,22);
    writeln('              ');
end;

if (GetMouseButtons=0) and (getmousex>=32) and (getmousey>26) and (getmousey<30) and (getmousex<=47) then begin
    textbackground(yellow);
    textcolor(green);
    gotoxy(33,27);
    writeln('             ');
    gotoxy(32,28);
    writeln(' Make Progress ');
    gotoxy(33,29);
    writeln('             ');
end
else begin
    textbackground(green);
    textcolor(red);
    gotoxy(33,27);
    writeln('             ');
    gotoxy(32,28);
    writeln(' Make Progress ');
    gotoxy(33,29);
    writeln('             ');
end;

if (GetMouseButtons=0) and (getmousex>=34) and (getmousey>33) and (getmousey<37) and (getmousex<=45) then begin
    textbackground(yellow);
    textcolor(green);
    gotoxy(35,34);
    writeln('         ');
    gotoxy(34,35);
    writeln(' Developer ');
    gotoxy(35,36);
    writeln('         ');
end
else begin
    textbackground(green);
    textcolor(red);
    gotoxy(35,34);
    writeln('         ');
    gotoxy(34,35);
    writeln(' Developer ');
    gotoxy(35,36);
    writeln('         ');
end;

if (GetMouseButtons=0) and (getmousex>=3) and (getmousey>37) and (getmousey<40) and (getmousex<=9) then begin
    textbackground(green);
    textcolor(red);
    gotoxy(4,39);
    writeln('    ');
    gotoxy(3,40);
    writeln(' BACK ');
    gotoxy(4,41);
    writeln('    ');
end
else begin
    textbackground(yellow);
    textcolor(green);
    gotoxy(4,39);
    writeln('    ');
    gotoxy(3,40);
    writeln(' BACK ');
    gotoxy(4,41);
    writeln('    ');
end;
        GetMouseEvent(t);
        if (GetMouseButtons=1) and (getmousex>=34) and (getmousey>11) and (getmousey<15) and (getmousex<=42) then begin
        	Des;
        	textbackground(white);
        	break;
        end;
        if (GetMouseButtons=1) and (getmousex>=31) and (getmousey>18) and (getmousey<22) and (getmousex<=48) then begin
        	Get;
        	textbackground(white);
        	break;
        end;
        if (GetMouseButtons=1) and (getmousex>=32) and (getmousey>25) and (getmousey<29) and (getmousex<=47) then begin
        	Mak;
        	textbackground(white);
        	break;
        end;
        if (GetMouseButtons=1) and (getmousex>=34) and (getmousey>32) and (getmousey<36) and (getmousex<=45) then begin
        	Dev;
        	textbackground(white);
        	break;
        end;
        if (GetMouseButtons=1) and (getmousex>=3) and (getmousey>37) and (getmousey<40) and (getmousex<=9) then exit;
    end;
end;
end;

procedure beg;
var
    t               :tmouseevent;
    x,y,i,j,k,c             :longint;
    sum                 :qword;
    p                   :array[0..100,0..100] of integer;

begin
while not(flag) do begin
    getmouseevent(t);
    c:=3;
    clrscr;
    textbackground(black);
    textcolor(white);
    clrscr;
    randomize;
    window(1,1,80,44);
        sum:=0;
        fillchar(p,sizeof(p),0);
    while sum<=700 do begin
        x:=random(100);
        y:=random(100);
                inc(sum);
        if (x>0) and (y>0) then begin
                    gotoxy(x,y);
                        p[x,y]:=1;
            write('*');
        end;
               delay(c);
               //GetMouseEvent(t);
               if (GetMouseButtons=1) or (GetMouseButtons=2) then c:=0;
    end;
    gotoxy(1,12);
    textbackground(green);
    writeln('           --------======the painting program based on DOS======--------        ');
    writeln;
    writeln('                          ~~~[Build 2.5 Release 1.0]~~~                           ');
    writeln;
    write('                           designers:');
    textcolor(red);
    textbackground(yellow);
    write('Lee JAJA  ZBOT');
    textbackground(green);
    write('                             ');
    highVideo();
    textbackground(red);
    textcolor(yellow);
    gotoxy(36,21);
    writeln('           ');
    gotoxy(34,22);
    writeln('   S T A R T   ');
    gotoxy(36,23);
    writeln('           ');

    textbackground(white);
    textcolor(green);
    gotoxy(29,25);
    writeln('     ');
    gotoxy(28,26);
    writeln(' HE LP ');
    gotoxy(29,27);
    writeln('     ');

    textbackground(white);
    textcolor(green);
    gotoxy(39,25);
    writeln('     ');
    gotoxy(38,26);
    writeln(' N E W ');
    gotoxy(39,27);
    writeln('     ');

    textbackground(white);
    textcolor(green);
    gotoxy(49,25);
    writeln('     ');
    gotoxy(48,26);
    writeln(' EX IT ');
    gotoxy(49,27);
    writeln('     ');

    GetMouseEvent(t);
    while true do begin
        textbackground(red);
                //delay(1);
               if (GetMouseButtons=1) and (getmousex>=34) and (getmousey>=20) and (getmousey<=22) and (getmousex<=49) then exit;
               if (GetMouseButtons=1) and (getmousex>=28) and (getmousey>=24) and (getmousey<=26) and (getmousex<=35) then begin
                        help;
                        break;
                end;
                if (GetMouseButtons=1) and (getmousex>=38) and (getmousey>=24) and (getmousey<=26) and (getmousex<=45) then begin
                	new;
                	break;
                end;
                if (GetMouseButtons=1) and (getmousex>=48) and (getmousey>=24) and (getmousey<=26) and (getmousex<=55) then halt;
               if (GetMouseButtons=0) and (getmousex>=34) and (getmousey>=20) and (getmousey<=22) and (getmousex<=49) then begin
               		    textbackground(green);
    					textcolor(red);
               		    gotoxy(36,21);
    					writeln('           ');
    					gotoxy(34,22);
    					writeln('   S T A R T   ');
    					gotoxy(36,23);
    					writeln('           ');
    					continue;
               end;
               if (GetMouseButtons=0) and (getmousex>=28) and (getmousey>=24) and (getmousey<=26) and (getmousex<=35) then begin
                        textbackground(green);
    					textcolor(red);
    					gotoxy(29,25);
    					writeln('     ');
    					gotoxy(28,26);
    					writeln(' HE LP ');
    					gotoxy(29,27);
    					writeln('     ');
    					continue;
                end;
                if (GetMouseButtons=0) and (getmousex>=38) and (getmousey>=24) and (getmousey<=26) and (getmousex<=45) then begin
                	    textbackground(green);
    					textcolor(red);
    					gotoxy(39,25);
    					writeln('     ');
    					gotoxy(38,26);
    					writeln(' N E W ');
    					gotoxy(39,27);
    					writeln('     ');
    					continue;
                end;
                if (GetMouseButtons=0) and (getmousex>=48) and (getmousey>=24) and (getmousey<=26) and (getmousex<=55) then begin
                	    textbackground(green);
    					textcolor(red);
    					gotoxy(49,25);
    					writeln('     ');
   						gotoxy(48,26);
   						writeln(' EX IT ');
    					gotoxy(49,27);
    					writeln('     ');
    					continue;
                end;
                textcolor(yellow);
    			gotoxy(36,21);
    			writeln('           ');
    			gotoxy(34,22);
    			writeln('   S T A R T   ');
    			gotoxy(36,23);
    			writeln('           ');

    			textbackground(white);
    			textcolor(green);
    			gotoxy(29,25);
    			writeln('     ');
    			gotoxy(28,26);
    			writeln(' HE LP ');
    			gotoxy(29,27);
    			writeln('     ');

    			textbackground(white);
    			textcolor(green);
    			gotoxy(39,25);
    			writeln('     ');
    			gotoxy(38,26);
    			writeln(' N E W ');
    			gotoxy(39,27);
    			writeln('     ');

    			textbackground(white);
    			textcolor(green);
    			gotoxy(49,25);
    			writeln('     ');
    			gotoxy(48,26);
    			writeln(' EX IT ');
    			gotoxy(49,27);
    			writeln('     ');
                GetMouseEvent(t);
                end;
    end;
end;

begin
	1:
	zhi:=1;
	max:=1;
    zz:=15;
    for i:=1 to 80 do
        for j:=1 to 44 do begin
        	last[i,j]:=15;
        	back[1,i,j]:=15;
        end;
    for ii:=1 to 1000 do
    	for i:=1 to 80 do
    		for j:=1 to 44 do back[ii,i,j]:=15;
        textbackground(15);
	clrscr;
    InitMouse;
    GetMouseEvent(t);
    beg;
    x:=1;
    x1:=14;
    xx:=0;
    clrscr;
	textbackground(zz);
        textcolor(15);
        window(1,1,80,44);
	clrscr;
	while true do begin
        GetMouseEvent(t);
        delay(xx);
        textbackground(blue);
        gotoxy(1,2);
        for i:=1 to 80 do write(' ');
        if (GetMouseButtons=1) and (GetMouseY=0) and (GetMousex>=75) then goto 1;
		if (GetMouseButtons=0) and (GetMouseY=0) and (GetMousex>=75) then begin
            textbackground(green);
       	 	textcolor(red);
       	 	gotoxy(75,1);
        	write(' back ');
        end else begin
       	 	textbackground(yellow);
       		textcolor(green);
       		gotoxy(75,1);
        	write(' back ');
        end;
        if (GetMouseButtons=1) and (GetMouseY=1) and (GetMousex>=0) and (GetMousex<=9) then begin
            textbackground(zz);
            fillchar(last,sizeof(last),0);
            clrscr;
        end;
        if (GetMouseButtons=0) and (GetMouseY=1) and (GetMousex>=0) and (GetMousex<=9) then begin
            textbackground(green);
            textcolor(red);
            gotoxy(1,2);
            write(' clean up ');
        end else begin
            textbackground(green);
            textcolor(yellow);
            gotoxy(1,2);
            write(' clean up ');
        end;

        if (GetMouseButtons=1) and (GetMouseY=1) and (GetMousex>=12) and (GetMousex<=21) and (max>zhi) then begin
        	for i:=1 to 80 do
        		for j:=1 to 44 do
        			last[i,j]:=back[zhi,i,j];
            for i:=1 to 2 do
                for j:=41 to 43 do begin
                    gotoxy(i,j);
                    textbackground(last[i,j]);
                    write(' ');
                end;
            for i:=3 to 80 do
                for j:=3 to 43 do begin
                    gotoxy(i,j);
                    textbackground(last[i,j]);
                    write(' ');
            end;
            inc(zhi);
            getmouseevent(t);
        end;
        if (GetMouseButtons=0) and (GetMouseY=1) and (GetMousex>=12) and (GetMousex<=21) and (max>zhi) then begin
            textbackground(blue);
            textcolor(red);
            gotoxy(12,2);
            write(' <-undo- ');
        end else if max>zhi then begin
            textbackground(green);
            textcolor(yellow);
            gotoxy(12,2);
            write(' <-undo- ');
        end else if max=zhi then begin
            textbackground(black);
            textcolor(white);
            gotoxy(12,2);
            write(' <-undo- ');
        end;

        if (GetMouseButtons=1) and (GetMouseY=1) and (GetMousex>=22) and (GetMousex<=31) and (zhi>1) then begin
        	for i:=1 to 80 do
        		for j:=1 to 44 do
        			last[i,j]:=back[zhi,i,j];
            for i:=1 to 2 do
                for j:=41 to 43 do begin
                    gotoxy(i,j);
                    textbackground(last[i,j]);
                    write(' ');
                end;
            for i:=3 to 80 do
                for j:=3 to 43 do begin
                    gotoxy(i,j);
                    textbackground(last[i,j]);
                    write(' ');
            end;
            dec(zhi);
            getmouseevent(t);
        end;
        if (GetMouseButtons=0) and (GetMouseY=1) and (GetMousex>=22) and (GetMousex<=31) and (zhi>1) then begin
            textbackground(blue);
            textcolor(red);
            gotoxy(22,2);
            write(' -redo-> ');
        end else if zhi>1 then begin
            textbackground(green);
            textcolor(yellow);
            gotoxy(22,2);
            write(' -redo-> ');
        end else if zhi=1 then begin
            textbackground(black);
            textcolor(white);
            gotoxy(22,2);
            write(' -redo-> ');
        end;

        textbackground(green);
        if (GetMouseButtons=2) and (GetMouseY-1 in [9,11,13,15,17,19,21,23,25,27,29,31,33,35,39]) and (getmousex<3) then
            x1:=(GetmouseY-9-1) div 2+1;
        if (GetMouseButtons=1) and (GetMouseY-1 in [9,11,13,15,17,19,21,23,25,27,29,31,33,35,39]) and (getmousex<3) then
            x:=(GetmouseY-9-1) div 2+1
        else
		if (GetMouseButtons=1) and (GetMouseX>2) and (GetMouseY>2) and (GetMousex<80) and (GetMouseY<45) then begin
			gotoxy(GetMouseX+1,GetMouseY+1);
			b:=1;
			last[GetMouseX+1,GetMouseY+1]:=x;
            textbackground(x);
			write(' ');
            textbackground(zz);
		end;
        if (GetMouseButtons=2) and (GetMouseX>2) and (GetMouseY>2) and (GetMousex<80) and (GetMouseY<45) then begin
            b:=2;
            gotoxy(GetMouseX+1,GetMouseY+1);
            last[GetMouseX+1,GetMouseY+1]:=x1;
            textbackground(x1);
            write(' ');
            textbackground(zz);
        end;
        if (b<>GetMouseButtons) and (GetMouseX>2) and (GetMouseY>2) and (GetMousex<80) and (GetMouseY<45) then begin
        	inc(max);
        	b:=GetMouseButtons;
        	if max=1001 then max:=1000;
        	for ii:=max downto 3 do
        		for i:=1 to 80 do
        			for j:=1 to 44 do begin
        				back[ii,i,j]:=back[ii-1,i,j];
        			end;
        	for i:=1 to 80 do
        			for j:=1 to 44 do
        				back[2,i,j]:=last[i,j];
        end;
	{if GetMouseButtons=2 then begin
                        textbackground(zz);
			clrscr;
			fillchar(last,sizeof(last),false);
	end;}
        if GetMouseButtons=4 then begin
                    inc(x);
                    x:=x mod 16;
                    textcolor(x);
                    //gotoxy(1,1);
                    //write('color ',x,' ');
         end;
         for i:=3 to 43 do begin
                    textbackground(15);
         			gotoxy(1,i);
         			write('  ');
                        end;
                        textcolor(black);
         		for i:=1 to 15 do begin
         			textbackground(i);
         			gotoxy(1,2*i+9);
         			write('  ');
                                gotoxy(1,2*i+8);
                                textbackground(15);
                                case i of
                                	0:write('Ba');
                                	1:write('Bu');
                                	2:write('Gr');
                                	3:write('Cy');
                                	4:write('Re');
                                	5:write('Ma');
                                	6:write('Br');
                                	7:write('LG');
                                	8:write('DG');
                                	9:write('LB');
                                	10:write('Lr');
                                	11:write('LC');
                                	12:write('LR');
                                	13:write('LM');
                                	14:write('Ye');
                                	15:write('Wh');
                                end;

         		end;
                        gotoxy(1,38);
                        write('  ');
                       { for i:=8 to 15 do begin
         			textbackground(i);
         			gotoxy(1,2*i+7);
         			write('  ');
         		end;}        //color tooltip
                textcolor(15);
                textbackground(12);
                gotoxy(1,1);
                for i:=1 to 74 do write(' ');
                {textbackground(yellow);
                gotoxy(75,1);
                write(' back ');
                textbackground(green);}
                //for i:=59 to 79 do write(' ');
                textbackground(green);
                gettime(h,m,s,ms);
                gotoxy(30,1);
                writeln('  ','time:',h,':',m,':',s,':',ms,'  ');      //clock
                gotoxy(13,1);
                textbackground(12);
                write(' (',getmousex,',',getmousey,')   ');
               gotoxy(1,1);
               write(' color ');
               textcolor(x);
               textbackground(x);
               gotoxy(8,1);
               write('  ');
               textcolor(x1);
               textbackground(x1);
               gotoxy(10,1);
               write('  ');
               textbackground(green);
	       	   gotoxy(1,44);
               GetMouseEvent(t);
               textcolor(black);
                write('>                                                                              ');
               if (GetMouseButtons=1) and (getmousey=43) then begin
                        delay(2000);
                        gotoxy(2,44);
                        readln(cmd);
                        textbackground(green);
	       	   			gotoxy(1,44);
               			textcolor(black);
                		write('>                                                                              ');
                        if pos('clean up',cmd)<>0 then begin
                                textbackground(white);
                                fillchar(last,sizeof(last),0);
                                                                                for i:=1 to 2 do
                                                                                    for j:=41 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                    end;
                                                                                for i:=3 to 80 do
                                                                                    for j:=3 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                end;
                                clrscr;
                                                     while not ((GetMouseButtons=1) and (GetMouseY<43)) do GetMouseEvent(t);
                        end;
                        if pos('sens',cmd)<>0 then begin
                        	val(copy(cmd,6,length(cmd)-5),xx);
                        	xx:=3-xx;
                        	                                                                                for i:=1 to 2 do
                                                                                    for j:=41 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                    end;
                                                                                for i:=3 to 80 do
                                                                                    for j:=3 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                end;
                                while not ((GetMouseButtons=1) and (GetMouseY<43)) do GetMouseEvent(t);
                        end;
                        if cmd='stop' then begin
                                while not ((GetMouseButtons=1) and (GetMouseY<43)) do GetMouseEvent(t);
                                												textbackground(zz);
                                                                                for i:=1 to 2 do
                                                                                    for j:=41 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                    end;
                                                                                for i:=3 to 80 do
                                                                                    for j:=3 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                end;
                                continue;
                        end;

                        if pos('fillall',cmd)<>0 then begin
                                q:=copy(cmd,7,length(cmd)-6);
                                for i:=1 to length(q) do lowercase(q[i]);
                                //writeln(q);
								if pos('black',q)<>0 then kz:=0;
								if pos('blue',q)<>0 then kz:=1;
								if pos('green',q)<>0 then kz:=2;
								if pos('cyan',q)<>0 then kz:=3;
								if pos('red',q)<>0 then kz:=4;
								if pos('magenta',q)<>0 then kz:=5;
								if pos('brown',q)<>0 then kz:=6;
								if pos('lightgray',q)<>0 then kz:=7;
								if pos('darkgray',q)<>0 then kz:=8;
								if pos('lightBlue',q)<>0 then kz:=9;
								if pos('lightgreen',q)<>0 then kz:=10;
								if pos('lightcyan',q)<>0 then kz:=11;
								if pos('lightred',q)<>0 then kz:=12;
								if pos('lightmagenta',q)<>0 then kz:=13;
								if pos('yellow',q)<>0 then kz:=14;
								if pos('white',q)<>0 then kz:=15;
								textbackground(kz);
                                                                //write(kz);
                                                                for i:=3 to 80 do
                                                                        for j:=2 to 43 do
                                                                                if last[i,j]=zz then begin
                                                                                    gotoxy(i,j);
                                                                                    last[i,j]:=kz;
                                                                                    write(' ');
                                                                                end;
                                                                zz:=kz;
                                                                textbackground(zz);
                                                                               for i:=1 to 2 do
                                                                                    for j:=41 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                    end;
                                                                                for i:=3 to 80 do
                                                                                    for j:=3 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                end;
                                while not ((GetMouseButtons=1) and (GetMouseY<43)) do GetMouseEvent(t);
                        		continue;
                        end;
								if pos('colorall',cmd)<>0 then begin
                                q:=copy(cmd,8,length(cmd)-7);
                                for i:=1 to length(q) do lowercase(q[i]);
                                //writeln(q);
								if pos('black',q)<>0 then kz:=0;
								if pos('blue',q)<>0 then kz:=1;
								if pos('green',q)<>0 then kz:=2;
								if pos('cyan',q)<>0 then kz:=3;
								if pos('red',q)<>0 then kz:=4;
								if pos('magenta',q)<>0 then kz:=5;
								if pos('brown',q)<>0 then kz:=6;
								if pos('lightgray',q)<>0 then kz:=7;
								if pos('darkgray',q)<>0 then kz:=8;
								if pos('lightBlue',q)<>0 then kz:=9;
								if pos('lightgreen',q)<>0 then kz:=10;
								if pos('lightcyan',q)<>0 then kz:=11;
								if pos('lightred',q)<>0 then kz:=12;
								if pos('lightmagenta',q)<>0 then kz:=13;
								if pos('yellow',q)<>0 then kz:=14;
								if pos('white',q)<>0 then kz:=15;
								textbackground(kz);
                                                                //write(kz);
                                                                for i:=3 to 80 do
                                                                        for j:=2 to 43 do
                                                                                if last[i,j]<>zz then begin
                                                                                    gotoxy(i,j);
                                                                                    last[i,j]:=kz;
                                                                                    write(' ');
                                                                                end;
                                                                //zz:=kz;
                                                                textbackground(zz);
                                                                               for i:=1 to 2 do
                                                                                    for j:=41 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                    end;
                                                                                for i:=3 to 80 do
                                                                                    for j:=3 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                end;
                                while not ((GetMouseButtons=1) and (GetMouseY<43)) do GetMouseEvent(t);
                        		continue;
                        end;
                        if pos('save',cmd)<>0 then begin
                        		if pos(':\',cmd)<>0 then assign(f1,copy(cmd,6,length(cmd)-5)+'.PPBD')
                                else assign(f1,'C:\'+copy(cmd,6,length(cmd)-5)+'.PPBD');
                                rewrite(f1);
                        	for i:=1 to 80 do begin
                        		for j:=1 to 44 do write(f1,last[i,j],' ');
                        		writeln(f1);
                        	end;
                                close(f1);
                                                                                 for i:=1 to 2 do
                                                                                    for j:=41 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                    end;
                                                                                for i:=3 to 80 do
                                                                                    for j:=3 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                end;
                                while not ((GetMouseButtons=1) and (GetMouseY<43)) do GetMouseEvent(t);
                        end;
                        if pos('load',cmd)<>0 then begin
                        		if pos(':\',cmd)<>0 then assign(f1,copy(cmd,6,length(cmd)-5)+'.PPBD')
                                else assign(f1,'C:\'+copy(cmd,6,length(cmd)-5)+'.PPBD');
                                reset(f1);
                        	for i:=1 to 80 do begin
                        		for j:=1 to 44 do read(f1,last[i,j]);
                        		readln(f1);
                        	end;
                                close(f1);
                                                                                 for i:=1 to 2 do
                                                                                    for j:=41 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                    end;
                                                                                for i:=3 to 80 do
                                                                                    for j:=3 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                end;
                                while not ((GetMouseButtons=1) and (GetMouseY<43)) do GetMouseEvent(t);
                        end;
						if pos('redo',cmd)<>0 then begin
                        		val(copy(cmd,6,length(cmd)-5),kkk);
                        		inc(kkk);
                        		if zhi-kkk>=1 then zhi:=zhi-kkk;
                                                                                 for i:=1 to 2 do
                                                                                    for j:=41 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                    end;
                                                                                for i:=3 to 80 do
                                                                                    for j:=3 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                end;
        	                        for i:=1 to 80 do
        		                        for j:=1 to 44 do
        			                        last[i,j]:=back[zhi,i,j];
                                    for i:=1 to 2 do
                                        for j:=41 to 43 do begin
                                            gotoxy(i,j);
                                            textbackground(last[i,j]);
                                            write(' ');
                                        end;
                                    for i:=3 to 80 do
                                        for j:=3 to 43 do begin
                                            gotoxy(i,j);
                                            textbackground(last[i,j]);
                                            write(' ');
                                    end;
                                while not ((GetMouseButtons=1) and (GetMouseY<43)) do GetMouseEvent(t);
                        end;
                            if pos('undo',cmd)<>0 then begin
                                    val(copy(cmd,6,length(cmd)-5),kkk);
                                    inc(kkk);
                        			if zhi+kkk<=max then zhi:=zhi+kkk;

                                                                                 for i:=1 to 2 do
                                                                                    for j:=41 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                    end;
                                                                                for i:=3 to 80 do
                                                                                    for j:=3 to 43 do begin
                                                                                        gotoxy(i,j);
                                                                                        textbackground(last[i,j]);
                                                                                        write(' ');
                                                                                end;
        	                        for i:=1 to 80 do
        		                        for j:=1 to 44 do
        			                        last[i,j]:=back[zhi,i,j];
                                    for i:=1 to 2 do
                                        for j:=41 to 43 do begin
                                            gotoxy(i,j);
                                            textbackground(last[i,j]);
                                            write(' ');
                                        end;
                                    for i:=3 to 80 do
                                        for j:=3 to 43 do begin
                                            gotoxy(i,j);
                                            textbackground(last[i,j]);
                                            write(' ');
                                    end;
                                while not ((GetMouseButtons=1) and (GetMouseY<43)) do GetMouseEvent(t);
                        end;
       		end;
		textbackground(zz);
	end;
end.
