object add_product: Tadd_product
  Left = 683
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  ClientHeight = 241
  ClientWidth = 258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 80
    Height = 19
    Caption = #21830#21697#21517#31216#65306
  end
  object Label2: TLabel
    Left = 16
    Top = 41
    Width = 48
    Height = 19
    Caption = #21333#20301#65306
  end
  object Label3: TLabel
    Left = 16
    Top = 154
    Width = 64
    Height = 19
    Caption = #20445#36136#26399#65306
  end
  object Label5: TLabel
    Left = 16
    Top = 76
    Width = 80
    Height = 19
    Caption = #25968#37327#19979#38480#65306
  end
  object Label6: TLabel
    Left = 16
    Top = 112
    Width = 80
    Height = 19
    Caption = #25968#37327#19978#38480#65306
  end
  object Button1: TButton
    Left = 32
    Top = 192
    Width = 75
    Height = 25
    Caption = #28155#21152
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 148
    Top = 192
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 102
    Top = 8
    Width = 121
    Height = 27
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 102
    Top = 41
    Width = 121
    Height = 27
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 102
    Top = 74
    Width = 121
    Height = 27
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 102
    Top = 109
    Width = 121
    Height = 27
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 102
    Top = 142
    Width = 91
    Height = 27
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 199
    Top = 142
    Width = 51
    Height = 27
    ItemIndex = 0
    TabOrder = 7
    Text = #22825
    Items.Strings = (
      #22825
      #26376
      #24180)
  end
  object ADOCommand1: TADOCommand
    Connection = login.ADOConnection1
    Parameters = <>
    Top = 200
  end
  object ADOQuery1: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 112
    Top = 192
  end
end
