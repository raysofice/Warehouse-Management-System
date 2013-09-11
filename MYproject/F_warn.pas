unit F_warn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB,
  DBCtrls,dateutils, Mask;

type
  Twarn = class(TForm)
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N2: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N3: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Edit2: TEdit;
    Label6: TLabel;
    N14: TMenuItem;
    N15: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  warn: Twarn;
  tp:string;

implementation

uses F_var,F_login,F_main,F_storein,F_storeout,F_others;

{$R *.dfm}

procedure Twarn.Button1Click(Sender: TObject);
var
i,pred:integer;
begin
  if trystrtoint(edit2.Text,pred)=false then
  begin
    showmessage('请保证提前天数合法');
    exit;
  end;

  try
    Adoquery2.Close;
    Adoquery2.SQL.Text:='warn_prostate '+quotedstr(edit1.Text)+','+quotedstr(edit2.Text);
    ADoquery2.Open;
    for i:=0 to DBGrid2.Columns.Count-1 do
      begin
         //DBGrid1.Fields[i].DisplayWidth:=LENGTH(dbgrid1.DataSource.DataSet.Fields[i].AsString);
         DBGrid2.Fields[i].DisplayWidth:=12;
      end;
  finally

  end;
end;

procedure Twarn.Button2Click(Sender: TObject);
var
i:integer;
begin
  try
    Adoquery1.Close;
    if combobox1.ItemIndex=0 then
      tp:='warn_pro_bo';
    if combobox1.ItemIndex=1 then
      tp:='warn_pro_h';
    if combobox1.ItemIndex=2 then
      tp:='warn_pro_l';
    Adoquery1.SQL.Text:=tp+quotedstr(edit3.Text)+','+quotedstr(edit4.text);
    ADoquery1.Open;
    for i:=0 to DBGrid1.Columns.Count-1 do
      begin
         //DBGrid1.Fields[i].DisplayWidth:=LENGTH(dbgrid1.DataSource.DataSet.Fields[i].AsString);
         DBGrid1.Fields[i].DisplayWidth:=12;
      end;
  finally

  end;
end;

procedure Twarn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dec(num);
if num=0 then
  login.Close;
end;

procedure Twarn.FormShow(Sender: TObject);
var
i:integer;
begin
inc(num);
edit1.Text:='';
edit2.Text:='0';
edit3.Text:='';
edit4.Text:='';
combobox1.ItemIndex:=0;
try
    Adoquery1.Close;
    if combobox1.ItemIndex=0 then
      tp:='warn_pro_bo';
    if combobox1.ItemIndex=1 then
      tp:='warn_pro_h';
    if combobox1.ItemIndex=2 then
      tp:='warn_pro_l';
    Adoquery1.SQL.Text:=tp+quotedstr(edit3.Text)+','+quotedstr(edit4.text);
    ADoquery1.Open;
    for i:=0 to DBGrid1.Columns.Count-1 do
      begin
         //DBGrid1.Fields[i].DisplayWidth:=LENGTH(dbgrid1.DataSource.DataSet.Fields[i].AsString);
         DBGrid1.Fields[i].DisplayWidth:=12;
      end;
except

end;
try
    Adoquery2.Close;
    Adoquery2.SQL.Text:='warn_prostate '+quotedstr(edit1.Text)+','+quotedstr(edit2.Text);
    ADoquery2.Open;
    for i:=0 to DBGrid2.Columns.Count-1 do
      begin
         //DBGrid1.Fields[i].DisplayWidth:=LENGTH(dbgrid1.DataSource.DataSet.Fields[i].AsString);
         DBGrid2.Fields[i].DisplayWidth:=12;
      end;
except

end;
end;

procedure Twarn.N10Click(Sender: TObject);
begin
storein.pagecontrol1.ActivePageIndex:=0;
storein.show;
warn.Close;
end;

procedure Twarn.N11Click(Sender: TObject);
begin
storein.pagecontrol1.ActivePageIndex:=1;
storein.show;
warn.Close;
end;

procedure Twarn.N12Click(Sender: TObject);
begin
storeout.pagecontrol1.ActivePageIndex:=0;
storeout.show;
warn.Close;
end;

procedure Twarn.N13Click(Sender: TObject);
begin
storeout.pagecontrol1.ActivePageIndex:=1;
storeout.show;
warn.Close;
end;

procedure Twarn.N14Click(Sender: TObject);
begin
others.pagecontrol1.ActivePageIndex:=0;
others.show;
warn.Close;
end;

procedure Twarn.N15Click(Sender: TObject);
begin
others.pagecontrol1.ActivePageIndex:=1;
others.show;
warn.Close;
end;

procedure Twarn.N16Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=4;
main.show;
warn.Close;
end;

procedure Twarn.N17Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=5;
main.show;
warn.Close;
end;

procedure Twarn.N6Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=0;
main.show;
warn.Close;
end;

procedure Twarn.N7Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=1;
main.show;
warn.Close;
end;

procedure Twarn.N8Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=2;
main.show;
warn.Close;
end;

procedure Twarn.N9Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=3;
main.show;
warn.Close;
end;

end.
