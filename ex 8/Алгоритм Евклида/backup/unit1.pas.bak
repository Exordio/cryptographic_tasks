unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
VAR
   x1,x2:Integer;
BEGIN
   x1:=StrToInt(Edit1.Text);
   x2:=StrToInt(Edit2.Text);
   if (x1=0) or (x2=0) then ShowMessage('Введенное число меньше нуля. Введите число больше нуля.');
   while x1<>x2 do
    if x1>x2 then
    x1:=x1-x2
   else x2:=x2-x1;
   Edit3.Text:=IntToStr(x1);
END;

end.

