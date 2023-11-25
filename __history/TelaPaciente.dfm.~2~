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
    Left = 14
    Top = 91
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object lbl2: TLabel
    Left = 14
    Top = 147
    Width = 89
    Height = 15
    Caption = 'Nome Completo'
  end
  object lbl3: TLabel
    Left = 14
    Top = 199
    Width = 37
    Height = 15
    Caption = 'Celular'
  end
  object lbl4: TLabel
    Left = 147
    Top = 91
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object lbl5: TLabel
    Left = 127
    Top = 199
    Width = 93
    Height = 15
    Caption = 'Data de Cadastro '
  end
  object lbl6: TLabel
    Left = 279
    Top = 91
    Width = 100
    Height = 15
    Caption = 'Busca de pacientes'
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
      Width = 202
      Height = 25
      Caption = 'Cadastro Pacientes'
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
  object dbedtid: TDBEdit
    Left = 14
    Top = 108
    Width = 36
    Height = 20
    DataField = 'id'
    DataSource = DM.dsPaciente
    ReadOnly = True
    TabOrder = 1
  end
  object dbedtnome: TDBEdit
    Left = 14
    Top = 164
    Width = 217
    Height = 20
    DataField = 'nome'
    DataSource = DM.dsPaciente
    TabOrder = 2
  end
  object dbedtcelular: TDBEdit
    Left = 14
    Top = 216
    Width = 92
    Height = 20
    DataField = 'celular'
    DataSource = DM.dsPaciente
    MaxLength = 15
    TabOrder = 3
  end
  object dbedtdata_cadastro: TDBEdit
    Left = 127
    Top = 216
    Width = 69
    Height = 20
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    MaxLength = 8
    ReadOnly = True
    TabOrder = 4
  end
  object dbedtcpf: TDBEdit
    Left = 147
    Top = 108
    Width = 84
    Height = 20
    DataField = 'cpf'
    DataSource = DM.dsPaciente
    TabOrder = 5
  end
  object dbgrd1: TDBGrid
    Left = 278
    Top = 147
    Width = 279
    Height = 206
    DataSource = DM.dsPaciente
    TabOrder = 6
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
    Left = 278
    Top = 108
    Width = 272
    Height = 20
    TabOrder = 7
  end
end
