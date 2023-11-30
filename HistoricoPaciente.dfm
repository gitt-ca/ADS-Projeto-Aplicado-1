object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 478
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LblHist: TLabel
    Left = 192
    Top = 8
    Width = 305
    Height = 45
    Caption = 'Hist'#243'rico do Paciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object GridHistory: TDBGrid
    Left = 16
    Top = 59
    Width = 689
    Height = 411
    DataSource = dsHistory
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeUsuario'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BatimentoCardiaco'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PassosDia'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OxigenacaoSangue'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HorasSono'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end>
  end
  object QueryHistory: TFDQuery
    Active = True
    Connection = conDB
    SQL.Strings = (
      
        'select paciente.NomeUsuario,Historico.BatimentoCardiaco,Historic' +
        'o.PassosDia,Historico.OxigenacaoSangue,Historico.HorasSono,Histo' +
        'rico.Data from Historico inner join paciente on paciente.id=Hist' +
        'orico.id_paciente;'
      '')
    Left = 616
    Top = 16
  end
  object FDPhysMySQLDriverLink2: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\vitor\OneDrive\Documentos\GitHub\Health-Family-Center\l' +
      'ibmySQL.dll'
    Left = 24
    Top = 8
  end
  object conDB: TFDConnection
    Params.Strings = (
      'Database=HealthFamilyCenter'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    Left = 536
    Top = 16
  end
  object dsHistory: TDataSource
    DataSet = QueryHistory
    Left = 88
    Top = 8
  end
end
