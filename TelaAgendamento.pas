unit TelaAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Buttons, Vcl.WinXCalendars,
  Vcl.ComCtrls;

type
  TForm5 = class(TForm)
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    pnl1: TPanel;
    lbl7: TLabel;
    FDConnection4: TFDConnection;
    FDPhysMySQLDriverLink4: TFDPhysMySQLDriverLink;
    QueryAgenda: TFDQuery;
    BitBtnSalvar: TBitBtn;
    edtNomePaciente: TEdit;
    edtHora: TEdit;
    edtTitulo: TEdit;
    lblAssunto: TLabel;
    edtAssunto: TEdit;
    edtDate: TLabel;
    CalendarView1: TCalendarView;
    procedure FormCreate(Sender: TObject);
    procedure CalendarView1Change(Sender: TObject);
    procedure BitBtnSalvarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  tmp1: String;

implementation

{$R *.dfm}


procedure TForm5.BitBtnSalvarClick(Sender: TObject);
begin

begin
  // Verificar se os campos obrigat�rios est�o preenchidos antes de inserir
  if (edtNomePaciente.Text <> '') and (edtDate.Caption <> '') and
     (edtHora.Text <> '') and (edtTitulo.Text <> '') and
     (edtAssunto.Text <> '') then
  begin


    // Inserir dados no banco de dados usando um componente de query, como TFDQuery
    QueryAgenda.SQL.Text := 'INSERT INTO Agendamento (datahora, titulo, texto) ' +
      'VALUES (:valor0 :valor1, :valor2, :valor3)';
    QueryAgenda.Params.ParamByName('valor0').Value := edtDate.Caption;
    QueryAgenda.Params.ParamByName('valor1').Value := edtHora.Text;
    QueryAgenda.Params.ParamByName('valor2').Value := edtTitulo.Text;
    QueryAgenda.Params.ParamByName('valor3').Value := edtAssunto.Text;

    try
      QueryAgenda.ExecSQL; // Executa a inser��o no banco de dados
      ShowMessage('Dados inseridos com sucesso!');
      // Limpar os campos ap�s a inser��o, se necess�rio
      edtNomePaciente.Clear;
      edtTitulo.Clear;
      edtAssunto.Clear;

      // Atualizar o DBGrid com os dados inseridos, se necess�rio
      // DataModule.FDQueryGrid.Refresh; // Use o m�todo correto para atualizar o DBGrid
    except
      on E: Exception do
        ShowMessage('Erro ao inserir dados: ' + E.Message);
    end;
    QueryAgenda.Close;
  end
  else
    ShowMessage('Preencha todos os campos obrigat�rios!');
end;


end;

procedure TForm5.CalendarView1Change(Sender: TObject);
begin
  // Este evento � acionado quando o usu�rio seleciona uma data no CalendarView
  // Atualize o TLabel com a data selecionada

  edtDate.Caption := FormatDateTime('yyyy-mm-dd',CalendarView1.Date);
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  edtDate.Caption := FormatDateTime('yyyy-mm-dd',CalendarView1.Date);
end;


end.
