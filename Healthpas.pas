unit Healthpas;

  interface
    uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
    Vcl.Imaging.pngimage, Cadastro;
  type
  TForm2 = class(TForm)
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    pnlLogin: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ediUser: TEdit;
    edtPass: TEdit;
    Button1: TButton;
    btnBtnCadastro: TButton;
    procedure btnBtnCadastroClick(Sender: TObject);
  private

  public

  end;
  var
  Form2 : TForm2;

  implementation
  {$R *.dfm}
  procedure TForm2.btnBtnCadastroClick(Sender: TObject);
  var
    Cad : TForm3;
  begin
  	cad.ShowModal;

  end;


end.
