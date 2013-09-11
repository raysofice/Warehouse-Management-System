unit F_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB,
  DBCtrls,dateutils, Mask,comobj;

type
  Tmain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    label3: TLabel;
    Edit2: TEdit;
    label2: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N2: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N3: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    ComboBox1: TComboBox;
    Button1: TButton;
    TabSheet4: TTabSheet;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Button2: TButton;
    DBNavigator2: TDBNavigator;
    Panel1: TPanel;
    Label6: TLabel;
    DBGrid3: TDBGrid;
    Label7: TLabel;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit5: TEdit;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    Edit6: TEdit;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    DBGrid4: TDBGrid;
    Button7: TButton;
    DBNavigator3: TDBNavigator;
    Edit9: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBGrid5: TDBGrid;
    ADOQuery5: TADOQuery;
    DataSource5: TDataSource;
    Edit7: TEdit;
    DBNavigator4: TDBNavigator;
    Button3: TButton;
    Edit8: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    ADOQuery6: TADOQuery;
    Button5: TButton;
    Label19: TLabel;
    TabSheet5: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Button4: TButton;
    Panel2: TPanel;
    Label20: TLabel;
    Edit10: TEdit;
    Panel3: TPanel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Button6: TButton;
    Label24: TLabel;
    Label25: TLabel;
    ADOCommand1: TADOCommand;
    TabSheet6: TTabSheet;
    Edit15: TEdit;
    Label26: TLabel;
    SaveDialog1: TSaveDialog;
    Button8: TButton;
    Button9: TButton;
    ADOQuery7: TADOQuery;
    DBGrid6: TDBGrid;
    DataSource7: TDataSource;
    DBEdit3: TDBEdit;
    Panel4: TPanel;
    Label27: TLabel;
    DBEdit2: TDBEdit;
    Button10: TButton;
    Button11: TButton;
    Panel5: TPanel;
    Label28: TLabel;
    Edit16: TEdit;
    Label29: TLabel;
    ComboBox2: TComboBox;
    Button12: TButton;
    Button13: TButton;
    N16: TMenuItem;
    N17: TMenuItem;
    Label30: TLabel;
    DBEdit4: TDBEdit;
    Button14: TButton;
    Button15: TButton;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Button16: TButton;
    DBNavigator1: TDBNavigator;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    N14: TMenuItem;
    N15: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBEdit1Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TabSheet5ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure cleartable1();
    procedure cleartable2();
    procedure cleartable3();
    procedure cleartable4();
    procedure cleartable5();
    procedure cleartable6();
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;


var
  main: Tmain;

implementation

uses F_var,F_product,F_login,F_storein,F_storeout,F_warn,
      F_others,F_add_customer,F_add_product,F_add_storage,F_add_staff;
{$R *.dfm}

var
  typ:string;
  d1,d2:string;
  an:string;
procedure Tmain.Button10Click(Sender: TObject);
begin
  if (us<>'father')and (dbedit4.Text='true') then
  begin
    showmessage('对不起你只能删除普通用户');
    exit;
  end;

  try
      adocommand1.CommandText:='delete_us '+quotedstr(label31.Caption);
      adocommand1.CommandType:=cmdtext;
      adocommand1.Execute;
      cleartable6();
  except

  end;

end;

procedure Tmain.Button11Click(Sender: TObject);
begin
  edit16.Text:='';
  panel5.Show;
end;

procedure Tmain.Button12Click(Sender: TObject);
var
  ad:string;
begin
  if edit16.Text='' then
  begin
    showmessage('用户名不能为空');
    exit;
  end;
  try
    adoquery6.Close;
    adoquery6.SQL.Text:='select_pd '+quotedstr(edit16.Text);
    adoquery6.Open;
    if(adoquery6.IsEmpty=false) then
    begin
      showmessage('用户名已存在');
      exit;
    end;
    if (us='father') and (combobox1.ItemIndex=1) then
    begin
      ad:='true';
    end
    else
      ad:='false';
    adocommand1.CommandText:='insert_us '+quotedstr(edit16.Text)+','+quotedstr(ad);
    adocommand1.CommandType:=cmdtext;
    adocommand1.Execute;
    cleartable6();
  except

  end;

