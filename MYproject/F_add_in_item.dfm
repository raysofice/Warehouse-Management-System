object add_in_item: Tadd_in_item
  Left = 634
  Top = 274
  ClientHeight = 206
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Label6: TLabel
    Left = 240
    Top = 11
    Width = 75
    Height = 18
    Caption = #20179#24211#32534#21495#65306
  end
  object Label3: TLabel
    Left = 240
    Top = 51
    Width = 66
    Height = 18
    Caption = #36827#20215'\'#20803#65306
  end
  object Label4: TLabel
    Left = 240
    Top = 83
    Width = 60
    Height = 18
    Caption = #36827#36135#37327#65306
  end
  object Label10: TLabel
    Left = 336
    Top = 8
    Width = 72
    Height = 18
    Caption = '['#21452#20987#23548#20837']'
    OnDblClick = Label10DblClick
  end
  object Label13: TLabel
    Left = 16
    Top = 4
    Width = 90
    Height = 18
    Caption = #28155#21152#21830#21697#20449#24687
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = Label13Click
  end
  object Edit5: TEdit
    Left = 326
    Top = 41
    Width = 121
    Height = 26
    TabOrder = 0
  end
  object Edit6: TEdit
    Left = 326
    Top = 74
    Width = 121
    Height = 26
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 8
    Top = 28
    Width = 209
    Height = 134
    TabOrder = 2
    object Label7: TLabel
      Left = 8
      Top = 53
      Width = 75
      Height = 18
      Caption = #21830#21697#21517#31216#65306
    end
    object Label9: TLabel
      Left = 96
      Top = 17
      Width = 5
      Height = 18
    end
    object Label2: TLabel
      Left = 8
      Top = 106
      Width = 75
      Height = 18
      Caption = #35745#37327#21333#20301#65306
    end
    object Label5: TLabel
      Left = 8
      Top = 82
      Width = 75
      Height = 18
      Caption = #29983#20135#26085#26399#65306
    end
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 75
      Height = 18
      Caption = #21830#21697#32534#21495#65306
    end
    object Label8: TLabel
      Left = 112
      Top = 77
      Width = 5
      Height = 18
    end
    object Label11: TLabel
      Left = 89
      Top = 98
      Width = 5
      Height = 18
    end
    object Label12: TLabel
      Left = 79
      Top = 54
      Width = 5
      Height = 18
    end
  end
  object Button1: TButton
    Left = 87
    Top = 168
    Width = 75
    Height = 25
    Caption = #23548#20837
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 168
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 4
    OnClick = Button2Click
  end
  object ADOCommand1: TADOCommand
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 296
    Top = 112
  end
end
