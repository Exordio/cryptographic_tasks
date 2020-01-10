unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  c,b:string;
  i,j,k,l:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  c:='';
     b:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
     for i:=1 to length(Edit1.text) do
         for j:=1 to length(b) do begin
             k:=(j-StrToInt(edit2.text)+25) mod 26+1;
             if edit1.text[i]=b[j] then c:=c+b[k];
     edit3.text:=c;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   c:='';
     b:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    for l:=0 to 25 do BEGIN
     for i:=1 to length(Edit1.text) do
         for j:=1 to length(b) do begin
             k:=(j-l+25) mod 26+1;
             if edit1.text[i]=b[j] then c:=c+b[k];
     StringGrid1.cells[0,l]:=(inttostr(l)+' : '+c);
      END;
     delete(c,1,length(c));
end;
    end;
end.

