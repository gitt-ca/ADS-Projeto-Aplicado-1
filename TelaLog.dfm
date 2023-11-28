object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblLLabelGrid: TLabel
    Left = 232
    Top = 90
    Width = 184
    Height = 32
    Caption = 'Historico de Logs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object GridLog1: TStringGrid
    Left = 96
    Top = 128
    Width = 441
    Height = 225
    TabOrder = 0
  end
  object conGridLogs: TFDConnection
    Left = 136
    Top = 392
  end
  object fdphysmysqldrvrlngridLogsDriver: TFDPhysMySQLDriverLink
    Left = 288
    Top = 392
  end
  object fdqryQueryGridLog: TFDQuery
    Connection = conGridLogs
    Left = 440
    Top = 392
  end
end
