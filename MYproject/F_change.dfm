object change: Tchange
  Left = 575
  Top = 213
  Caption = #20462#25913#23494#30721
  ClientHeight = 231
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 111
    Top = 51
    Width = 48
    Height = 13
    Caption = #26032#23494#30721#65306
  end
  object Label2: TLabel
    Left = 111
    Top = 99
    Width = 48
    Height = 13
    Caption = #30830#35748#23494#30721
  end
  object Button1: TButton
    Left = 165
    Top = 144
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 165
    Top = 48
    Width = 156
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 165
    Top = 96
    Width = 156
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object ADOCommand1: TADOCommand
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 40
    Top = 40
  end
end
