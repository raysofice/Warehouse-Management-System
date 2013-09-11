object warn: Twarn
  Left = 439
  Top = 219
  Caption = #24211#23384#31649#29702#31995#32479
  ClientHeight = 501
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Label4: TLabel
    Left = 16
    Top = 17
    Width = 80
    Height = 19
    Caption = #21830#21697#32534#30721#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 181
    Top = 19
    Width = 70
    Height = 17
    Caption = #21830#21697#21517#31216#65306
  end
  object Label1: TLabel
    Left = 352
    Top = 19
    Width = 98
    Height = 17
    Caption = #25968#37327#35686#31034#31867#22411#65306
  end
  object Edit3: TEdit
    Left = 86
    Top = 18
    Width = 89
    Height = 25
    TabOrder = 0
  end
  object Edit4: TEdit
    Left = 257
    Top = 18
    Width = 89
    Height = 25
    TabOrder = 1
  end
  object Button2: TButton
    Left = 559
    Top = 20
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 2
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 448
    Top = 20
    Width = 97
    Height = 25
    ItemIndex = 0
    TabOrder = 3
    Text = #36229#37327'\'#37327#19981#36275
    Items.Strings = (
      #36229#37327'\'#37327#19981#36275
      #36229#37327
      #37327#19981#36275)
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 87
    Width = 650
    Height = 138
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 51
    Width = 640
    Height = 30
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 8
    Top = 231
    Width = 658
    Height = 250
    TabOrder = 6
    object Label2: TLabel
      Left = 8
      Top = 46
      Width = 80
      Height = 19
      Caption = #21830#21697#32534#30721#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 189
      Top = 46
      Width = 96
      Height = 19
      Caption = #25552#21069#39044#35686#22825#25968
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 0
      Top = 0
      Width = 95
      Height = 23
      Caption = #20445#36136#26399#39044#35686
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 94
      Top = 40
      Width = 89
      Height = 25
      TabOrder = 0
    end
    object Button1: TButton
      Left = 394
      Top = 40
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 1
      OnClick = Button1Click
    end
    object DBGrid2: TDBGrid
      Left = 0
      Top = 107
      Width = 650
      Height = 138
      DataSource = DataSource2
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBNavigator2: TDBNavigator
      Left = 0
      Top = 71
      Width = 640
      Height = 30
      DataSource = DataSource2
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 299
      Top = 40
      Width = 89
      Height = 25
      TabOrder = 4
    end
  end
  object ADOQuery1: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 680
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 648
    Top = 65528
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 688
    Top = 144
  end
  object ADOQuery2: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 680
    Top = 88
  end
  object MainMenu1: TMainMenu
    Left = 640
    Top = 24
    object N1: TMenuItem
      Caption = #22522#26412#20449#24687
      object N6: TMenuItem
        Caption = #23458#25143#20449#24687
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #21830#21697#20449#24687
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #20179#24211#20449#24687
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #21592#24037#20449#24687
        OnClick = N9Click
      end
      object N16: TMenuItem
        Caption = #20010#20154#20449#24687
        OnClick = N16Click
      end
      object N17: TMenuItem
        Caption = #29992#25143#31649#29702
        OnClick = N17Click
      end
    end
    object N2: TMenuItem
      Caption = #20837#24211#31649#29702
      object N10: TMenuItem
        Caption = #20837#24211#21333#20449#24687#26597#35810
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #28155#21152#20837#24211#21333#20449#24687
        OnClick = N11Click
      end
    end
    object N3: TMenuItem
      Caption = #20986#24211#31649#29702
      object N12: TMenuItem
        Caption = #20986#24211#21333#20449#24687#26597#35810
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = #28155#21152#20986#24211#36135#29289#20449#24687
        OnClick = N13Click
      end
    end
    object N4: TMenuItem
      Caption = #31034#35686
    end
    object N5: TMenuItem
      Caption = #20854#20182
      object N14: TMenuItem
        Caption = #36135#29289#36827#20986#32479#35745
        OnClick = N14Click
      end
      object N15: TMenuItem
        Caption = #25968#25454#22791#20221#19982#24674#22797
        OnClick = N15Click
      end
    end
  end
end
