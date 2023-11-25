object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbl1: TLabel
    Left = 8
    Top = 318
    Width = 29
    Height = 15
    Caption = 'Idade'
  end
  object lbl2: TLabel
    Left = 8
    Top = 91
    Width = 89
    Height = 15
    Caption = 'Nome Completo'
  end
  object lbl3: TLabel
    Left = 8
    Top = 147
    Width = 44
    Height = 15
    Caption = 'Telefone'
  end
  object lbl4: TLabel
    Left = 8
    Top = 257
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object lbl5: TLabel
    Left = 8
    Top = 207
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object lbl6: TLabel
    Left = 423
    Top = 87
    Width = 100
    Height = 15
    Caption = 'Busca de pacientes'
  end
  object lblEndereco: TLabel
    Left = 192
    Top = 91
    Width = 62
    Height = 15
    Caption = 'lblEndereco'
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 78
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 577
    object lbl7: TLabel
      Left = 14
      Top = 22
      Width = 191
      Height = 25
      Caption = 'Cadastro Paciente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbnvgr1: TDBNavigator
      Left = 285
      Top = 22
      Width = 270
      Height = 35
      DataSource = DM.dsPaciente
      TabOrder = 0
    end
  end
  object dbgrd1: TDBGrid
    Left = 349
    Top = 134
    Width = 279
    Height = 206
    DataSource = DM.dsPaciente
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'PACIENTES CADASTRADOS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -10
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 262
        Visible = True
      end>
  end
  object edtBusca: TEdit
    Left = 348
    Top = 108
    Width = 272
    Height = 20
    TabOrder = 2
  end
  object edtNomePaciente: TEdit
    Left = 8
    Top = 108
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object edtTelefonePaciente: TEdit
    Left = 8
    Top = 160
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object edtEmailPaciente: TEdit
    Left = 8
    Top = 220
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object edtCpfPaciente: TEdit
    Left = 8
    Top = 270
    Width = 121
    Height = 23
    TabOrder = 6
  end
  object edtIdadePaciente: TEdit
    Left = 8
    Top = 331
    Width = 121
    Height = 23
    TabOrder = 7
  end
  object edtEnderecoPaciente: TEdit
    Left = 168
    Top = 108
    Width = 121
    Height = 23
    TabOrder = 8
  end
  object btnSalvar: TBitBtn
    Left = 192
    Top = 330
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 9
    OnClick = btnSalvarClick
  end
  object conConCadPaci: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=healthfamilycenter'
      'DriverID=MySQL')
    Left = 312
    Top = 368
  end
  object fdphysmysqldrvrlnkPaci: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\vitor\OneDrive\Documentos\GitHub\Health-Family-Center\l' +
      'ibmySQL.dll'
    Left = 424
    Top = 368
  end
  object fdqryQueryPaci: TFDQuery
    Connection = conConCadPaci
    Left = 544
    Top = 368
  end
end
