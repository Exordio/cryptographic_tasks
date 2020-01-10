unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids,  ExtCtrls, ActnList, Menus, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PageControl1: TPageControl;
    StringGrid1: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  x,y,i,j,kek:integer;
  Alphabet:string;
  podm:array [1..26,1..26] of char;


implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);  // Вывод tabula recta в Stringgrid1
begin
  for i:=1 to 26 do begin
      for j:=1 to 26 do
          StringGrid1.cells[j,i]:=Alphabet[j];
      Alphabet[length(Alphabet)]:=Alphabet[1];
      Alphabet[1]:=' ';
      for kek:=1 to 26 do
          Alphabet[kek]:=Alphabet[kek+1];
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);   //Расшифровка
var JJ,output,key:string;
    sear,yy,xx:integer;
begin
  if (length(edit4.text)) and (length(Edit5.text)) = 0 then exit;

  key:=Edit5.text;
  jj:=edit4.text;
  for sear:=1 to length(jj) do begin
      for i:=1 to 26 do
        if podm[i,1] = key[sear] then xx:=i;
      for i:=1 to 26 do   //тут использовал переменные вместо массива, (использовал разные способы)
        if podm[xx,i] = jj[sear] then yy:=i;
     output:=output+podm[1,yy];
     end;
  edit6.text:=output;

end;

procedure TForm1.Button4Click(Sender: TObject);   //Случайная генерация ключа
 var strX:string;
begin
  randomize;
     delete(strX,1,length(strX));
     for i:=1 to length(edit1.text) do
         strX:=strX+Alphabet[random(26)+1];
     Edit2.text:=strX;
end;


procedure TForm1.Button3Click(Sender: TObject);  //Зашифровка
var sear:integer;
    JJ,output,key:string;
    stolb,strok:array [1..50] of integer;
begin
   key:=Edit2.text;
   if length(key) = 0 then begin;
      key:=Edit1.text;
      edit2.text:=key;
   end;
  if length(Edit1.text) > length(key) then begin
     for i:=1 to (length(Edit1.text)-length(key)) do
         key:=key+key[i];
     showmessage('Длинна сообщения больше длинны ключа, было произведено дописывание ключа' + sLineBreak +
                 'Теперь ключ : ' + key);
     edit2.text:=key;
  end;
  if length(Edit1.text) < length(key) then begin
     for i:=length(key)-length(Edit1.text) downto 1 do
         Delete(key,length(key),1);
     showmessage('Длинна сообщения больше длинны ключа, был произведен срез ключа до нужных размеров' + sLineBreak +
                 'Теперь ключ : ' + key);
     edit2.text:=key;
  end;
  jj:=edit1.text;
    for sear:=1 to length(jj) do begin
       for i:=1 to 26 do
          if (alphabet[i] = jj[sear]) then stolb[sear]:=i;
       for i:=1  to 26 do
          if(alphabet[i] = key[sear]) then strok[sear]:=i;

       end;
    for i:=1 to length(jj) do
     output:=output+podm[stolb[i],strok[i]];

  edit3.text:=output;
     {delete(key,1,length(key));
     delete(jj,1,length(jj));
     delete(output,1,length(output));}
     end;


 begin                  //в основном теле программы генерация подматрицы, потому что со stringgrid оно ни в какую не хочет работать.
   Alphabet:='ABCDEFGHIJKLMNOPQRSTUVWXYZ ';
   for i:=1 to 26 do begin
      for j:=1 to 26 do
          podm[j,i]:=Alphabet[j];
      alphabet[27]:=Alphabet[1];
      Alphabet[1]:=' ';
      for kek:=1 to 26 do
         Alphabet[kek]:=Alphabet[kek+1];
   end;
end.
