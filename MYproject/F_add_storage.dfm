object add_storage: Tadd_storage
  Left = 811
  Top = 340
  Caption = 'add_storage'
  ClientHeight = 188
  ClientWidth = 236
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 25
    Top = 73
    Width = 36
    Height = 13
    Caption = #25551#36848#65306
  end
  object Label3: TLabel
    Left = 25
    Top = 24
    Width = 48
    Height = 13
    Caption = #20179#24211#21517#65306
  end
  object Button4: TButton
    Left = 25
    Top = 132
    Width = 88
    Height = 25
    Caption = #28155#21152
    TabOrder = 0
    OnClick = Button4Click
  end
  object Button1: TButton
    Left = 119
    Top = 132
    Width = 88
    Height = 25
    Caption = #21462#28040
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit5: TEdit
    Left = 79
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 79
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ADOCommand1: TADOCommand
    Connection = login.ADOConnection1
    Parameters = <>
    Top = 88
  end
end