end;

procedure Tmain.Button13Click(Sender: TObject);
begin
   edit16.Text:='';
   panel5.Visible:=false;
end;

procedure Tmain.Button14Click(Sender: TObject);
begin
  if (dbedit4.Text='false') then
  begin
    showmessage('该用户本身即为普通用户无需修改');
    exit;
  end;

  try
      adocommand1.CommandText:='update_us '+quotedstr(label31.Caption)+',false';
      adocommand1.CommandType:=cmdtext;
      adocommand1.Execute;
      cleartable6();
  except

  end;
end;

procedure Tmain.Button15Click(Sender: TObject);
begin
if (dbedit4.Text='true') then
  begin
    showmessage('该用户本身即为管理员无需修改');
    exit;
  end;

  try
      adocommand1.CommandText:='update_us '+quotedstr(label31.Caption)+',true';
      adocommand1.CommandType:=cmdtext;
      adocommand1.Execute;
      cleartable6();
  except

  end;
end;

procedure Tmain.Button16Click(Sender: TObject);
begin
F_var.typ:='供应商';
fcus:='main';
add_customer.Show;
end;

procedure Tmain.Button17Click(Sender: TObject);
begin
F_var.typ:='采购商';
fcus:='main';
add_customer.Show;
end;

procedure Tmain.Button18Click(Sender: TObject);
begin
fpro:='main';
add_product.Show;
end;

procedure Tmain.Button19Click(Sender: TObject);
begin
fstorage:='main';
add_storage.show;
end;

procedure Tmain.Button1Click(Sender: TObject);
begin
    typ:='';
    if(combobox1.ItemIndex=1) then
    begin
      typ:='采购商';
    end;
    if(combobox1.ItemIndex=2) then
    begin
      typ:='供应商';
    end;
    try
      Adoquery1.Close;
      Adoquery1.SQL.Text:='select_cus  '+quotedstr(edit1.Text)+','+quotedstr(edit2.text)+','+quotedstr(typ);
      ADoquery1.Open;
      DBGrid1.Columns.Items[1].ReadOnly:=true;
      DBGrid1.Columns.Items[2].ReadOnly:=true;
    except

    end;
end;

procedure Tmain.Button20Click(Sender: TObject);
begin
fstaff:='main';
add_staff.show;
end;

procedure Tmain.Button2Click(Sender: TObject);
begin
   try
      Adoquery2.Close;
      Adoquery2.SQL.Text:='select_pro  '+quotedstr(edit3.Text)+','+quotedstr(edit4.text);
      ADoquery2.Open;
      DBGrid2.Columns.Items[1].ReadOnly:=true;
      DBGrid2.Columns.Items[3].ReadOnly:=true;
    except
   end;
end;

procedure Tmain.Button3Click(Sender: TObject);
var
i:integer;
begin
  try
    adoquery5.close;
    adoquery5.SQL.Text:='select_staff '+quotedstr(edit8.Text)+','+quotedstr(edit7.Text);
    adoquery5.Open;
    DBGrid5.Columns.Items[1].ReadOnly:=true;
  finally

  end;
  if(DBGrid5.Columns.Count <> 0) then
  begin
    for i:=0 to DBGrid5.Columns.Count-1 do
      begin
         DBGrid5.Fields[i].DisplayWidth:=LENGTH(dbgrid5.DataSource.DataSet.Fields[i].AsString);
         //DBGrid1.Fields[i].DisplayWidth:=12;
      end;
    DBGrid5.Fields[2].DisplayWidth:=20;
  end;
end;

procedure Tmain.Button4Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure Tmain.Button5Click(Sender: TObject);
begin
  if(edit10.Text=an)then
  begin
    panel3.Visible:=true;
  end
  else
    showmessage('密保问题不正确');
end;

