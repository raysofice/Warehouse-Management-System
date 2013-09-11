object staff: Tstaff
  Left = 683
  Top = 219
  Caption = 'staff'
  ClientHeight = 390
  ClientWidth = 427
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
    Left = 17
    Top = 289
    Width = 36
    Height = 13
    Caption = #30005#35805#65306
  end
  object Label4: TLabel
    Left = 17
    Top = 264
    Width = 60
    Height = 13
    Caption = #21592#24037#32534#30721#65306
  end
  object Label3: TLabel
    Left = 210
    Top = 262
    Width = 48
    Height = 13
    Caption = #21592#24037#21517#65306
  end
  object label1: TLabel
    Left = 8
    Top = 19
    Width = 60
    Height = 13
    Caption = #21592#24037#32534#30721#65306
  end
  object label2: TLabel
    Left = 159
    Top = 19
    Width = 48
    Height = 13
    Caption = #21592#24037#21517#65306
  end
  object DBEdit4: TDBEdit
    Left = 211
    Top = 223
    Width = 95
    Height = 21
    DataSource = DataSource1
    TabOrder = 0
    Visible = False
    OnChange = DBEdit4Change
  end
  object Button4: TButton
    Left = 215
    Top = 329
    Width = 88
    Height = 25
    Caption = #28155#21152#21592#24037
    TabOrder = 1
    OnClick = Button4Click
  end
  object DBEdit3: TDBEdit
    Left = 124
    Top = 223
    Width = 95
    Height = 21
    DataSource = DataSource1
    TabOrder = 2
    Visible = False
    OnChange = DBEdit3Change
  end
  object DBEdit2: TDBEdit
    Left = 58
    Top = 223
    Width = 95
    Height = 21
    DataSource = DataSource1
    TabOrder = 3
    Visible = False
    OnChange = DBEdit2Change
  end
  object Button2: TButton
    Left = 66
    Top = 329
    Width = 101
    Height = 25
    Caption = #23548#20837
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit5: TEdit
    Left = 83
    Top = 286
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit4: TEdit
    Left = 254
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 83
    Top = 259
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 7
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 223
    Width = 95
    Height = 21
    DataSource = DataSource1
    TabOrder = 8
    Visible = False
    OnChange = DBEdit1Change
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 71
    Width = 376
    Height = 146
    DataSource = DataSource1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 66
    Top = 17
    Width = 87
    Height = 21
    TabOrder = 10
  end
  object Button1: TButton
    Left = 312
    Top = 16
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 11
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 47
    Width = 376
    Height = 26
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbPost, nbCancel, nbRefresh]
    TabOrder = 12
  end
  object Edit2: TEdit
    Left = 213
    Top = 17
    Width = 90
    Height = 21
    TabOrder = 13
  end
  object DBEdit5: TDBEdit
    Left = 292
    Top = 223
    Width = 95
    Height = 21
    DataSource = DataSource1
    TabOrder = 14
    Visible = False
    OnChange = DBEdit5Change
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 224
    Top = 272
  end
  object ADOQuery1: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 320
    Top = 280
  end
end
