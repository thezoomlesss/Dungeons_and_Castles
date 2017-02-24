program Text_Based_Game;
uses crt;
Label Return,Return2;
type
 Caracter=record
         nume:string[20];
         hp,mana:integer;
         armura:integer;
         viteza_de_miscare:integer;
         damage:integer;
         end;
var
  x,i,j,n,potiuni:integer;
  k:char;
  S,S2,S3:string;
  a:string[66];
  OK:boolean;
  money:longint;
  clasa_campion:string[15];
  campion,mage,archer,knight,monk:Caracter;

begin
Clrscr;
{Introducere  : DONE}
S:='                             Dungeon and Castles';
j:=1;
for i:=length(s) downto 1  do
	begin
        j:=j+1;
        if j=16 then
         j:=1;
        s2:=s[i]+S2;
        Textcolor(j);
        clrscr;
        writeln(s2);
        Delay(120);
	end;
S:='                                                        Made by MuDy ';
j:=1;
for i:=length(s) downto 1 do
 begin
 j:=j+1;
 if j=16 then
  j:=1;
 S3:=S[i]+S3;
 clrscr;
 Textcolor(red);
 writeln('                             Dungeon and Castles');
 Textcolor(j);
 writeln(s3);
 Delay(120);
 end;
clrscr;
Textcolor(Red);
Writeln('                             Dungeon and Castles');
Textcolor(13);
Write('                                                        Made by ');
textcolor(29);
write('MuDy ');
Textcolor(13);
write('And ');
Textcolor(29);
writeln('Akriel');
Delay(1300);
{Lista de comenzi : DONE}

Textcolor(white);
writeln(' Command List:');
Textcolor(6);write('/Help:        ');Textcolor(white);Writeln('Used to reopen the command list.');
Textcolor(6);write('/Newgame:     ');Textcolor(white);writeln('Used to start a new game');
Textcolor(6);write('/restartgame: ');Textcolor(white);writeln('Used to restart the game.');
Textcolor(6);write('/save:        ');Textcolor(white);writeln('Used to save your progress.');
Textcolor(6);write('/load:        ');Textcolor(white);writeln('Used to load a previous save.');
Textcolor(6);write('/stats:       ');Textcolor(white);writeln('Used to display the stats of your champion.');
Textcolor(6);write('/exit:        ');Textcolor(white);writeln('Used to exit the game');

{secventa alegere si verificare nume :  DONE}
Textcolor(Green);
Delay(1000);
write('Choose your name: ');
Textcolor(white);
readln(campion.nume);
a:='QWERTYUIOPASDFGHJKLZXCVBNM -_qwertyuiopasdfghjklzxcvbnm1234567890';
Return:;
if length(campion.nume)>15 then
 begin
	 Textcolor(red);
	 write('Unfortunately, your desired name contains too many characters. Choose another name');
	 Textcolor(14);
	 write('(max 15 chars): ');
	 Textcolor(white);
	 readln(campion.nume);
	 Goto Return;
 end
	 else
	  if length(campion.nume)<2 then
	   begin
		Textcolor(red);
		write('Your name has to be made of at least 2 characters. Choose another name: ');
		Textcolor(white);
		readln(campion.nume);
		Goto Return;
	   end;
for i:=1 to length(campion.nume) do
 if pos(campion.nume[i],a)=0 then
  begin
	  Textcolor(red);
	  Write('Unfortunately, your desired name is unavailable. Choose another name: ' );
	  textcolor(Green);
	  readln(campion.nume);
	  Goto Return;	
  end;

repeat
 begin
	 Textcolor(yellow);
	 writeln('ARE YOU SURE?(Y/N)');
	 Textcolor(11);
	 Readln(k);
	 if (k<>'Y') and (k<>'N') then
	  repeat
	   begin
		   Textcolor(red);
		   writeln('INVALID RESPONSE');
		   Textcolor(white);
		   writeln('Answer again');
		   Textcolor(11);
		   readln(k);
	   end;
		until (k='Y') or (k='N')
		  else
		   if k='N' then
			begin
				Textcolor(green);
				Write('Enter a new name: ');
				Textcolor(white);
				Readln(campion.nume);
				Goto Return;
			end;
 end;
