unit TelaPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    pnl1: TPanel;
    lbl7: TLabel;
    dbnvgr1: TDBNavigator;
    dbedtid: TDBEdit;
    dbedtnome: TDBEdit;
    dbedtcelular: TDBEdit;
    dbedtdata_cadastro: TDBEdit;
    dbedtcpf: TDBEdit;
    dbgrd1: TDBGrid;
    edtBusca: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

end.