procedure Tmain.Button6Click(Sender: TObject);
begin
  if(edit11.Text='') or(edit12.Text='') or(edit13.Text='')or(edit14.Text='') then
  begin
    showmessage('请按要求填齐信息');
     exit;
  end;
  if edit13.Text<>edit14.Text then
  begin
    showmessage('请保证两次密码输入相同');
    edit13.Text:='';
    edit14.Text:='';
    exit;
  end;
  try
    adocommand1.CommandText:='update_userinfo '+quotedstr(us)+','+quotedstr(edit11.text)+','+
                          quotedstr(edit12.Text)+','+quotedstr(edit13.Text);
    adocommand1.CommandType:=cmdtext;
    adocommand1.Execute;
    cleartable5();
    showmessage('修改成功');
  finally

  end;

end;

procedure Tmain.Button7Click(Sender: TObject);
begin
  try
    adoquery4.close;
    adoquery4.SQL.Text:='select_storage '+quotedstr(edit6.Text)+','+quotedstr(edit9.Text);
    adoquery4.Open;
    DBGrid4.Columns.Items[1].ReadOnly:=true;
  finally

  end;
  if(DBGrid4.Columns.Count <> 0) then
  begin
    DBGrid4.Fields[0].DisplayWidth:=10;
    DBGrid4.Fields[1].DisplayWidth:=10;
    DBGrid4.Fields[2].DisplayWidth:=80;
  end;
end;

procedure Tmain.Button8Click(Sender: TObject);
var
    excelApp,WorkBook:olevariant;
    xlsFileName:string;
    i,j:integer;
