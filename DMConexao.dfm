object DataModule2: TDataModule2
  Height = 258
  Width = 449
  object conConexao: TFDConnection
    Params.Strings = (
      'Database=healthfamilycenter'
      'User_Name=root'
      'DriverID=MySQL')
    Left = 104
    Top = 72
  end
  object fdphysmysqldrvrlnkDriver: TFDPhysMySQLDriverLink
    Left = 112
    Top = 136
  end
  object fdgxwtcrsr1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 208
    Top = 72
  end
end