until (k='Y') or (k='N');
{Alegerea clasei: NOT DONE}
clrscr;
writeln;
Textcolor(6);
writeln('Choose your class');
Textcolor(3);
writeln('(To choose a class write the name of the desired class)');
Textcolor(blue);
write('       {');textcolor(white);write('Hit Points: ');Textcolor(12);Write(' Low');
Textcolor(blue);write('                            {');textcolor(white);write('Hit Points:');
textcolor(green);writeln('  Very Low');
Textcolor(blue);
write('       {');textcolor(white);write('Mana Points:');Textcolor(12);write(' Very High');
Textcolor(blue);write('                      {');textcolor(white);write('Mana Points: ');
Textcolor(green);writeln('Low');
Textcolor(12);
write('Mage:  ');Textcolor(blue);Write('{');textcolor(white);write('Damage:');textcolor(12);write('      Very High');
Textcolor(green);write('               Archer:');textcolor(blue);write('{');textcolor(white);write('Damage: ');
Textcolor(green);writeln('     Very High');
Textcolor(blue);
Write('       {');textcolor(white);write('Accuracy:');textcolor(12);write('    High');
Textcolor(blue);write('                           {');textcolor(white);write('Accuracy:');
Textcolor(green);writeln('    Very High');
Textcolor(blue);Write('       {');textcolor(white);write('Armor:');textcolor(12);write('       Very Low');
Textcolor(blue);Write('                       {');Textcolor(white);write('Armor:');
Textcolor(green);Writeln('       Very Low');
writeln;
Textcolor(blue);
write('       {');textcolor(white);write('Hit Points: ');Textcolor(8);Write(' Very High');
Textcolor(blue);write('                      {');textcolor(white);write('Hit Points: ');
textcolor(14);writeln(' Medium');
Textcolor(blue);
write('       {');textcolor(white);write('Mana Points:');Textcolor(8);write(' Medium');
Textcolor(blue);write('                         {');textcolor(white);write('Mana Points: ');
Textcolor(14);writeln('Medium');
Textcolor(8);
write('Knight:');Textcolor(blue);Write('{');textcolor(white);write('Damage:');textcolor(8);write('      Medium');
Textcolor(14);write('                  Monk: ');textcolor(blue);write(' {');textcolor(white);write('Damage: ');
Textcolor(14);writeln('     High');
Textcolor(blue);
Write('       {');textcolor(white);write('Accuracy:');textcolor(8);write('    Medium');
Textcolor(blue);write('                         {');textcolor(white);write('Accuracy:');
Textcolor(14);writeln('    Very High');
Textcolor(blue);Write('       {');textcolor(white);write('Armor:');textcolor(8);write('       Very High');
Textcolor(blue);Write('                      {');Textcolor(white);write('Armor:');
Textcolor(14);Writeln('       High');

mage.nume:=campion.nume;mage.hp:=100;mage.mana:=100;
mage.armura:=20;mage.damage:=50;mage.viteza_de_miscare:=100;
archer.nume:=campion.nume;archer.hp:=100;archer.mana:=30;
archer.armura:=10;archer.damage:=70;archer.viteza_de_miscare:=125;
knight.nume:=campion.nume;knight.hp:=100;knight.mana:=60;
knight.armura:=35;knight.damage:=30;knight.viteza_de_miscare:=80;
monk.nume:=campion.nume;monk.hp:=100;knight.mana:=80;
monk.armura:=30;monk.damage:=40;monk.viteza_de_miscare:=110;

repeat
 Textcolor(cyan);
 readln(campion.nume);
 x:=0;
 if campion.nume='Mage' then
  begin
  x:=1;
  campion:=Mage;
  end
    else
    if campion.nume='Archer' then
     begin
     x:=2;
     campion:=Archer;
     end
     else
     if campion.nume='Knight' then
      begin
      x:=3;
      campion:=Knight;
      end
      else
      if campion.nume='Monk' then
       begin
       x:=4;
       campion:=Monk;
       end;
 if x=0 then
  begin
  textcolor(Red);
  write('Unfortunately your desired class does not exist. Choose another class: ');
  end;
until x<>0;









write('hp',campion.hp,campion.damage);

Textcolor(blue);
write('');


readln;
readln;

end.                                                                                      
