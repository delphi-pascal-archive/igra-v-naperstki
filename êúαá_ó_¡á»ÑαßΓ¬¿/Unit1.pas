unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    ImageMoneta1: TImage;
    ImageMoneta2: TImage;
    ImageMoneta3: TImage;
    ImageShapka1: TImage;
    ImageShapka2: TImage;
    ImageShapka3: TImage;
    Timer1: TTimer;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImageShapka1Click(Sender: TObject);
    procedure ImageShapka2Click(Sender: TObject);
    procedure ImageShapka3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Moneta1,Moneta2,Moneta3:byte;
  Timee:Cardinal;
  Enable1:boolean;

implementation
{$R *.dfm}

procedure SpuskaneNaShapkite;forward;
procedure Sleepp(XX:cardinal);forward;
procedure Razmiana12;forward;
procedure Razmiana23;forward;
procedure Razmiana13;forward;
procedure Povdigane1;forward;
procedure Povdigane2;forward;
procedure Povdigane3;forward;

procedure Povdigane1;
var XX,Top:integer;
begin
Top:=Form1.ImageMoneta1.Top - Form1.ImageShapka1.Height - 25;
 While Form1.ImageShapka1.Top > Top-10 do
  begin
  Form1.ImageShapka1.Top:=Form1.ImageShapka1.Top -10;
  Sleepp(10);
  end;
end;

procedure Povdigane2;
var XX,Top:integer;
begin
Top:=Form1.ImageMoneta2.Top - Form1.ImageShapka2.Height - 25;
 While Form1.ImageShapka2.Top > Top-10 do
  begin
  Form1.ImageShapka2.Top:=Form1.ImageShapka2.Top -10;
  Sleepp(10);
  end;
end;

procedure Povdigane3;
var XX,Top:integer;
begin
Top:=Form1.ImageMoneta3.Top - Form1.ImageShapka3.Height - 25;
 While Form1.ImageShapka3.Top > Top-10 do
  begin
  Form1.ImageShapka3.Top:=Form1.ImageShapka3.Top -10;
  Sleepp(10);
  end;
end;

procedure Razmiana12;
var Left1,Left2,Top1,Top2,Razstoianie,XX:integer; MM:byte;
begin
MM:=Moneta1;
Moneta1:=Moneta2;
Moneta2:=MM;
Left1:=Form1.ImageShapka1.Left;
Left2:=Form1.ImageShapka2.Left;
Top1:=Form1.ImageShapka1.Top;
Top2:=Form1.ImageShapka2.Top;
Razstoianie:=Form1.ImageShapka2.Left - Form1.ImageShapka1.Left;
Razstoianie:=Razstoianie div 10;
 For XX:=1 to 5 do
  begin
  Form1.ImageShapka2.Left:=Form1.ImageShapka2.Left - Razstoianie;
  Form1.ImageShapka2.Top:=Form1.ImageShapka2.Top - 10;
  Form1.ImageShapka1.Left:=Form1.ImageShapka1.Left + Razstoianie;
  Form1.ImageShapka1.Top:=Form1.ImageShapka1.Top + 10;
  Sleepp(10);
  end;
 For XX:=1 to 5 do
  begin
  Form1.ImageShapka2.Left:=Form1.ImageShapka2.Left - Razstoianie;
  Form1.ImageShapka2.Top:=Form1.ImageShapka2.Top + 10;
  Form1.ImageShapka1.Left:=Form1.ImageShapka1.Left + Razstoianie;
  Form1.ImageShapka1.Top:=Form1.ImageShapka1.Top - 10;
  Sleepp(10);
  end;
Form1.ImageShapka1.Left:=Left1;
Form1.ImageShapka2.Left:=Left2;
Form1.ImageShapka1.Top:=Top1;
Form1.ImageShapka2.Top:=Top2;
end;

