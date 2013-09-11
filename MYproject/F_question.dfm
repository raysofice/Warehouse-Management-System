object question: Tquestion
  Left = 537
  Top = 165
  Caption = #25214#22238#23494#30721
  ClientHeight = 329
  ClientWidth = 479
  Color = clGradientActiveCaption
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = #26999#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 72
    Top = 48
    Width = 80
    Height = 19
    Caption = #29992#25143#21517#65306
  end
  object Label2: TLabel
    Left = 72
    Top = 80
    Width = 60
    Height = 19
    Caption = #38382#39064#65306
    Visible = False
  end
  object Label3: TLabel
    Left = 152
    Top = 78
    Width = 10
    Height = 19
    Visible = False
  end
  object Label4: TLabel
    Left = 72
    Top = 105
    Width = 60
    Height = 19
    Caption = #31572#26696#65306
    Visible = False
  end
  object Label5: TLabel
    Left = 297
    Top = 48
    Width = 10
    Height = 19
  end
  object Edit1: TEdit
    Left = 152
    Top = 45
    Width = 137
    Height = 27
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 152
    Top = 102
    Width = 137
    Height = 27
    TabStop = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    Visible = False
  end
  object Button1: TButton
    Left = 152
    Top = 168
    Width = 97
    Height = 33
    Caption = #30830#23450
    TabOrder = 2
    OnClick = Button1Click
  end
  object ADOQuery2: TADOQuery
    Connection = login.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select (passwprd) from Users where userid=pd.text;')
    Left = 24
    Top = 24
  end
end
