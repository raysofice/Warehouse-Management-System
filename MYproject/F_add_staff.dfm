object add_staff: Tadd_staff
  Left = 976
  Top = 329
  BorderStyle = bsToolWindow
  ClientHeight = 179
  ClientWidth = 223
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
  object Label3: TLabel
    Left = 25
    Top = 24
    Width = 48
    Height = 13
    Caption = #21592#24037#21517#65306
  end
  object Label6: TLabel
    Left = 25
    Top = 73
    Width = 36
    Height = 13
    Caption = #30005#35805#65306
  end
  object Edit4: TEdit
    Left = 79
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit5: TEdit
    Left = 79
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 119
    Top = 116
    Width = 88
    Height = 25
    Caption = #21462#28040
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 25
    Top = 116
    Width = 88
    Height = 25
    Caption = #28155#21152
    TabOrder = 3
    OnClick = Button4Click
  end
  object ADOCommand1: TADOCommand
    Connection = login.ADOConnection1
    Parameters = <>
    Top = 88
  end
  object ADOQuery1: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 16
    Top = 144
  end
end