procedure Razmiana23;
var Left2,Left3,Top2,Top3,Razstoianie,XX:integer; MM:byte;
begin
MM:=Moneta2;
Moneta2:=Moneta3;
Moneta3:=MM;
Left2:=Form1.ImageShapka2.Left;
Left3:=Form1.ImageShapka3.Left;
Top2:=Form1.ImageShapka2.Top;
Top3:=Form1.ImageShapka3.Top;
Razstoianie:=Form1.ImageShapka3.Left - Form1.ImageShapka2.Left;
Razstoianie:=Razstoianie div 10;
 For XX:=1 to 5 do
  begin
  Form1.ImageShapka3.Left:=Form1.ImageShapka3.Left - Razstoianie;
  Form1.ImageShapka3.Top:=Form1.ImageShapka3.Top + 10;
  Form1.ImageShapka2.Left:=Form1.ImageShapka2.Left + Razstoianie;
  Form1.ImageShapka2.Top:=Form1.ImageShapka2.Top - 10;
  Sleepp(10);
  end;
 For XX:=1 to 5 do
  begin
  Form1.ImageShapka3.Left:=Form1.ImageShapka3.Left - Razstoianie;
  Form1.ImageShapka3.Top:=Form1.ImageShapka3.Top - 10;
  Form1.ImageShapka2.Left:=Form1.ImageShapka2.Left + Razstoianie;
  Form1.ImageShapka2.Top:=Form1.ImageShapka2.Top + 10;
  Sleepp(10);
  end;
Form1.ImageShapka2.Left:=Left2;
Form1.ImageShapka3.Left:=Left3;
Form1.ImageShapka2.Top:=Top2;
Form1.ImageShapka3.Top:=Top3;
end;

procedure Razmiana13;
var Left1,Left3,Top1,Top3,Razstoianie,XX:integer; MM:byte;
begin
MM:=Moneta1;
Moneta1:=Moneta3;
Moneta3:=MM;
Left1:=Form1.ImageShapka1.Left;
Left3:=Form1.ImageShapka3.Left;
Top1:=Form1.ImageShapka1.Top;
Top3:=Form1.ImageShapka3.Top;
Razstoianie:=Form1.ImageShapka3.Left - Form1.ImageShapka1.Left;
Razstoianie:=Razstoianie div 10;
 For XX:=1 to 5 do
  begin
  Form1.ImageShapka3.Left:=Form1.ImageShapka3.Left - Razstoianie;
  Form1.ImageShapka3.Top:=Form1.ImageShapka3.Top + 10;
  Form1.ImageShapka1.Left:=Form1.ImageShapka1.Left + Razstoianie;
  Form1.ImageShapka1.Top:=Form1.ImageShapka1.Top - 10;
  Sleepp(10);
  end;
 For XX:=1 to 5 do
  begin
  Form1.ImageShapka3.Left:=Form1.ImageShapka3.Left - Razstoianie;
  Form1.ImageShapka3.Top:=Form1.ImageShapka3.Top - 10;
  Form1.ImageShapka1.Left:=Form1.ImageShapka1.Left + Razstoianie;
  Form1.ImageShapka1.Top:=Form1.ImageShapka1.Top + 10;
  Sleepp(10);
  end;
Form1.ImageShapka1.Left:=Left1;
Form1.ImageShapka3.Left:=Left3;
Form1.ImageShapka1.Top:=Top1;
Form1.ImageShapka3.Top:=Top3;
end;


procedure Sleepp(XX:cardinal);
var NN:Cardinal;
begin
 For NN:=0 to XX do
   begin
   Sleep(1);
   Application.ProcessMessages;
   end;
end;

procedure SpuskaneNaShapkite;
var XX:Integer;
begin
XX:=Form1.ImageMoneta1.Top - Form1.ImageShapka1.Height - 50;
Form1.ImageShapka1.Top:=XX;
XX:=Form1.ImageMoneta1.Left + (Form1.ImageMoneta1.Width div 2);
XX:=XX - (Form1.ImageShapka1.Width div 2);
Form1.ImageShapka1.Left:=XX;
Form1.ImageShapka1.Visible:=True;

