object others: Tothers
  Left = 537
  Top = 219
  Caption = #24211#23384#31649#29702#31995#32479
  ClientHeight = 437
  ClientWidth = 561
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
    Width = 561
    Height = 457
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #36135#29289#36827#20986#32479#35745
      OnShow = TabSheet1Show
      object Label1: TLabel
        Left = 160
        Top = 3
        Width = 12
        Height = 13
        Caption = #33267
      end
      object DBChart1: TDBChart
        Left = 3
        Top = 28
        Width = 534
        Height = 198
        Title.Text.Strings = (
          #21830#21697#20837#24211#37327#32479#35745#34920)
        DepthAxis.Automatic = False
        DepthAxis.AutomaticMaximum = False
        DepthAxis.AutomaticMinimum = False
        DepthAxis.Maximum = 0.439999999999999900
        DepthAxis.Minimum = -0.560000000000000100
        DepthTopAxis.Automatic = False
        DepthTopAxis.AutomaticMaximum = False
        DepthTopAxis.AutomaticMinimum = False
        DepthTopAxis.Maximum = 0.439999999999999900
        DepthTopAxis.Minimum = -0.560000000000000100
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 43.239999999999990000
        LeftAxis.Minimum = -2.760000000000001000
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        TabOrder = 0
        object Series1: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = True
          DataSource = ADOQuery1
          XLabelsSource = 'p_name'
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'su'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'su'
        end
      end
      object DBChart2: TDBChart
        Left = 3
        Top = 232
        Width = 534
        Height = 194
        Title.Text.Strings = (
          #21830#21697#20986#24211#37327#32479#35745#34920)
        TabOrder = 1
        object Series2: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = True
          DataSource = ADOQuery2
          SeriesColor = clLime
          XLabelsSource = 'p_name'
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'su'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'su'
        end
      end
      object Button1: TButton
        Left = 336
        Top = -3
        Width = 75
        Height = 25
        Caption = #32479#35745
        TabOrder = 2
        OnClick = Button1Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 32
        Top = 3
        Width = 113
        Height = 21
        Date = 41174.026693541670000000
        Time = 41174.026693541670000000
        TabOrder = 3
      end
      object DateTimePicker2: TDateTimePicker
        Left = 192
        Top = 3
        Width = 121
        Height = 21
        Date = 41174.026693541670000000
        Time = 41174.026693541670000000
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = #25968#25454#22791#20221#19982#24674#22797
      ImageIndex = 1
      object Label2: TLabel
        Left = 143
        Top = 57
        Width = 3
        Height = 13
      end
      object Label3: TLabel
        Left = 143
        Top = 193
        Width = 3
        Height = 13
      end
      object Button2: TButton
        Left = 26
        Top = 49
        Width = 111
        Height = 32
        Caption = #36873#25321#35201#36824#21407#30340#25991#20214
        TabOrder = 0
        Visible = False
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 26
        Top = 185
        Width = 111
        Height = 32
        Caption = #36873#25321#22791#20221#36335#24452':'
        TabOrder = 1
        Visible = False
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 26
        Top = 232
        Width = 111
        Height = 49
        Caption = #22791#20221#25968#25454#24211
        TabOrder = 2
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 26
        Top = 96
        Width = 103
        Height = 49
        Caption = #24674#22797#25968#25454#24211
        TabOrder = 3
        OnClick = Button5Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select p_name,SUM(in_amount)as su'
      'from In_item,Product,In_order'
      'where In_item.p_id=Product.p_id and In_item.in_id=In_order.in_id'
      'group by p_name')
    Left = 504
    Top = 24
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = login.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select p_name,SUM(out_amount)as su'
      'from out_item,Product,out_order'
      
        'where out_item.p_id=Product.p_id and out_item.out_id=out_order.o' +
        'ut_id'
      'group by p_name')
    Left = 448
    Top = 16
  end
  object MainMenu1: TMainMenu
    Left = 480
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
  object OpenDialog1: TOpenDialog
    Filter = #22791#20221#25991#20214'| *.bak'
    Left = 400
  end
  object ADOCommand1: TADOCommand
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 336
  end
  object ADOQuery3: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    Left = 264
    Top = 65528
  end
  object OpenDialog2: TOpenDialog
    Left = 472
    Top = 64
  end
  object SaveDialog1: TSaveDialog
    Left = 368
    Top = 40
  end
end
