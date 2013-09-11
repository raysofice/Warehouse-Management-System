unit F_others;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB,
  DBCtrls,dateutils, Mask, TeEngine, Series, TeeProcs, Chart, DBChart, Outline,
  DirOutln, FileCtrl;

type
    Tothers = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ADOQuery1: TADOQuery;
    DBChart1: TDBChart;
    ADOQuery2: TADOQuery;
    DBChart2: TDBChart;
    Label1: TLabel;
    Button1: TButton;
    Series1: TBarSeries;
    Series2: TBarSeries;
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
    TabSheet2: TTabSheet;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Button3: TButton;
    ADOCommand1: TADOCommand;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Button5: TButton;
    ADOQuery3: TADOQuery;
    OpenDialog2: TOpenDialog;
    SaveDialog1: TSaveDialog;
    N14: TMenuItem;
    N15: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  others: Tothers;

implementation

uses F_login,F_var,F_main,F_storein,F_warn,F_storeout;

{$R *.dfm}

procedure Tothers.Button1Click(Sender: TObject);
begin
  try
    adoquery1.Close;
    adoquery1.SQL.Text:='c_in '+quotedstr(datetostr(datetimepicker1.Date))+','+quotedstr(datetostr(datetimepicker2.Date));
    adoquery1.Open;
    adoquery1.Active:=true;
    adoquery2.Close;
    adoquery2.SQL.Text:='c_out '+quotedstr(datetostr(datetimepicker1.Date))+','+quotedstr(datetostr(datetimepicker2.Date));
    adoquery2.Open;
    adoquery2.Active:=true;
  finally

  end;
end;

procedure Tothers.Button2Click(Sender: TObject);
begin
 if opendialog1.Execute then
 begin
  label2.Caption:=opendialog1.FileName;
 end;
end;

procedure Tothers.Button3Click(Sender: TObject);
var
strCaption,strDirectory:String;
wstrRoot:WideString;
begin
strCaption:='请选择备份地址';
wstrRoot:='';
SelectDirectory(strCaption,wstrRoot,strDirectory);
label3.Caption:=strDirectory;
end;


procedure Tothers.Button4Click(Sender: TObject);
{var
  filename:string;
begin
  if label3.Caption='' then
  begin
    showmessage('请先选择备份路径');
    exit;
  end;
  filename:=label3.Caption+'\ST'+datetostr(now)+'.bak';
try
  adocommand1.commandtext:='copydbs '+quotedstr(filename);
  adocommand1.CommandType:=cmdtext;
  adocommand1.Execute;
  showmessage('备份成功');
except

end;
end; }

 var
  save:string;
begin
  SaveDialog1.Filter:='备份文件(*.bak)|*.bak';
  SaveDialog1.Title:='请选择备份路径';
  if SaveDialog1.Execute then
  begin
    save:=SaveDialog1.FileName;
  end;
  if save<>'' then
  begin
    with ADOQuery3 do
    begin
      try
        Screen.Cursor:=crHourGlass;
        Close;
        SQL.Clear;
        SQL.Add('backup database '+'ST'+' to disk='''+save+'''');
        ExecSQL;
        Screen.Cursor :=crDefault;
        Application.MessageBox('数据库备份成功！','提示',0 + 64);
      except
        Screen.Cursor :=crDefault;
        Application.MessageBox('数据库备份失败，请检查备份的路径或网络形态！','失败',0 + MB_ICONINFORMATION);
      end;
    end;
  end;
 end;



procedure Tothers.Button5Click(Sender: TObject);


var sql:String;
begin
{if label2.Caption='' then
  begin
    showmessage('请先选择恢复路径');
    exit;
end;}
  if opendialog1.execute then
    begin
        with ADOCommand1 do
        begin
          COmmandText:='use master';
          Execute;
          CommandText:='alter database ST set offline with rollback immediate';
          Execute;
          CommandText:='restore database ST from disk='''+OpenDialog1.filename+''' with replace';
          Execute;
          CommandText:='alter database ST set online with rollback immediate';
          Execute;
          COmmandText:='use ST';
          Execute;
        end;
         Application.MessageBox('数据库恢复成功！','提示',0 + 64);
    end;
end;

procedure Tothers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dec(num);
if num=0 then
  login.Close;
end;

procedure Tothers.FormShow(Sender: TObject);
begin
inc(num);
end;

procedure Tothers.N10Click(Sender: TObject);
begin
storein.pagecontrol1.ActivePageIndex:=0;
storein.show;
others.Close;
end;

procedure Tothers.N11Click(Sender: TObject);
begin
storein.pagecontrol1.ActivePageIndex:=1;
storein.show;
others.Close;
end;

procedure Tothers.N12Click(Sender: TObject);
begin
storeout.pagecontrol1.ActivePageIndex:=0;
storeout.show;
others.Close;
end;

procedure Tothers.N13Click(Sender: TObject);
begin
storeout.pagecontrol1.ActivePageIndex:=1;
storeout.show;
others.Close;
end;

procedure Tothers.N14Click(Sender: TObject);
begin
others.pagecontrol1.ActivePageIndex:=0;
end;

procedure Tothers.N15Click(Sender: TObject);
begin
others.pagecontrol1.ActivePageIndex:=1;
end;

procedure Tothers.N16Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=4;
main.show;
others.Close;
end;

procedure Tothers.N17Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=5;
main.show;
others.Close;
end;

procedure Tothers.N4Click(Sender: TObject);
begin
warn.show;
others.Close;
end;

procedure Tothers.N6Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=0;
main.show;
others.Close;
end;

procedure Tothers.N7Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=1;
main.show;
others.Close;
end;

procedure Tothers.N8Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=2;
main.show;
others.Close;
end;

procedure Tothers.N9Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=3;
main.show;
others.Close;
end;

procedure Tothers.TabSheet1Show(Sender: TObject);
begin
DateTimePicker1.Date:=strtodate('2011-01-01');
DateTimePicker2.Date:=strtodate('2020-12-30');
try
    adoquery1.Close;
    adoquery1.SQL.Text:='c_in '+quotedstr(datetostr(datetimepicker1.Date))+','+quotedstr(datetostr(datetimepicker2.Date));
    adoquery1.Open;
    adoquery1.Active:=true;
    adoquery2.Close;
    adoquery2.SQL.Text:='c_out '+quotedstr(datetostr(datetimepicker1.Date))+','+quotedstr(datetostr(datetimepicker2.Date));
    adoquery2.Open;
    adoquery2.Active:=true;
except

end;
end;

end.
