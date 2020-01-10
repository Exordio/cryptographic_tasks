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
Var
r:String;
i,j:Word;
Begin
     If (Edit1.Text='') or (edit2.text='')then
        showmessage('Нельзя оставлять пустые поля.')
     else
         Begin
         r:='';
         i:=1;
         While i<=Length(Edit1.Text) do
               Begin
               For j:=1 to Length(Edit2.Text) do
                   r:=r+chr(ord(Edit1.Text[i+j-1]) xor ord(Edit2.Text[j]));
                   i:=i+Length(Edit2.Text);
                   Edit3.Text:=r;
               End;
End;
End;

End.

