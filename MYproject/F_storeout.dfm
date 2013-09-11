object storeout: Tstoreout
  Left = 439
  Top = 110
  Caption = #24211#23384#31649#29702#31995#32479
  ClientHeight = 558
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 793
    Height = 600
    ActivePage = TabSheet2
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #20986#24211#21333#20449#24687#26597#35810
      OnShow = TabSheet1Show
      object Label1: TLabel
        Left = 3
        Top = 29
        Width = 80
        Height = 19
        Caption = #20986#24211#21333#32534#30721
      end
      object label2: TLabel
        Left = 241
        Top = 29
        Width = 80
        Height = 19
        Caption = #37319#36141#21830#32534#21495
      end
      object label3: TLabel
        Left = 446
        Top = 29
        Width = 64
        Height = 19
        Caption = #21592#24037#32534#21495
      end
      object label8: TLabel
        Left = 239
        Top = 63
        Width = 16
        Height = 19
        HelpType = htKeyword
        Caption = #33267
      end
      object Edit1: TEdit
        Left = 102
        Top = 26
        Width = 107
        Height = 27
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 327
        Top = 26
        Width = 107
        Height = 27
        TabOrder = 1
        OnDblClick = Edit2DblClick
      end
      object Button1: TButton
        Left = 452
        Top = 59
        Width = 123
        Height = 23
        Caption = #26597#35810
        TabOrder = 2
        OnClick = Button1Click
      end
      object DateTimePicker3: TDateTimePicker
        Left = 102
        Top = 59
        Width = 107
        Height = 23
        Date = 41167.726738263890000000
        Time = 41167.726738263890000000
        TabOrder = 3
      end
      object DateTimePicker4: TDateTimePicker
        Left = 276
        Top = 59
        Width = 116
        Height = 23
        Date = 41167.726980648150000000
        Time = 41167.726980648150000000
        TabOrder = 4
      end
      object CheckBox1: TCheckBox
        Left = 3
        Top = 58
        Width = 75
        Height = 24
        Caption = #21547#26085#26399
        TabOrder = 5
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 114
        Width = 636
        Height = 143
        DataSource = DataSource1
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 88
        Width = 635
        Height = 27
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        TabOrder = 7
      end
      object Panel1: TPanel
        Left = 5
        Top = 263
        Width = 777
        Height = 270
        ParentBackground = False
        TabOrder = 8
        object Label6: TLabel
          Left = 0
          Top = -1
          Width = 84
          Height = 19
          Caption = #36135#29289#28165#21333
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #38582#20070
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 16
          Top = 31
          Width = 86
          Height = 19
          Caption = #20986#24211#21333#32534#21495':'
        end
        object Label9: TLabel
          Left = 207
          Top = 31
          Width = 118
          Height = 19
          Caption = #20986#36135#21333#36135#29289#24207#21495':'
        end
        object Label10: TLabel
          Left = 6
          Top = 223
          Width = 156
          Height = 19
          Caption = #24403#21069#28165#21333#36135#29289#21512#35745'\'#20803':'
        end
        object Label11: TLabel
          Left = 168
          Top = 223
          Width = 9
          Height = 19
          Caption = '0'
        end
        object DBEdit1: TDBEdit
          Left = 90
          Top = 0
          Width = 97
          Height = 27
          DataSource = DataSource1
          TabOrder = 0
          Visible = False
          OnChange = DBEdit1Change
        end
        object DBGrid2: TDBGrid
          Left = 6
          Top = 87
          Width = 628
          Height = 130
          DataSource = DataSource2
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object Edit6: TEdit
          Left = 108
          Top = 31
          Width = 93
          Height = 27
          ReadOnly = True
          TabOrder = 2
          OnChange = Edit6Change
        end
        object Edit7: TEdit
          Left = 331
          Top = 23
          Width = 99
          Height = 27
          TabOrder = 3
          OnChange = Edit7Change
        end
        object DBNavigator2: TDBNavigator
          Left = 6
          Top = 56
          Width = 625
          Height = 25
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          TabOrder = 4
        end
        object Button5: TButton
          Left = 447
          Top = 25
          Width = 106
          Height = 25
          Caption = #23548#20986#20986#24211#21333
          TabOrder = 5
          OnClick = Button5Click
        end
        object DBEdit3: TDBEdit
          Left = 168
          Top = -2
          Width = 97
          Height = 27
          DataSource = DataSource1
          TabOrder = 6
          Visible = False
        end
        object DBEdit4: TDBEdit
          Left = 271
          Top = -2
          Width = 97
          Height = 27
          DataSource = DataSource1
          TabOrder = 7
          Visible = False
        end
        object DBEdit5: TDBEdit
          Left = 386
          Top = -8
          Width = 97
          Height = 27
          DataSource = DataSource1
          TabOrder = 8
          Visible = False
        end
      end
      object Edit5: TEdit
        Left = 516
        Top = 26
        Width = 107
        Height = 27
        TabOrder = 9
        OnDblClick = Edit5DblClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = #28155#21152#20986#24211#21333
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Label5: TLabel
        Left = 410
        Top = 20
        Width = 48
        Height = 19
        Caption = #26085#26399#65306
      end
      object Label4: TLabel
        Left = 18
        Top = 20
        Width = 96
        Height = 19
        Caption = #37319#36141#21830#32534#21495#65306
      end
      object Label12: TLabel
        Left = 18
        Top = 50
        Width = 96
        Height = 19
        Caption = #37319#36141#21830#21517#31216#65306
      end
      object Label13: TLabel
        Left = 120
        Top = 45
        Width = 5
        Height = 19
      end
      object Label14: TLabel
        Left = 216
        Top = 20
        Width = 96
        Height = 19
        Caption = #32463#25163#20154#32534#21495#65306
      end
      object Label15: TLabel
        Left = 216
        Top = 45
        Width = 96
        Height = 19
        Caption = #32463#25163#20154#21517#31216#65306
      end
      object Label16: TLabel
        Left = 120
        Top = 20
        Width = 76
        Height = 19
        Caption = '['#21452#20987#23548#20837']'
        OnDblClick = Label16DblClick
      end
      object Label17: TLabel
        Left = 318
        Top = 45
        Width = 5
        Height = 19
      end
      object Label18: TLabel
        Left = 318
        Top = 20
        Width = 76
        Height = 19
        Caption = '['#21452#20987#23548#20837']'
        OnDblClick = Label18DblClick
      end
      object DateTimePicker1: TDateTimePicker
        Left = 456
        Top = 20
        Width = 141
        Height = 25
        Date = 41170.812543402780000000
        Time = 41170.812543402780000000
        TabOrder = 0
      end
      object Button3: TButton
        Left = 456
        Top = 51
        Width = 105
        Height = 30
        Caption = #28155#21152#20986#24211#21333
        TabOrder = 1
        OnClick = Button3Click
      end
      object Panel2: TPanel
        Left = -4
        Top = 99
        Width = 870
        Height = 279
        TabOrder = 2
        object Label19: TLabel
          Left = 15
          Top = 239
          Width = 156
          Height = 19
          Caption = #24403#21069#28165#21333#36135#29289#21512#35745'\'#20803':'
        end
        object Label20: TLabel
          Left = 177
          Top = 239
          Width = 9
          Height = 19
          Caption = '0'
        end
        object StringGrid1: TStringGrid
          Left = 7
          Top = 43
          Width = 786
          Height = 166
          ColCount = 7
          RowCount = 1
          FixedRows = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          TabOrder = 0
        end
        object button2: TButton
          Left = 15
          Top = 12
          Width = 107
          Height = 25
          Caption = #28155#21152#21830#21697#26465#30446
          TabOrder = 1
          OnClick = button2Click
        end
        object DBEdit2: TDBEdit
          Left = 144
          Top = 10
          Width = 121
          Height = 27
          DataSource = DataSource3
          TabOrder = 2
          Visible = False
        end
        object Button4: TButton
          Left = 460
          Top = 244
          Width = 107
          Height = 25
          Caption = #26032#28155#20986#24211#21333
          TabOrder = 3
          OnClick = Button4Click
        end
        object Button6: TButton
          Left = 255
          Top = 246
          Width = 143
          Height = 25
          Caption = #25764#38144#26368#21518#19968#26465#35760#24405
          TabOrder = 4
          OnClick = Button6Click
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 640
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 688
  end
  object ADOQuery2: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 584
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 520
  end
  object ADOQuery3: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 448
    Top = 8
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 376
  end
  object ADOCommand1: TADOCommand
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 296
  end
  object MainMenu1: TMainMenu
    Left = 728
    Top = 65528
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
      OnClick = N4Click
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
  object SaveDialog1: TSaveDialog
    Left = 240
  end
end