begin
  if  savedialog1.Execute  then
  begin
    xlsFileName:=savedialog1.FileName;
  end else
  begin
    Exit;
  end;

  try
    excelApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('系统没有安装Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    //列名，字段名
    WorkBook:=excelApp.workbooks.Add;
    for   i:=0   to   dbgrid1.Columns.Count-1 do
    begin
      excelApp.Cells(1,i+1):=dbgrid1.Columns[i].Title.Caption;
      //ExcelApp.ActiveSheet.Columns[1].Width := 5;
    end;

    dbgrid1.DataSource.DataSet.First;
    j:=2;
    while not dbgrid1.DataSource.DataSet.Eof do
    begin
      for   i:=0   to   dbgrid1.Columns.Count-1   do
      begin
        excelApp.Cells(j,i+1):=dbgrid1.Fields[i].asstring;
        //excelapp.cells(j,i+1).EntireColumn.AutoFit;//自适应<v
      end;
      dbgrid1.DataSource.DataSet.Next;
      inc(j);
    end;

    WorkBook.SaveAS(xlsFileName);
    WorkBook.close;
  except
    ShowMessage('文件导出失败！');
    Exit;
  end;
  Application.MessageBox('保存成功!','恭喜',MB_OK   +   MB_ICONINFORMATION);
end;



procedure Tmain.Button9Click(Sender: TObject);
begin
  try
     adoquery7.Close;
     adoquery7.SQL.Text:='select_usinfo '+quotedstr(edit15.Text);
     adoquery7.Open;
     DBGrid6.Fields[0].DisplayWidth:=15;
     DBGrid6.Fields[1].DisplayWidth:=15;
     dbedit2.DataField:=adoquery7.Fields[0].FieldName;
     dbedit3.DataField:=adoquery7.Fields[1].FieldName;
  except

  end;
end;

procedure Tmain.DateTimePicker2Change(Sender: TObject);
begin
  try
      adoquery3.close;
      adoquery3.SQL.Text:='select_prostate '+quotedstr(edit5.Text)+','+quotedstr(datetostr(datetimepicker1.Date))+','+quotedstr(datetostr(datetimepicker2.Date));
      adoquery3.Open;
     except
  end;
end;

procedure Tmain.DBEdit1Change(Sender: TObject);
begin
  edit5.Text:=dbedit1.Text;

end;

procedure Tmain.DBEdit2Change(Sender: TObject);
begin
label31.Caption:=dbedit2.Text;
end;

procedure Tmain.DBEdit4Change(Sender: TObject);
begin
if dbedit4.Text='false' then
begin
  label32.Caption:='普通用户';
end
else
  label32.Caption:='管理员';
end;

procedure Tmain.DBGrid2CellClick(Column: TColumn);
begin
  dbgrid1.SelectedField
end;

procedure Tmain.Edit5Change(Sender: TObject);
begin
  try
    adoquery3.Close;
    adoquery3.SQL.Text:='select_prostate;2 '+quotedstr(edit5.Text);
    adoquery3.Open;
    DBGrid3.Fields[1].DisplayWidth:=15;
  finally

  end;
end;

procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dec(num);
if num=0 then
  login.Close;
end;

procedure Tmain.FormShow(Sender: TObject);
begin
      if admin=true then
      begin
         TabSheet6.TabVisible:=true;
      end
      else
      begin
        TabSheet6.TabVisible:=false;
      end;
      inc(num);
end;

procedure Tmain.DateTimePicker1Change(Sender: TObject);
begin
   try
      adoquery3.close;
      adoquery3.SQL.Text:='select_prostate '+quotedstr(edit5.Text)+','+quotedstr(datetostr(datetimepicker1.Date))+','+quotedstr(datetostr(datetimepicker2.Date));
      adoquery3.Open;
   finally

    end;
end;

procedure Tmain.N10Click(Sender: TObject);
begin
  storein.pagecontrol1.ActivePageIndex:=0;
   storein.show;
   main.Close;
end;

procedure Tmain.N11Click(Sender: TObject);
begin
storein.pagecontrol1.ActivePageIndex:=1;
   storein.show;
   main.Close;
end;

procedure Tmain.N12Click(Sender: TObject);
begin
storeout.pagecontrol1.ActivePageIndex:=0;
storeout.show;
main.Close;
end;

procedure Tmain.N13Click(Sender: TObject);
begin
storeout.pagecontrol1.ActivePageIndex:=1;
storeout.show;
main.Close;
end;

procedure Tmain.N14Click(Sender: TObject);
begin
others.pagecontrol1.ActivePageIndex:=0;
others.show;
main.Close;
end;

procedure Tmain.N15Click(Sender: TObject);
begin
others.pagecontrol1.ActivePageIndex:=1;
others.show;
main.Close;
end;

procedure Tmain.N16Click(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=4;
end;

procedure Tmain.N17Click(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=5;
end;

procedure Tmain.N4Click(Sender: TObject);
begin
warn.show;
main.Close;
end;

procedure Tmain.N6Click(Sender: TObject);
begin
    pagecontrol1.ActivePageIndex:=0;
end;


procedure Tmain.N7Click(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=1;
end;

procedure Tmain.N8Click(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=2;
end;

procedure Tmain.N9Click(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=3;
end;

procedure Tmain.TabSheet1Show(Sender: TObject);
begin
  cleartable1();
end;

procedure Tmain.TabSheet2Show(Sender: TObject);
begin
  cleartable2();
end;

procedure Tmain.TabSheet3Show(Sender: TObject);
begin
  cleartable3();
end;

procedure Tmain.TabSheet4Show(Sender: TObject);
begin
  cleartable4();
end;

procedure Tmain.TabSheet5ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  label25.Caption:=us;
  if admin then
    label17.Caption:='管理员';
  if admin=false then
    label17.Caption:='普通用户';
  try
    adoquery6.Close;
    adoquery6.SQL.Text:='select_qu '+quotedstr(us);
    adoquery6.Open;
    label15.Caption:= ADOquery6.Fields[0].Asstring;
    an := ADOquery6.Fields[1].Asstring;
  finally

  end;
  panel2.Visible:=false;
  edit10.text:='';
  panel3.Visible:=false;
  edit11.Text:='';
  edit12.Text:='';
  edit13.Text:='';
  edit14.Text:='';

end;

procedure Tmain.TabSheet5Show(Sender: TObject);
begin
  cleartable5();
end;


procedure Tmain.TabSheet6Show(Sender: TObject);
begin
    if us='father' then
    begin
      button14.Visible:=true;
      button15.Visible:=true;
      combobox2.Visible:=true;
      label33.Visible:=false;
    end
    else
    begin
      button14.Visible:=false;
      button15.Visible:=false;
      combobox2.Visible:=false;
      label33.Visible:=true;
    end;
     cleartable6();
end;

procedure Tmain.cleartable1();
begin
  edit1.Text:='';
  edit2.text:='';
  combobox1.ItemIndex:=0;
    try
      Adoquery1.Close;
      Adoquery1.SQL.Text:='select_cus  '+quotedstr('')+','+quotedstr('')+','+quotedstr('');
      ADoquery1.Open;
      DBGrid1.Columns.Items[1].ReadOnly:=true;
      DBGrid1.Columns.Items[2].ReadOnly:=true;
    except

    end;
end;

procedure Tmain.cleartable2();
begin
  edit3.text:='';
  edit4.text:='';
  try
      Adoquery2.Close;
      Adoquery2.SQL.Text:='select_pro  '+quotedstr(edit3.Text)+','+quotedstr(edit4.text);
      ADoquery2.Open;
      DBGrid2.Columns.Items[1].ReadOnly:=true;
      DBGrid2.Columns.Items[3].ReadOnly:=true;
    except
   end;
   datetimepicker1.date:=strtodate('2011-01-01');
   datetimepicker2.date:=strtodate('2020-12-31');
end;

procedure Tmain.cleartable3();
begin
  edit6.Text:='';
  edit9.Text:='';
  try
    adoquery4.close;
    adoquery4.SQL.Text:='select_storage '+quotedstr(edit6.Text)+','+quotedstr(edit9.Text);
    adoquery4.Open;
    DBGrid4.Columns.Items[1].ReadOnly:=true;
  finally

  end;
  if(DBGrid4.Columns.Count <> 0) then
  begin
    DBGrid4.Fields[0].DisplayWidth:=10;
    DBGrid4.Fields[1].DisplayWidth:=10;
    DBGrid4.Fields[2].DisplayWidth:=60;
  end;
end;

procedure Tmain.cleartable4();
var
i:integer;
begin
  edit8.Text:='';
  edit7.Text:='';
  try
    adoquery5.close;
    adoquery5.SQL.Text:='select_staff '+quotedstr(edit8.Text)+','+quotedstr(edit7.Text);
    adoquery5.Open;
    DBGrid5.Columns.Items[1].ReadOnly:=true;
  finally

  end;
  if(DBGrid5.Columns.Count <> 0) then
  begin
    for i:=0 to DBGrid5.Columns.Count-1 do
      begin
         DBGrid5.Fields[i].DisplayWidth:=LENGTH(dbgrid5.DataSource.DataSet.Fields[i].AsString);
         //DBGrid1.Fields[i].DisplayWidth:=12;
      end;
    DBGrid5.Fields[2].DisplayWidth:=20;
  end;
end;

procedure Tmain.cleartable5();
begin
   label25.Caption:=us;
  if admin then
    label17.Caption:='管理员';
  if admin=false then
    label17.Caption:='普通用户';
  try
    adoquery6.Close;
    adoquery6.SQL.Text:='select_qu '+quotedstr(us);
    adoquery6.Open;
    label15.Caption:= ADOquery6.Fields[0].Asstring;
    an := ADOquery6.Fields[1].Asstring;
  finally

  end;
  panel2.Visible:=false;
  edit10.text:='';
  panel3.Visible:=false;
  edit11.Text:='';
  edit12.Text:='';
  edit13.Text:='';
  edit14.Text:='';
end;

procedure Tmain.cleartable6();
begin
  edit15.Text:='';
  edit16.Text:='';
  panel5.Visible:=false;
  try
     adoquery7.Close;
     adoquery7.SQL.Text:='select_usinfo '+quotedstr(edit15.Text);
     adoquery7.Open;
     DBGrid6.Fields[0].DisplayWidth:=15;
     DBGrid6.Fields[1].DisplayWidth:=15;
     dbedit2.DataField:=adoquery7.Fields[0].FieldName;
     dbedit3.DataField:=adoquery7.Fields[1].FieldName;
  except

  end;
end;

end.
