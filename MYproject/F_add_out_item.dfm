object add_out_item: Tadd_out_item
  Left = 781
  Top = 274
  Caption = 'add_out_item'
  ClientHeight = 258
  ClientWidth = 279
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
  object Label13: TLabel
    Left = 16
    Top = 8
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
  object Button2: TButton
    Left = 193
    Top = 8
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 112
    Top = 8
    Width = 75
    Height = 25
    Caption = #23548#20837
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 44
    Width = 263
    Height = 206
    TabOrder = 2
    object Label7: TLabel
      Left = 8
      Top = 54
      Width = 60
      Height = 13
      Caption = #21830#21697#21517#31216#65306
    end
    object Label9: TLabel
      Left = 96
      Top = 17
      Width = 3
      Height = 13
    end
    object Label2: TLabel
      Left = 8
      Top = 106
      Width = 36
      Height = 13
      Caption = #21333#20301#65306
    end
    object Label5: TLabel
      Left = 8
      Top = 77
      Width = 60
      Height = 13
      Caption = #29983#20135#26085#26399#65306
    end
    object Label1: TLabel
      Left = 11
      Top = 17
      Width = 60
      Height = 13
      Caption = #21830#21697#32534#21495#65306
    end
    object Label8: TLabel
      Left = 112
      Top = 77
      Width = 3
      Height = 13
    end
    object Label11: TLabel
      Left = 89
      Top = 98
      Width = 3
      Height = 13
    end
    object Label12: TLabel
      Left = 79
      Top = 54
      Width = 3
      Height = 13
    end
    object Label3: TLabel
      Left = 7
      Top = 138
      Width = 52
      Height = 13
      Caption = #21806#20215'\'#20803#65306
    end
    object Label4: TLabel
      Left = 11
      Top = 167
      Width = 48
      Height = 13
      Caption = #21806#36135#37327#65306
    end
    object Label6: TLabel
      Left = 185
      Top = 168
      Width = 46
      Height = 19
      Caption = 'Label6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 163
      Top = 168
      Width = 22
      Height = 18
      Caption = '<='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit6: TEdit
      Left = 65
      Top = 167
      Width = 80
      Height = 21
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 65
      Top = 135
      Width = 80
      Height = 26
      TabOrder = 1
    end
  end
  object ADOCommand1: TADOCommand
    Connection = login.ADOConnection1
    Parameters = <>
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 64
    Top = 32
  end
end
