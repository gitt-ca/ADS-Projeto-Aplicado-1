unit Principal;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.jpeg, Vcl.WinXCalendars, Vcl.Imaging.pngimage;
type
  TForm4 = class(TForm)
    pnl1: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    imgLogoPrincipal: TImage;
    btn3: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses
   TelaAgendamento, TelaCadPaciente, TelaCadMedic;

procedure TForm4.btn1Click(Sender: TObject);
begin
 Form5:= TForm5.Create(nil);
 try
 Form5.ShowModal;
 finally
 FreeAndNil(Form5);
 end;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
 Form6:= TForm6.Create(nil);
 try
 Form6.ShowModal;
 finally
 FreeAndNil(Form6);
 end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
 Form7:= TForm7.Create(nil);
 try
 Form7.ShowModal;
 finally
 FreeAndNil(Form7);
 end;
end;

end.

