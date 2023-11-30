unit HistoricoPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.MySQLDef, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.VCLUI.Wait;

type
  TForm8 = class(TForm)
    LblHist: TLabel;
    GridHistory: TDBGrid;
    QueryHistory: TFDQuery;
    FDPhysMySQLDriverLink2: TFDPhysMySQLDriverLink;
    conDB: TFDConnection;
    dsHistory: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

end.
