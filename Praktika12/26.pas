program Project1;

{$mode objfpc}{$H+}

uses
  Classes, SysUtils
  { you can add units after this };
type PCType = (PCGame, PCWork, PCSup);
type Comp = packed record
     inv : longint;
     room : byte;
     clock : longint;
     ram : longint;
     hdd : longint;
     case TAG : PCType of
          PCGame:
                 (vram : longint;
                 di : byte;
                 scan : byte);
          PCWork:
                 (net : byte);
          PCSup:
                (Ncpu : byte);
end;
{$IFDEF WINDOWS}{$R Project1.rc}{$ENDIF}

var
   PCs : array[1..100] of Comp;
   curr : byte;

procedure EnterComp;
var
   c : byte;
begin
     repeat
     inc(curr);
     writeln('Enter computer char-s [Inv. no, Room, CPU clock, RAM, HDD]: ');
     readln(PCs[curr].inv, PCs[curr].room,
     PCs[curr].clock, PCs[curr].ram, PCs[curr].hdd);
     writeln('Enter PC type [1 - Game, 2 - Work, 3 - Super]: ');
     readln(c);
     case c of
          1: begin PCs[curr].TAG := PCGame;
                  writeln('Enter Game char-s [VRAM, Screen, Scaner]: ');
                  readln(PCs[curr].vram, PCs[curr].di, PCs[curr].scan); end;
          2: begin PCs[curr].TAG := PCWork;
                  writeln('Enter Work char-s [Network]: ');
                  readln(PCs[curr].net); end;
          3: begin PCs[curr].TAG := PCSup;
                 writeln('Enter Super char-s [CPU Count]: ');
                 readln(PCs[curr].Ncpu); end;
     end;

     write('Next? [0/1]: ');
     readln(c);
     until c = 0;
end;

procedure CalcMid;
var
   midV: array [0..2]of array [0..3] of longint;
   i,j : byte;
begin
     for i := 0 to 2 do
         for j := 0 to 3 do midV[i][j] := 0;
   for i := 1 to curr do  begin
               inc(midV[ord(PCs[i].TAG)][0]);
               midV[ord(PCs[i].TAG)][1] := midV[ord(PCs[i].TAG)][1] + PCs[i].clock;
               midV[ord(PCs[i].TAG)][2] := midV[ord(PCs[i].TAG)][2] + PCs[i].ram;
               midV[ord(PCs[i].TAG)][3] := midV[ord(PCs[i].TAG)][3] + PCs[i].hdd;
   end;

   writeln('Middle values of:');
   writeln('Type      Clock     RAM       HDD');

   if(midV[0][0] <> 0) then begin
                 write('Game      ');
                 write(midV[0][1]/midV[0][0]:10:1);
                 write(midV[0][2]/midV[0][0]:10:1);
                 writeln(midV[0][3]/midV[0][0]:10:1);
   end;

   if(midV[1][0] <> 0) then begin
                 write('Work      ');
                 write(midV[1][1]/midV[1][0]:10:1);
                 write(midV[1][2]/midV[1][0]:10:1);
                 writeln(midV[1][3]/midV[1][0]:10:1);
   end;

   if(midV[1][0] <> 0) then begin
                 write('Super     ');
                 write(midV[2][1]/midV[2][0]:10:5);
                 write(midV[2][2]/midV[2][0]:10:5);
                 writeln(midV[2][3]/midV[2][0]:10:5);
   end;
end;

procedure BestSup;
var
   max,i : byte;
begin
   max := 0;
   for i := 1 to curr do begin
       if(PCs[i].TAG = PCSup) then begin
                     if(max = 0) then max := i;
                     if(PCs[max].Ncpu < PCs[i].Ncpu) then max := i;
       end;
   end;

   writeln('Best PC has inv.No ',PCs[max].inv,
   ' and located in room No ',PCs[max].room);
end;

procedure BestGame;
var
   i,vr,di : longint;
begin
   vr := 0;
   di := 0;
   for i := 1 to curr do begin
       if(PCs[i].TAG = PCGame) then begin
                     if(vr = 0) then vr := i;
                     if(di = 0) then di := i;
                     if(PCs[vr].vram < PCs[i].vram) then vr := i;
                     if(PCs[di].di < PCs[i].di) then di := i;
                     if(PCs[i].scan = 1) then
                     writeln('Computer in room ',PCs[i].room,' has scaner');
       end;
   end;

   writeln('Computer with best display has inv.No ', PCs[di].inv);
   writeln('Computer with best VRAM has inv.No ', PCs[vr].inv);

end;

procedure Print;
var
   i : byte;
begin
     writeln('PC Inv.no   Room   Clock   RAM  HDD');
     for i := 1 to curr do begin
         write(i);
         write(' ',PCs[i].inv);
         write(' ', PCs[i].room);
         write(' ',PCs[i].clock);
         write(' ',PCs[i].ram);
         writeln(' ',PCs[i].hdd);

         write('Type ');
         case PCs[i].TAG of
              PCGame: begin
                      write('Game');
                      write(', VRAM ',PCs[i].vram);
                      write(', Display ', PCs[i].di);
                      write(', Scaner ',PCs[i].scan); end;
              PCWork: begin
                      write('Work');
                      write(', Network ',PCs[i].net); end;
              PCSup: begin
                      write('Super');
                      write(', CPU count ', PCs[i].Ncpu);  end;
         end;
         writeln; writeln;
     end;
end;

procedure Help;
begin
     writeln('Keys');
     writeln('0 - Help');
     writeln('1 - Add new record(s)');
     writeln('2 - Calculate middle values');
     writeln('3 - Find best Super computer');
     writeln('4 - Find best Game computer');
     writeln('5 - Print computer list');
     writeln('6 - Exit');
end;

var
   num : byte;
   f : file of Comp;
   c,i : byte;
begin
     curr := 0;
     num := 0;
     assign(f, 'data.db');
     reset(f);

     while(NOT eof(f)) do begin
               inc(curr);
               read(f,PCs[curr]);
     end;
     close(f);

     num := curr;

     repeat
           write('Action (0 for help): ');
           readln(c);
           case c of
                0 : Help;
                1 : EnterComp;
                2 : CalcMid;
                3 : BestSup;
                4 : BestGame;
                5 : Print;
           end;
     until c = 6;

     if(num <> curr) then begin
            writeln('New records has been added');
            write('1 - Append, 2 - Rewrite, 3 - Forget: ');
            readln(c);
            if(c = 1) then begin
                 rewrite(f);
                 for i := 1 to curr do write(f, PCs[i]);
                 close(f);
            end;
            if(c = 2) then begin
                 rewrite(f);
                 for i := num +1 to curr do write(f, PCs[i]);
                 close(f);
            end;
     end;
     writeln('Happy new year!');
     readln;
end.

