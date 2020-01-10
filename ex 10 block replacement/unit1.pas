unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TLabeledEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qwe;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  r:longword;
  g:boolean;
implementation

{$R *.lfm}

{ TForm1 }

procedure tform1.qwe;
var text1,text2:string;block:array[1..4] of char;key:string[4];
  f:textfile;n,i:longword;z:char;k:array[1..4] of byte;q,j:byte;
begin
  text2:=''; if g=false then  r:=0;
  if opendialog1.Execute then begin
    assignfile(f,utf8toansi(opendialog1.filename));reset(f);
    for i:=0 to r do begin
    while eof(f)=false do begin read(f,z);
    text1:=text1+z;
    end;
    if g=true then
    begin read(f,z);text1:=text1+z;end;
    end;
    closefile(f);
    key:=utf8toansi(edit1.text);
    for i:=1 to 4 do
    k[i]:=strtoint(key[i]);
    while length(text1) mod 4 <>0 do text1:=text1+chr(0);
    n:=length(text1) div 4;i:=1;
    while i<=n do begin
      block:=copy(text1,i*4-3,4);
      for j:=1 to 4 do begin
        q:=k[j];z:=block[j];
        {$asmmode Intel}
        asm
          mov ax,z
          mov bx,q
          btc ax,bx
          mov z,ax
        end;
        block[j]:=z;
      end;
      text2:=text2+block;
      i:=i+1;
    end;
     for i:=1 to length(text2) do if text2[i]=chr(26) then r:=r+1;
  if savedialog1.Execute then begin
    assignfile(f,utf8toansi(savedialog1.filename));rewrite(f);
    for i:=1 to length(text2) do
    write(f,text2[i]);
    closefile(f);
  end; end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  g:=false;qwe;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  g:=true;qwe;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ShowMessage('Программу выполнил студент группы З-309 Шагиев Рамиль.');
end;

end.