XX:=Form1.ImageMoneta2.Top - Form1.ImageShapka2.Height - 50;
Form1.ImageShapka2.Top:=XX;
XX:=Form1.ImageMoneta2.Left + (Form1.ImageMoneta2.Width div 2);
XX:=XX - (Form1.ImageShapka2.Width div 2);
Form1.ImageShapka2.Left:=XX;
Form1.ImageShapka2.Visible:=True;

XX:=Form1.ImageMoneta3.Top - Form1.ImageShapka3.Height - 50;
Form1.ImageShapka3.Top:=XX;
XX:=Form1.ImageMoneta3.Left + (Form1.ImageMoneta3.Width div 2);
XX:=XX - (Form1.ImageShapka3.Width div 2);
Form1.ImageShapka3.Left:=XX;
Form1.ImageShapka3.Visible:=True;
//-----------------------

 While Form1.ImageShapka1.Top < Form1.ImageMoneta1.Top -10 do
  begin
  Form1.ImageShapka1.Top:=Form1.ImageShapka1.Top +10;
  Form1.ImageShapka2.Top:=Form1.ImageShapka2.Top +10;
  Form1.ImageShapka3.Top:=Form1.ImageShapka3.Top +10;
  Sleepp(30);
  end;
Form1.ImageMoneta1.Visible:=False;
Form1.ImageMoneta2.Visible:=False;
Form1.ImageMoneta3.Visible:=False;

end;

procedure TForm1.FormShow(Sender: TObject);
var XX:byte;
begin
Randomize;
Form1.ImageShapka1.Visible:=False;
Form1.ImageShapka2.Visible:=False;
Form1.ImageShapka3.Visible:=False;
Form1.ImageMoneta1.Visible:=False;
Form1.ImageMoneta2.Visible:=False;
Form1.ImageMoneta3.Visible:=False;
Moneta1:=0;
Moneta2:=0;
Moneta3:=0;
XX:=Random(3)+1;
 Case XX of
 1:Form1.ImageMoneta1.Visible:=True;
 2:Form1.ImageMoneta2.Visible:=True;
 3:Form1.ImageMoneta3.Visible:=True;
 end;
 Case XX of
 1:Moneta1:=1;
 2:Moneta2:=1;
 3:Moneta3:=1;
 end;
Form1.Timer1.Enabled:=True;
Enable1:=False;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//
end;

procedure TForm1.ImageShapka1Click(Sender: TObject);
begin
IF Enable1=False Then Exit;
Enable1:=False;
Povdigane1;
Sleepp(300);
Povdigane2;
Sleepp(300);
Povdigane3;
end;

procedure TForm1.ImageShapka2Click(Sender: TObject);
begin
IF Enable1=False Then Exit;
Enable1:=False;
Povdigane2;
Sleepp(300);
Povdigane1;
Sleepp(300);
Povdigane3;
end;

procedure TForm1.ImageShapka3Click(Sender: TObject);
begin
IF Enable1=False Then Exit;
Enable1:=False;
Povdigane3;
Sleepp(300);
Povdigane2;
Sleepp(300);
Povdigane1;
end;

procedure TForm1.Button1Click(Sender: TObject);
var XX,NN,MM:integer;
begin
SpuskaneNaShapkite;
NN:=Random(15)+15;
 For XX:=1 to NN do
  begin
  MM:=Random(3)+1;
  Case MM of
  1:Razmiana12;
  2:Razmiana23;
  3:Razmiana13;
  end;
  Sleepp(100);
  end;
Enable1:=True;
IF Moneta1=1 Then Form1.ImageMoneta1.Visible:=True;
IF Moneta2=1 Then Form1.ImageMoneta2.Visible:=True;
IF Moneta3=1 Then Form1.ImageMoneta3.Visible:=True;
end;

end.
