unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
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
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
 var c,b,c1,b2:string;
i,j,k:integer;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
     c:='';
     b:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
     for i:=1 to length(Edit1.text) do
         for j:=1 to length(b) do begin
             k:=(j+StrToInt(edit2.text)) mod 26;
             if edit1.text[i]=b[j] then c:=c+b[k];
             end;
     edit3.text:=c;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   c1:='';
   b2:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
   for i:=1 to length(Edit4.text) do
       for j:=1 to length(b2) do begin
             k:=(j-StrToInt(edit5.text)+25) mod 26+1;
             if edit4.text[i]=b2[j] then c1:=c1+b2[k];
       end;
   edit6.text:=c1;
end;


begin

end.

