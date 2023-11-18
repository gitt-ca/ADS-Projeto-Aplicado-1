object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object conConexao: TFDConnection
    Params.Strings = (
      'Database=healthfamilycenter'
      'User_Name=root'
      'DriverID=MySQL')
    Left = 64
    Top = 64
  end
  object fdphysmysqldrvrlnk1: TFDPhysMySQLDriverLink
    Left = 184
    Top = 72
  end
end
