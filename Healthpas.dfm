object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 442
  ClientWidth = 646
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label3: TLabel
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
  object Label6: TLabel
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
  object Label7: TLabel
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
  object Label8: TLabel
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
  object Label15: TLabel
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
    Left = -16
    Top = -26
    Width = 349
    Height = 500
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 72
      Width = 62
      Height = 25
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -20
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 47
      Top = 103
      Width = 160
      Height = 13
      Caption = 'Informe os seus dados de acesso'
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 47
      Top = 173
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
    object Label5: TLabel
      Left = 47
      Top = 227
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
    object Label16: TLabel
      Left = 95
      Top = 399
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
    object Label17: TLabel
      Left = 177
      Top = 399
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
    object ediUser: TEdit
      Left = 47
      Top = 192
      Width = 234
      Height = 23
      TabOrder = 0
    end
    object edtPass: TEdit
      Left = 47
      Top = 246
      Width = 234
      Height = 23
      PasswordChar = #6
      TabOrder = 1
    end
    object btnCadastro: TButton
      Left = 108
      Top = 327
      Width = 117
      Height = 25
      Caption = 'Cadastre-se'
      TabOrder = 2
      OnClick = btnCadastroClick
    end
    object BtnEntrar: TBitBtn
      Left = 108
      Top = 283
      Width = 117
      Height = 25
      Caption = 'Entrar'
      DisabledImageName = 'BtnEntrar'
      TabOrder = 3
    end
  end
end
