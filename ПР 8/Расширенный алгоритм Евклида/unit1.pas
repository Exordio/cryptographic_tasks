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
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
var
a,b,d,x,y,x1,y1,x2,y2,q,r:Longint;
begin
     if (edit1.Text='') or (edit2.Text='') then
        showmessage('Поля значений нельзя оставлять пустыми.')
     else
     begin
          a:=strtoint(edit1.text);
          b:=strtoint(edit2.Text);
     if b=0 then
     begin
          d:=a;
          x:=1;
          y:=0
     end
     else
     begin
         x1:=0;
         x2:=1;
         y1:=1;
         y2:=0;
     while b>0 do
     begin
          q:=a div b;
          r:=a-q*b;
          x:=x2-q*x1;
          y:=y2-q*y1;
          a:=b;
          b:=r;
          x2:=x1;
          x1:=x;
          y2:=y1;
          y1:=y
      end;
          d:=a;
          x:=x2;
          y:=y2;
      end;
      end;
      edit5.Text:=inttostr(d);
      edit3.text:=inttostr(x);
      Edit4.Text:=inttostr(y);
end;

end.

