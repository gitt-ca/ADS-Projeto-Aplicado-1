object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 442
  ClientWidth = 628
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object lbl1: TLabel
    Left = 400
    Top = 63
    Width = 200
    Height = 22
    Caption = 'HealthFamilyCenter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -18
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object lbl2: TLabel
    Left = 514
    Top = 315
    Width = 106
    Height = 13
    Caption = 'Gest'#227'o de Pessoas'
    Color = clBtnShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 477
    Top = 296
    Width = 143
    Height = 13
    Caption = 'Monitoramento de Sa'#250'de'
    Color = clBtnShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 556
    Top = 334
    Width = 64
    Height = 13
    Caption = 'Praticidade'
    Color = clBtnShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 548
    Top = 421
    Width = 72
    Height = 13
    Caption = 'Vers'#227'o 1.0.0.0'
    Color = clBtnShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object pnlLogin: TPanel
    Left = -8
    Top = -50
    Width = 349
    Height = 500
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lbl6: TLabel
      Left = 116
      Top = 98
      Width = 99
      Height = 25
      Caption = 'Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -20
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 55
      Top = 129
      Width = 214
      Height = 13
      Caption = 'Informe seus dados para realizar o Cadastro'
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 141
      Top = 157
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl9: TLabel
      Left = 141
      Top = 205
      Width = 30
      Height = 13
      Caption = 'Senha'
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl10: TLabel
      Left = 95
      Top = 463
      Width = 76
      Height = 13
      Caption = 'Suporte Online?'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl11: TLabel
      Left = 185
      Top = 463
      Width = 56
      Height = 13
      Caption = 'Clique aqui!'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl12: TLabel
      Left = 116
      Top = 253
      Width = 89
      Height = 13
      Caption = 'Repita sua Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edtUser: TEdit
      Left = 47
      Top = 176
      Width = 234
      Height = 23
      TabOrder = 0
    end
    object edtPass: TEdit
      Left = 47
      Top = 224
      Width = 234
      Height = 23
      PasswordChar = #6
      TabOrder = 1
    end
    object btn2: TButton
      Left = 108
      Top = 341
      Width = 117
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 2
      OnClick = btn2Click
    end
    object edtPassAgain: TEdit
      Left = 47
      Top = 272
      Width = 234
      Height = 23
      PasswordChar = #6
      TabOrder = 3
    end
  end
  object UsuarioTable: TFDQuery
    Connection = FDConnection1
    Left = 24
    Top = 14
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=healthfamilycenter'
      'User_Name=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 392
    Top = 104
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\steve\Documents\GitHub\Health-Family-Center\Banco\libmy' +
      'SQL.dll'
    Left = 528
    Top = 104
  end
end
