object add_customer: Tadd_customer
  Left = 634
  Top = 274
  BiDiMode = bdLeftToRight
  BorderStyle = bsSizeToolWin
  ClientHeight = 230
  ClientWidth = 271
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 8
    Top = 126
    Width = 36
    Height = 13
    Caption = #22791#27880#65306
  end
  object Label7: TLabel
    Left = 8
    Top = 98
    Width = 36
    Height = 13
    Caption = #22320#22336#65306
  end
  object Label6: TLabel
    Left = 8
    Top = 38
    Width = 48
    Height = 13
    Caption = #32852#31995#20154#65306
  end
  object Label5: TLabel
    Left = 8
    Top = 72
    Width = 36
    Height = 13
    Caption = #30005#35805#65306
  end
  object Label3: TLabel
    Left = 0
    Top = 8
    Width = 60
    Height = 13
    Caption = #23458#25143#21517#31216#65306
  end
  object Button4: TButton
    Left = 24
    Top = 180
    Width = 88
    Height = 25
    Caption = #28155#21152
    TabOrder = 0
    OnClick = Button4Click
  end
  object Edit8: TEdit
    Left = 66
    Top = 123
    Width = 187
    Height = 21
    TabOrder = 1
  end
  object Edit7: TEdit
    Left = 66
    Top = 90
    Width = 163
    Height = 21
    TabOrder = 2
  end
  object Edit6: TEdit
    Left = 66
    Top = 60
    Width = 163
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 66
    Top = 30
    Width = 163
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 66
    Top = 3
    Width = 163
    Height = 21
    AutoSelect = False
    AutoSize = False
    TabOrder = 5
  end
  object Button1: TButton
    Left = 118
    Top = 180
    Width = 88
    Height = 25
    Caption = #21462#28040
    TabOrder = 6
    OnClick = Button1Click
  end
  object ADOCommand1: TADOCommand
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 8
    Top = 184
  end
end
