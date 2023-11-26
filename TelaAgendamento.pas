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
    FDQuery4: TFDQuery;
    BitBtn4: TBitBtn;
    CalendarView1: TCalendarView;
    nomPaci: TEdit;
    edtData: TEdit;
    edtHora: TEdit;
    edtMedic: TEdit;
    lblAssunto: TLabel;
    edtAssunto2: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

end.
