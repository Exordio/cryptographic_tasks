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
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
Form1: TForm1;
i, j, l, a: integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
a:=StrToInt(Edit1.Text);
For i:=1 to a do begin
j:=2; l:=round(sqrt(i));
While (i mod j <>0) and (j<=l) do inc(j);
if (j>l) Then Begin  Memo1.Lines[i]:=IntToStr(i);
end;
end;
end;



end.

