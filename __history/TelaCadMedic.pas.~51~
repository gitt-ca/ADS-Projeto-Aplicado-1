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
    edtNomeMed: TEdit;
    btnSalvar: TBitBtn;
    conConCadMed: TFDConnection;
    fdphysmysqldrvrlnkPaci: TFDPhysMySQLDriverLink;
    MedQuery: TFDQuery;
    fdqryQueryPaci: TFDQuery;
    edtCPF: TEdit;
    editiCRM: TEdit;
    edtEspeci: TEdit;
    edtFuncao: TEdit;
    edtEmail: TEdit;
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
  // Verificar se os campos obrigatórios estão preenchidos antes de inserir
  if (edtNomeMed.Text <> '') and (edtCPF.Text <> '') and
     (editiCRM.Text <> '') and (edtEspeci.Text <> '') and
     (edtFuncao.Text <> '') and (edtEmail.Text <> '') then
  begin
    // Inserir dados no banco de dados usando um componente de query, como TFDQuery
    MedQuery.SQL.Text := 'INSERT INTO Funcionario (NomeFuncionario, CPF, CRM, Especialidade, Funcao, email, ativo)' +
      'VALUES (:NomeFunc, :CPF, :CRM,:Especialidade, :Funcao, :email, 1)';
    MedQuery.Params.ParamByName('NomeFunc').Value := edtNomeMed.Text;
    MedQuery.Params.ParamByName('CPF').Value := edtCPF.text;
    MedQuery.Params.ParamByName('CRM').Value := editiCRM.Text;
    MedQuery.Params.ParamByName('Especialidade').Value := edtEspeci.Text;
    MedQuery.Params.ParamByName('Funcao').Value := edtFuncao.Text;
    MedQuery.Params.ParamByName('email').Value := edtEmail.Text;
    try
      MedQuery.ExecSQL; // Executa a inserção no banco de dados
      ShowMessage('Dados inseridos com sucesso!');
      // Limpar os campos após a inserção, se necessário
      edtNomeMed.Clear;
      edtCPF.Clear;
      editiCRM.Clear;
      edtEspeci.Clear;
      edtFuncao.Clear;
      edtEmail.Clear;
      // Atualizar o DBGrid com os dados inseridos, se necessário
      // DataModule.FDQueryGrid.Refresh; // Use o método correto para atualizar o DBGrid
    except
      on E: Exception do
        ShowMessage('Erro ao inserir dados: ' + E.Message);
    end;
    MedQuery.Close;
  end
  else
    ShowMessage('Preencha todos os campos obrigatórios!');
end;

end.
