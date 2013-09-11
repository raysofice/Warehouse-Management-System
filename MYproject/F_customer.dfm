object customer: Tcustomer
  Left = 537
  Top = 165
  Caption = 'customer'
  ClientHeight = 411
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object label2: TLabel
    Left = 193
    Top = 11
    Width = 75
    Height = 16
    Caption = #23458#25143#21517#31216#65306
  end
  object Label1: TLabel
    Left = 20
    Top = 11
    Width = 75
    Height = 16
    Caption = #23458#25143#32534#30721#65306
  end
  object Label3: TLabel
    Left = 244
    Top = 258
    Width = 75
    Height = 16
    Caption = #23458#25143#21517#31216#65306
  end
  object Label4: TLabel
    Left = 20
    Top = 258
    Width = 75
    Height = 16
    Caption = #23458#25143#32534#30721#65306
  end
  object Label5: TLabel
    Left = 244
    Top = 283
    Width = 45
    Height = 16
    Caption = #30005#35805#65306
  end
  object Label6: TLabel
    Left = 20
    Top = 283
    Width = 60
    Height = 16
    Caption = #32852#31995#20154#65306
  end
  object Label7: TLabel
    Left = 20
    Top = 310
    Width = 45
    Height = 16
    Caption = #22320#22336#65306
  end
  object Label8: TLabel
    Left = 20
    Top = 337
    Width = 45
    Height = 16
    Caption = #22791#27880#65306
  end
  object Edit2: TEdit
    Left = 259
    Top = 8
    Width = 90
    Height = 24
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 39
    Width = 544
    Height = 34
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
  end
  object Button1: TButton
    Left = 355
    Top = 8
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 98
    Top = 8
    Width = 89
    Height = 24
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 547
    Height = 182
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 215
    Width = 95
    Height = 24
    DataSource = DataSource1
    TabOrder = 5
    Visible = False
    OnChange = DBEdit1Change
  end
  object Edit3: TEdit
    Left = 101
    Top = 255
    Width = 121
    Height = 24
    ReadOnly = True
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 333
    Top = 255
    Width = 121
    Height = 24
    TabOrder = 7
  end
  object Edit5: TEdit
    Left = 101
    Top = 280
    Width = 121
    Height = 24
    TabOrder = 8
  end
  object Edit6: TEdit
    Left = 333
    Top = 277
    Width = 121
    Height = 24
    TabOrder = 9
  end
  object Edit7: TEdit
    Left = 101
    Top = 307
    Width = 300
    Height = 24
    TabOrder = 10
  end
  object Edit8: TEdit
    Left = 101
    Top = 337
    Width = 300
    Height = 24
    TabOrder = 11
  end
  object Button2: TButton
    Left = 121
    Top = 378
    Width = 101
    Height = 25
    Caption = #23548#20837
    TabOrder = 12
    OnClick = Button2Click
  end
  object DBEdit2: TDBEdit
    Left = 92
    Top = 215
    Width = 95
    Height = 24
    DataSource = DataSource1
    TabOrder = 13
    Visible = False
    OnChange = DBEdit2Change
  end
  object DBEdit3: TDBEdit
    Left = 184
    Top = 215
    Width = 95
    Height = 24
    DataSource = DataSource1
    TabOrder = 14
    Visible = False
    OnChange = DBEdit3Change
  end
  object DBEdit4: TDBEdit
    Left = 285
    Top = 215
    Width = 95
    Height = 24
    DataSource = DataSource1
    TabOrder = 15
    Visible = False
    OnChange = DBEdit4Change
  end
  object DBEdit5: TDBEdit
    Left = 359
    Top = 215
    Width = 95
    Height = 24
    DataSource = DataSource1
    TabOrder = 16
    Visible = False
    OnChange = DBEdit5Change
  end
  object DBEdit6: TDBEdit
    Left = 460
    Top = 215
    Width = 95
    Height = 24
    DataSource = DataSource1
    TabOrder = 17
    Visible = False
    OnChange = DBEdit6Change
  end
  object Button4: TButton
    Left = 244
    Top = 376
    Width = 88
    Height = 25
    Caption = #28155#21152#23458#25143
    TabOrder = 18
    OnClick = Button4Click
  end
  object ADOQuery1: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 488
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 448
  end
  object ADOQuery2: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 504
    Top = 256
  end
end
