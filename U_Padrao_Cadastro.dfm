object F_padrao_cadastro: TF_padrao_cadastro
  Left = 0
  Top = 0
  Caption = 'F_padrao_cadastro'
  ClientHeight = 625
  ClientWidth = 1055
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1055
    Height = 73
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 45
      Height = 17
      Caption = 'campo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 32
      Top = 38
      Width = 121
      Height = 23
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 568
    Width = 1055
    Height = 57
    Align = alBottom
    Color = clHighlight
    ParentBackground = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 528
      Top = 15
      Width = 133
      Height = 27
      Caption = 'Incluir'
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
  end
end
