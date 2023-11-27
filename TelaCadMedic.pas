unit TelaCadMedic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm7 = class(TForm)
    imgLogoPrincipal: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtCRM: TLabel;
    lblEndereco: TLabel;
    pnl1: TPanel;
    lbl7: TLabel;
    edtNomePaciente: TEdit;
    edtTelefonePaciente: TEdit;
    edtEmailPaciente: TEdit;
    edtCpfPaciente: TEdit;
    edtIdadePaciente: TEdit;
    edtEnderecoPaciente: TEdit;
    btnSalvar: TBitBtn;
    conConCadMed: TFDConnection;
    fdphysmysqldrvrlnkPaci: TFDPhysMySQLDriverLink;
    MedQuery: TFDQuery;
    fdqryQueryPaci: TFDQuery;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.btnSalvarClick(Sender: TObject);

begin
  // Verificar se os campos obrigat�rios est�o preenchidos antes de inserir
  if (edtNomePaciente.Text <> '') and (edtTelefonePaciente.Text <> '') and
     (edtEmailPaciente.Text <> '') and (edtCpfPaciente.Text <> '') and
     (edtIdadePaciente.Text <> '') and (edtEnderecoPaciente.Text <> '') then
  begin
    // Inserir dados no banco de dados usando um componente de query, como TFDQuery
    MedQuery.SQL.Text := 'INSERT INTO Paciente (NomeUsuario, Idade, CPF, endereco, email, telefone) ' +
      'VALUES (:NomeUsuario, :Idade, :CPF, :endereco, :email, :telefone)';
    MedQuery.Params.ParamByName('NomeUsuario').Value := edtNomePaciente.Text;
    MedQuery.Params.ParamByName('Idade').Value := StrToIntDef(edtIdadePaciente.Text, 0);
    MedQuery.Params.ParamByName('CPF').Value := edtCpfPaciente.Text;
    MedQuery.Params.ParamByName('endereco').Value := edtEnderecoPaciente.Text;
    MedQuery.Params.ParamByName('email').Value := edtEmailPaciente.Text;
    MedQuery.Params.ParamByName('telefone').Value := edtTelefonePaciente.Text;
    try
      MedQuery.ExecSQL; // Executa a inser��o no banco de dados
      ShowMessage('Dados inseridos com sucesso!');
      // Limpar os campos ap�s a inser��o, se necess�rio
      edtNomePaciente.Clear;
      edtTelefonePaciente.Clear;
      edtEmailPaciente.Clear;
      edtCpfPaciente.Clear;
      edtIdadePaciente.Clear;
      edtEnderecoPaciente.Clear;
      // Atualizar o DBGrid com os dados inseridos, se necess�rio
      // DataModule.FDQueryGrid.Refresh; // Use o m�todo correto para atualizar o DBGrid
    except
      on E: Exception do
        ShowMessage('Erro ao inserir dados: ' + E.Message);
    end;
    MedQuery.Close;
  end
  else
    ShowMessage('Preencha todos os campos obrigat�rios!');
end;

end.
