object product: Tproduct
  Left = 537
  Top = 110
  Caption = #21830#21697#20449#24687
  ClientHeight = 442
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 70
    Height = 17
    Caption = #21830#21697#32534#30721#65306
  end
  object Label5: TLabel
    Left = 170
    Top = 8
    Width = 70
    Height = 17
    Caption = #21830#21697#21517#31216#65306
  end
  object Label1: TLabel
    Left = 238
    Top = 199
    Width = 70
    Height = 17
    Caption = #29983#20135#26085#26399#65306
  end
  object Label2: TLabel
    Left = 8
    Top = 200
    Width = 42
    Height = 19
    Caption = #26126#32454
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #40657#20307
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 349
    Top = 222
    Width = 14
    Height = 17
    Caption = #33267
  end
  object Label3: TLabel
    Left = 26
    Top = 303
    Width = 70
    Height = 17
    Caption = #29983#20135#26085#26399#65306
  end
  object Label6: TLabel
    Left = 26
    Top = 274
    Width = 70
    Height = 17
    Caption = #20135#21697#32534#21495#65306
  end
  object DBNavigator1: TDBNavigator
    Left = -2
    Top = 39
    Width = 500
    Height = 18
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 75
    Top = 8
    Width = 89
    Height = 25
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 238
    Top = 9
    Width = 89
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button2: TButton
    Left = 333
    Top = 8
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 3
    OnClick = Button2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 234
    Top = 222
    Width = 109
    Height = 27
    Date = 40544.631327222230000000
    Time = 40544.631327222230000000
    TabOrder = 4
    OnChange = DateTimePicker1Change
  end
  object DateTimePicker2: TDateTimePicker
    Left = 374
    Top = 224
    Width = 128
    Height = 25
    Date = 44195.631327222230000000
    Time = 44195.631327222230000000
    TabOrder = 5
    OnChange = DateTimePicker1Change
  end
  object DBGrid2: TDBGrid
    Left = 250
    Top = 271
    Width = 256
    Height = 96
    DataSource = DataSource2
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator2: TDBNavigator
    Left = 231
    Top = 245
    Width = 260
    Height = 21
    TabOrder = 7
  end
  object Button1: TButton
    Left = 414
    Top = 8
    Width = 75
    Height = 25
    Caption = #26032#28155#21830#21697
    TabOrder = 8
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 75
    Top = 200
    Width = 81
    Height = 25
    DataSource = DataSource1
    TabOrder = 9
    Visible = False
    OnChange = DBEdit1Change
  end
  object Button3: TButton
    Left = 26
    Top = 333
    Width = 70
    Height = 25
    Caption = #23548#20837
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 126
    Top = 334
    Width = 99
    Height = 25
    Caption = #26032#22686#21830#21697#26126#32454
    TabOrder = 11
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 63
    Width = 505
    Height = 131
    DataSource = DataSource1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'p_id'
        ReadOnly = True
        Title.Caption = #21830#21697#32534#30721
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_name'
        Title.Caption = #21830#21697#21517#31216
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unit'
        Title.Caption = #21333#20301
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tot'
        Title.Caption = #24635#37327
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_low'
        Title.Caption = #26368#20302#38480#39069
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_high'
        Title.Caption = #26368#39640#38480#39069
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date'
        Title.Caption = #20445#36136#26399#65288#22825#65289
        Width = 85
        Visible = True
      end>
  end
  object DBEdit2: TDBEdit
    Left = 111
    Top = 272
    Width = 114
    Height = 25
    DataSource = DataSource2
    TabOrder = 13
  end
  object DBEdit3: TDBEdit
    Left = 111
    Top = 303
    Width = 114
    Height = 25
    DataSource = DataSource2
    TabOrder = 14
  end
  object Panel1: TPanel
    Left = 18
    Top = 365
    Width = 482
    Height = 73
    TabOrder = 15
    object label8: TLabel
      Left = 232
      Top = 8
      Width = 56
      Height = 17
      Caption = #29983#20135#26085#26399
    end
    object Label9: TLabel
      Left = 40
      Top = 8
      Width = 28
      Height = 17
      Caption = #32534#21495
    end
    object DateTimePicker3: TDateTimePicker
      Left = 294
      Top = -1
      Width = 104
      Height = 34
      Date = 41173.438490787030000000
      Time = 41173.438490787030000000
      TabOrder = 0
    end
    object Button5: TButton
      Left = 87
      Top = 39
      Width = 75
      Height = 25
      Caption = #28155#21152
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 244
      Top = 39
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 2
      OnClick = Button6Click
    end
    object Edit1: TEdit
      Left = 105
      Top = 8
      Width = 121
      Height = 25
      ReadOnly = True
      TabOrder = 3
    end
  end
  object DBEdit4: TDBEdit
    Left = 162
    Top = 200
    Width = 81
    Height = 25
    DataSource = DataSource1
    TabOrder = 16
    Visible = False
    OnChange = DBEdit1Change
  end
  object DBEdit5: TDBEdit
    Left = 305
    Top = 200
    Width = 81
    Height = 25
    DataSource = DataSource1
    TabOrder = 17
    Visible = False
    OnChange = DBEdit1Change
  end
  object DBEdit6: TDBEdit
    Left = 314
    Top = 185
    Width = 121
    Height = 25
    DataSource = DataSource2
    TabOrder = 18
    Visible = False
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 24
  end
  object ADOQuery1: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 112
  end
  object ADOQuery2: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 168
    Top = 224
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 56
    Top = 224
  end
  object ADOCommand1: TADOCommand
    Connection = login.ADOConnection1
    Parameters = <>
    Top = 344
  end
  object ADOQuery3: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 440
    Top = 184
  end
end
