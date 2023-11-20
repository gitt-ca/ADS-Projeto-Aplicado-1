unit Cadastro;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI;
type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    pnlLogin: TPanel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    edtUser: TEdit;
    edtPass: TEdit;
    btn2: TButton;
    lbl12: TLabel;
    UsuarioTable: TFDQuery;
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    edtPassAgain: TEdit;
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form3: TForm3;
implementation
{$R *.dfm}
procedure TForm3.btn2Click(Sender: TObject);
begin


  //OBS: criar funcao para valida��o de campos preenchidos ou mais IFs

  if edtPass.Text = edtPassAgain.text then

    begin
    UsuarioTable.SQL.Text := 'INSERT INTO Usuario (Usuario, Senha, id_paciente, id_funcionario) VALUES(:valor1, :valor2, 1, 1 )';
    UsuarioTable.Params.ParamByName('valor1').Value := edtUser.text;
    UsuarioTable.Params.ParamByName('valor2').Value := edtPass.text;
    UsuarioTable.ExecSQL;
    ShowMessage('Registro inserido com sucesso!');
    end

  else

  ShowMessage('Senha n�o s�o equivalentes!');


end;

end.
