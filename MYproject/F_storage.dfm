object storage: Tstorage
  Left = 732
  Top = 274
  Caption = 'storage'
  ClientHeight = 351
  ClientWidth = 378
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
  object label2: TLabel
    Left = 143
    Top = 20
    Width = 48
    Height = 13
    Caption = #20179#24211#21517#65306
  end
  object label1: TLabel
    Left = 8
    Top = 19
    Width = 60
    Height = 13
    Caption = #20179#24211#32534#21495#65306
  end
  object Label3: TLabel
    Left = 8
    Top = 287
    Width = 48
    Height = 13
    Caption = #20179#24211#21517#65306
  end
  object Label4: TLabel
    Left = 8
    Top = 258
    Width = 60
    Height = 13
    Caption = #20179#24211#32534#30721#65306
  end
  object Edit2: TEdit
    Left = 197
    Top = 8
    Width = 95
    Height = 21
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 39
    Width = 344
    Height = 24
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
  end
  object Button1: TButton
    Left = 298
    Top = 8
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 64
    Top = 8
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 69
    Width = 344
    Height = 154
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 231
    Width = 95
    Height = 21
    DataSource = DataSource1
    TabOrder = 5
    Visible = False
    OnChange = DBEdit1Change
  end
  object Edit3: TEdit
    Left = 74
    Top = 256
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 74
    Top = 287
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Button2: TButton
    Left = 36
    Top = 314
    Width = 101
    Height = 25
    Caption = #23548#20837
    TabOrder = 8
    OnClick = Button2Click
  end
  object DBEdit2: TDBEdit
    Left = 83
    Top = 231
    Width = 95
    Height = 21
    DataSource = DataSource1
    TabOrder = 9
    Visible = False
    OnChange = DBEdit2Change
  end
  object DBEdit3: TDBEdit
    Left = 179
    Top = 229
    Width = 95
    Height = 21
    DataSource = DataSource1
    TabOrder = 10
    Visible = False
  end
  object Button4: TButton
    Left = 219
    Top = 318
    Width = 88
    Height = 25
    Caption = #28155#21152#20179#24211
    TabOrder = 11
    OnClick = Button4Click
  end
  object ADOQuery1: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 336
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 336
    Top = 296
  end
end
