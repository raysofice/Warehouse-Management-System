object main: Tmain
  Left = 455
  Top = 148
  Caption = #24211#23384#31649#29702#31995#32479
  ClientHeight = 499
  ClientWidth = 767
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
    Width = 767
    Height = 481
    ActivePage = TabSheet1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 745
    object TabSheet1: TTabSheet
      Caption = #23458#25143#20449#24687#31649#29702
      OnShow = TabSheet1Show
      ExplicitWidth = 737
      object Label1: TLabel
        Left = 16
        Top = 29
        Width = 80
        Height = 19
        Caption = #23458#25143#32534#30721#65306
      end
      object label2: TLabel
        Left = 181
        Top = 29
        Width = 80
        Height = 19
        Caption = #23458#25143#21517#31216#65306
      end
      object label3: TLabel
        Left = 355
        Top = 29
        Width = 48
        Height = 19
        Caption = #31867#22411#65306
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 83
        Width = 729
        Height = 134
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'c_id'
            Title.Caption = #23458#25143#32534#30721
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'c_name'
            Title.Caption = #23458#25143#21517#31216
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'type'
            Title.Caption = #23458#25143#31867#22411
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contactname'
            Title.Caption = #32852#31995#20154
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'phone'
            Title.Caption = #30005#35805
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address'
            Title.Caption = #22320#22336
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'describe'
            Title.Caption = #22791#27880
            Visible = True
          end>
      end
      object Edit1: TEdit
        Left = 86
        Top = 26
        Width = 89
        Height = 27
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 259
        Top = 26
        Width = 90
        Height = 27
        TabOrder = 2
      end
      object ComboBox1: TComboBox
        Left = 409
        Top = 26
        Width = 136
        Height = 27
        ItemIndex = 0
        TabOrder = 3
        Text = #20379#24212#21830'/'#37319#36141#21830
        Items.Strings = (
          #20379#24212#21830'/'#37319#36141#21830
          #37319#36141#21830
          #20379#24212#21830)
      end
      object Button1: TButton
        Left = 566
        Top = 27
        Width = 75
        Height = 25
        Caption = #26597#35810
        TabOrder = 4
        OnClick = Button1Click
      end
      object Button8: TButton
        Left = 442
        Top = 232
        Width = 129
        Height = 33
        Caption = #23548#20986#23458#25143#20449#24687#34920
        TabOrder = 5
        OnClick = Button8Click
      end
      object Button16: TButton
        Left = 108
        Top = 234
        Width = 93
        Height = 29
        Caption = #28155#21152#20379#24212#21830
        TabOrder = 6
        OnClick = Button16Click
      end
      object DBNavigator1: TDBNavigator
        Left = 16
        Top = 59
        Width = 720
        Height = 22
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
        TabOrder = 7
      end
      object Button17: TButton
        Left = 259
        Top = 234
        Width = 93
        Height = 29
        Caption = #28155#21152#37319#36141#21830
        TabOrder = 8
        OnClick = Button17Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #21830#21697#20449#24687#31649#29702
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Label5: TLabel
        Left = 181
        Top = 29
        Width = 80
        Height = 19
        Caption = #21830#21697#21517#31216#65306
      end
      object Label4: TLabel
        Left = 16
        Top = 29
        Width = 80
        Height = 19
        Caption = #21830#21697#32534#30721#65306
      end
      object Edit3: TEdit
        Left = 86
        Top = 26
        Width = 89
        Height = 27
        TabOrder = 0
      end
      object Edit4: TEdit
        Left = 270
        Top = 26
        Width = 89
        Height = 27
        TabOrder = 1
      end
      object Button2: TButton
        Left = 374
        Top = 28
        Width = 75
        Height = 25
        Caption = #26597#35810
        TabOrder = 2
        OnClick = Button2Click
      end
      object DBNavigator2: TDBNavigator
        Left = 16
        Top = 71
        Width = 720
        Height = 22
        DataSource = DataSource2
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
        TabOrder = 3
      end
      object Panel1: TPanel
        Left = 25
        Top = 223
        Width = 737
        Height = 218
        TabOrder = 4
        object Label6: TLabel
          Left = -2
          Top = 0
          Width = 68
          Height = 16
          Caption = #21830#21697#26126#32454
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #38582#20070
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 494
          Top = 22
          Width = 16
          Height = 19
          Caption = #33267
        end
        object Label8: TLabel
          Left = 274
          Top = 22
          Width = 80
          Height = 19
          Caption = #29983#20135#26085#26399#65306
        end
        object Label9: TLabel
          Left = 78
          Top = 22
          Width = 80
          Height = 19
          Caption = #21830#21697#32534#21495#65306
        end
        object DBGrid3: TDBGrid
          Left = 54
          Top = 72
          Width = 627
          Height = 113
          DataSource = DataSource3
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object DateTimePicker1: TDateTimePicker
          Left = 360
          Top = 14
          Width = 128
          Height = 27
          Date = 40544.631327222230000000
          Time = 40544.631327222230000000
          TabOrder = 1
          OnChange = DateTimePicker1Change
        end
        object DateTimePicker2: TDateTimePicker
          Left = 516
          Top = 14
          Width = 127
          Height = 27
          Date = 44195.631327222230000000
          Time = 44195.631327222230000000
          TabOrder = 2
          OnChange = DateTimePicker2Change
        end
        object DBEdit1: TDBEdit
          Left = -9
          Top = 22
          Width = 81
          Height = 27
          DataField = 'p_id'
          DataSource = DataSource2
          TabOrder = 3
          Visible = False
          OnChange = DBEdit1Change
        end
        object Edit5: TEdit
          Left = 156
          Top = 14
          Width = 101
          Height = 27
          TabOrder = 4
          OnChange = Edit5Change
        end
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 99
        Width = 720
        Height = 118
        DataSource = DataSource2
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'p_id'
            Title.Caption = #21830#21697#32534#30721
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'p_name'
            Title.Caption = #21830#21697#21517#31216
            Width = 84
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
            Width = 99
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
      object Button18: TButton
        Left = 480
        Top = 27
        Width = 75
        Height = 25
        Caption = #28155#21152#21830#21697
        TabOrder = 6
        OnClick = Button18Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #20179#24211#20449#24687#31649#29702
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Label12: TLabel
        Left = 3
        Top = 3
        Width = 80
        Height = 19
        Caption = #20179#24211#32534#21495#65306
      end
      object Label13: TLabel
        Left = 207
        Top = 3
        Width = 64
        Height = 19
        Caption = #20179#24211#21517#65306
      end
      object Edit6: TEdit
        Left = 89
        Top = 3
        Width = 112
        Height = 27
        TabOrder = 0
      end
      object DBGrid4: TDBGrid
        Left = 3
        Top = 69
        Width = 616
        Height = 140
        DataSource = DataSource4
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button7: TButton
        Left = 394
        Top = 8
        Width = 75
        Height = 25
        Caption = #26597#35810
        TabOrder = 2
        OnClick = Button7Click
      end
      object DBNavigator3: TDBNavigator
        Left = 8
        Top = 39
        Width = 616
        Height = 24
        DataSource = DataSource4
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel, nbRefresh]
        TabOrder = 3
      end
      object Edit9: TEdit
        Left = 277
        Top = 3
        Width = 95
        Height = 27
        TabOrder = 4
      end
      object Button19: TButton
        Left = 488
        Top = 8
        Width = 75
        Height = 25
        Caption = #28155#21152#20179#24211
        TabOrder = 5
        OnClick = Button19Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = #21592#24037#20449#24687#31649#29702
      ImageIndex = 3
      OnShow = TabSheet4Show
      ExplicitLeft = 8
      ExplicitTop = 34
      object Label10: TLabel
        Left = 239
        Top = 14
        Width = 64
        Height = 19
        Caption = #21592#24037#21517#65306
      end
      object Label11: TLabel
        Left = 16
        Top = 11
        Width = 80
        Height = 19
        Caption = #21592#24037#32534#30721#65306
      end
      object DBGrid5: TDBGrid
        Left = 16
        Top = 63
        Width = 705
        Height = 138
        DataSource = DataSource5
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Edit7: TEdit
        Left = 309
        Top = 12
        Width = 90
        Height = 27
        TabOrder = 1
      end
      object DBNavigator4: TDBNavigator
        Left = 16
        Top = 39
        Width = 700
        Height = 26
        DataSource = DataSource5
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel, nbRefresh]
        TabOrder = 2
      end
      object Button3: TButton
        Left = 405
        Top = 8
        Width = 75
        Height = 25
        Caption = #26597#35810
        TabOrder = 3
        OnClick = Button3Click
      end
      object Edit8: TEdit
        Left = 102
        Top = 12
        Width = 87
        Height = 27
        TabOrder = 4
      end
      object Button20: TButton
        Left = 504
        Top = 8
        Width = 75
        Height = 25
        Caption = #28155#21152#21592#24037
        TabOrder = 5
        OnClick = Button20Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = #20010#20154#20449#24687
      ImageIndex = 4
      OnContextPopup = TabSheet5ContextPopup
      OnShow = TabSheet5Show
      object Label14: TLabel
        Left = 72
        Top = 88
        Width = 80
        Height = 19
        Caption = #23494#20445#38382#39064#65306
      end
      object Label15: TLabel
        Left = 158
        Top = 88
        Width = 32
        Height = 19
        Caption = #38382#39064
      end
      object Label16: TLabel
        Left = 72
        Top = 48
        Width = 80
        Height = 19
        Caption = #20154#21592#24615#36136#65306
      end
      object Label17: TLabel
        Left = 158
        Top = 48
        Width = 32
        Height = 19
        Caption = #38382#39064
      end
      object Label24: TLabel
        Left = 72
        Top = 23
        Width = 48
        Height = 19
        Caption = #29992#25143#65306
      end
      object Label25: TLabel
        Left = 158
        Top = 23
        Width = 32
        Height = 19
        Caption = #38382#39064
      end
      object Button4: TButton
        Left = 72
        Top = 128
        Width = 129
        Height = 33
        Caption = #20462#25913#23494#30721#23494#20445
        TabOrder = 0
        OnClick = Button4Click
      end
      object Panel2: TPanel
        Left = 72
        Top = 176
        Width = 233
        Height = 201
        TabOrder = 1
        object Label19: TLabel
          Left = 204
          Top = 190
          Width = 5
          Height = 19
        end
        object Label20: TLabel
          Left = 0
          Top = 8
          Width = 96
          Height = 19
          Caption = #26087#23494#20445#31572#26696#65306
        end
        object Button5: TButton
          Left = 33
          Top = 70
          Width = 96
          Height = 35
          Caption = #30830#23450
          TabOrder = 0
          OnClick = Button5Click
        end
        object Edit10: TEdit
          Left = 102
          Top = 5
          Width = 121
          Height = 27
          TabOrder = 1
        end
      end
      object Panel3: TPanel
        Left = 311
        Top = 48
        Width = 346
        Height = 329
        TabOrder = 2
        object Label18: TLabel
          Left = 3
          Top = 8
          Width = 80
          Height = 19
          Caption = #26032#23494#20445#38382#39064
        end
        object Label21: TLabel
          Left = 3
          Top = 56
          Width = 80
          Height = 19
          Caption = #26032#23494#20445#31572#26696
        end
        object Label22: TLabel
          Left = 11
          Top = 110
          Width = 48
          Height = 19
          Caption = #26032#23494#30721
        end
        object Label23: TLabel
          Left = 0
          Top = 158
          Width = 80
          Height = 19
          Caption = #30830#35748#26032#23494#30721
        end
        object Edit11: TEdit
          Left = 89
          Top = 5
          Width = 232
          Height = 27
          TabOrder = 0
        end
        object Edit12: TEdit
          Left = 89
          Top = 53
          Width = 232
          Height = 27
          TabOrder = 1
        end
        object Edit13: TEdit
          Left = 89
          Top = 107
          Width = 232
          Height = 27
          PasswordChar = '*'
          TabOrder = 2
        end
        object Edit14: TEdit
          Left = 86
          Top = 152
          Width = 232
          Height = 27
          PasswordChar = '*'
          TabOrder = 3
        end
        object Button6: TButton
          Left = 105
          Top = 222
          Width = 96
          Height = 35
          Caption = #30830#23450#20462#25913
          TabOrder = 4
          OnClick = Button6Click
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #30331#24405#29992#25143#31649#29702
      ImageIndex = 5
      OnShow = TabSheet6Show
      ExplicitWidth = 737
      object Label26: TLabel
        Left = 48
        Top = 19
        Width = 64
        Height = 19
        Caption = #29992#25143#21517#65306
      end
      object Edit15: TEdit
        Left = 118
        Top = 16
        Width = 147
        Height = 27
        TabOrder = 0
      end
      object Button9: TButton
        Left = 271
        Top = 15
        Width = 105
        Height = 29
        Caption = #26597#35810
        TabOrder = 1
        OnClick = Button9Click
      end
      object DBGrid6: TDBGrid
        Left = 24
        Top = 50
        Width = 409
        Height = 196
        DataSource = DataSource7
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBEdit3: TDBEdit
        Left = 334
        Top = 252
        Width = 121
        Height = 27
        DataSource = DataSource7
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 3
        Visible = False
      end
      object Panel4: TPanel
        Left = 431
        Top = 51
        Width = 250
        Height = 195
        TabOrder = 4
        object Label27: TLabel
          Left = 25
          Top = 16
          Width = 64
          Height = 19
          Caption = #29992#25143#21517#65306
        end
        object Label30: TLabel
          Left = 25
          Top = 56
          Width = 48
          Height = 19
          Caption = #26435#38480#65306
        end
        object Label31: TLabel
          Left = 95
          Top = 16
          Width = 32
          Height = 19
          Caption = #29992#25143
        end
        object Label32: TLabel
          Left = 95
          Top = 56
          Width = 32
          Height = 19
          Caption = #29992#25143
        end
        object DBEdit2: TDBEdit
          Left = 25
          Top = 81
          Width = 80
          Height = 27
          DataSource = DataSource7
          ReadOnly = True
          TabOrder = 0
          Visible = False
          OnChange = DBEdit2Change
        end
        object Button10: TButton
          Left = 56
          Top = 114
          Width = 121
          Height = 34
          Caption = #21024#38500#29992#25143
          TabOrder = 1
          OnClick = Button10Click
        end
        object DBEdit4: TDBEdit
          Left = 128
          Top = 81
          Width = 81
          Height = 27
          DataSource = DataSource7
          ReadOnly = True
          TabOrder = 2
          Visible = False
          OnChange = DBEdit4Change
        end
        object Button14: TButton
          Left = 16
          Top = 154
          Width = 105
          Height = 25
          Caption = #38477#20026#26222#36890#29992#25143
          TabOrder = 3
          OnClick = Button14Click
        end
        object Button15: TButton
          Left = 127
          Top = 154
          Width = 105
          Height = 25
          Caption = #25552#20026#31649#29702#21592
          TabOrder = 4
          OnClick = Button15Click
        end
      end
      object Button11: TButton
        Left = 439
        Top = 15
        Width = 83
        Height = 29
        Caption = #28155#21152#29992#25143
        TabOrder = 5
        OnClick = Button11Click
      end
      object Panel5: TPanel
        Left = 24
        Top = 272
        Width = 665
        Height = 129
        TabOrder = 6
        Visible = False
        object Label28: TLabel
          Left = 88
          Top = 8
          Width = 64
          Height = 19
          Caption = #29992#25143#21517#65306
        end
        object Label29: TLabel
          Left = 297
          Top = 13
          Width = 48
          Height = 19
          Caption = #36523#20221#65306
        end
        object Label33: TLabel
          Left = 335
          Top = 13
          Width = 64
          Height = 19
          Caption = #26222#36890#29992#25143
        end
        object Edit16: TEdit
          Left = 158
          Top = 8
          Width = 123
          Height = 27
          TabOrder = 0
        end
        object ComboBox2: TComboBox
          Left = 351
          Top = 5
          Width = 90
          Height = 27
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Text = #26222#36890#29992#25143
          Items.Strings = (
            #26222#36890#29992#25143
            #31649#29702#21592)
        end
        object Button12: TButton
          Left = 127
          Top = 56
          Width = 75
          Height = 25
          Caption = #30830#23450#28155#21152
          TabOrder = 2
          OnClick = Button12Click
        end
        object Button13: TButton
          Left = 297
          Top = 54
          Width = 75
          Height = 25
          Caption = #21462#28040
          TabOrder = 3
          OnClick = Button13Click
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select_cus  '#39#39','#39#39','#39#39)
    Top = 376
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 8
    Top = 336
  end
  object MainMenu1: TMainMenu
    Left = 688
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
  object ADOQuery2: TADOQuery
    Active = True
    Connection = login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select_pro '#39#39','#39#39)
    Left = 600
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 632
  end
  object ADOQuery3: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 728
    Top = 264
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 688
    Top = 264
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 600
    Top = 440
  end
  object ADOQuery4: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 640
    Top = 432
  end
  object ADOQuery5: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 8
    Top = 192
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery5
    Left = 8
    Top = 144
  end
  object ADOQuery6: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 696
    Top = 392
  end
  object ADOCommand1: TADOCommand
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 696
    Top = 336
  end
  object SaveDialog1: TSaveDialog
    FileName = #23458#25143#20449#24687#34920
    Left = 16
    Top = 272
  end
  object ADOQuery7: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 72
    Top = 424
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery7
    Left = 24
    Top = 432
  end
end
