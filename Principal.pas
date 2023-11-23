unit Principal;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.jpeg, Vcl.WinXCalendars;
type
  TForm4 = class(TForm)
    pnl1: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure btn1Click(Sender: TObject);

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
   TelaAgendamento;

procedure TForm4.btn1Click(Sender: TObject);
begin
 Form5:= TForm5.Create(nil);
 try
 Form5.ShowModal;
 finally
 FreeAndNil(Form5);
 end;
end;

end.

