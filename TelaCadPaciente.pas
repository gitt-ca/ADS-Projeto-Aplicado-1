unit TelaCadPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Imaging.pngimage;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    pnl1: TPanel;
    lbl7: TLabel;
    edtNomePaciente: TEdit;
    edtTelefonePaciente: TEdit;
    edtEmailPaciente: TEdit;
    edtCpfPaciente: TEdit;
    edtIdadePaciente: TEdit;
    lblEndereco: TLabel;
    edtEnderecoPaciente: TEdit;
    btnSalvar: TBitBtn;
    conConCadPaci: TFDConnection;
    fdphysmysqldrvrlnkPaci: TFDPhysMySQLDriverLink;
    fdqryQueryPaci: TFDQuery;
    imgLogoPrincipal: TImage;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btnSalvarClick(Sender: TObject);
begin
  // Verificar se os campos obrigatórios estão preenchidos antes de inserir
  if (edtNomePaciente.Text <> '') and (edtTelefonePaciente.Text <> '') and
     (edtEmailPaciente.Text <> '') and (edtCpfPaciente.Text <> '') and
     (edtIdadePaciente.Text <> '') and (edtEnderecoPaciente.Text <> '') then
  begin
    // Inserir dados no banco de dados usando um componente de query, como TFDQuery
    fdqryQueryPaci.SQL.Text := 'INSERT INTO Paciente (NomeUsuario, Idade, CPF, endereco, email, telefone) ' +
      'VALUES (:NomeUsuario, :Idade, :CPF, :endereco, :email, :telefone)';
    fdqryQueryPaci.Params.ParamByName('NomeUsuario').Value := edtNomePaciente.Text;
    fdqryQueryPaci.Params.ParamByName('Idade').Value := StrToIntDef(edtIdadePaciente.Text, 0);
    fdqryQueryPaci.Params.ParamByName('CPF').Value := edtCpfPaciente.Text;
    fdqryQueryPaci.Params.ParamByName('endereco').Value := edtEnderecoPaciente.Text;
    fdqryQueryPaci.Params.ParamByName('email').Value := edtEmailPaciente.Text;
    fdqryQueryPaci.Params.ParamByName('telefone').Value := edtTelefonePaciente.Text;
    try
      fdqryQueryPaci.ExecSQL; // Executa a inserção no banco de dados
      ShowMessage('Dados inseridos com sucesso!');
      // Limpar os campos após a inserção, se necessário
      edtNomePaciente.Clear;
      edtTelefonePaciente.Clear;
      edtEmailPaciente.Clear;
      edtCpfPaciente.Clear;
      edtIdadePaciente.Clear;
      edtEnderecoPaciente.Clear;
      // Atualizar o DBGrid com os dados inseridos, se necessário
      // DataModule.FDQueryGrid.Refresh; // Use o método correto para atualizar o DBGrid
    except
      on E: Exception do
        ShowMessage('Erro ao inserir dados: ' + E.Message);
    end;
    fdqryQueryPaci.Close;
  end
  else
    ShowMessage('Preencha todos os campos obrigatórios!');
end;
end.

