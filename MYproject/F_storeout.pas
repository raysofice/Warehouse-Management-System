unit F_storeout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, Menus, DB, ADODB, ExtCtrls,
  DBCtrls, Mask,comobj;

type
  Tstoreout = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    label2: TLabel;
    label3: TLabel;
    label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBGrid2: TDBGrid;
    Edit6: TEdit;
    Edit7: TEdit;
    DBNavigator2: TDBNavigator;
    Edit5: TEdit;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DateTimePicker1: TDateTimePicker;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Button3: TButton;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ADOCommand1: TADOCommand;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    button2: TButton;
    DBEdit2: TDBEdit;
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
    Label19: TLabel;
    Label20: TLabel;
    Button4: TButton;
    Button5: TButton;
    SaveDialog1: TSaveDialog;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Button6: TButton;
    N14: TMenuItem;
    N15: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Editchange();
    procedure Label16DblClick(Sender: TObject);
    procedure Label18DblClick(Sender: TObject);
    procedure Edit2DblClick(Sender: TObject);
    procedure Edit5DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure button2Click(Sender: TObject);
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
    procedure cleartab1();
    procedure cleartab2();
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  storeout: Tstoreout;

implementation

  uses F_login,F_var,F_customer,F_staff,F_add_out_item,F_main,F_storein,F_warn,F_others;

{$R *.dfm}

var
  i:integer;
  tot,tt: double;

procedure Tstoreout.Button1Click(Sender: TObject);
begin
  if(checkbox1.Checked=false) then
  begin
    try
      adoquery1.close;
      adoquery1.SQL.Text:='select_storeout;1 '+quotedstr(edit1.Text)+','+quotedstr(edit2.Text)+','+quotedstr(edit5.Text);
      adoquery1.Open;
   finally
   end;
  end
  else
    begin
      try
        adoquery1.close;
        adoquery1.SQL.Text:='select_storeout;2 '+quotedstr(edit1.Text)+','+quotedstr(edit2.Text)+','+quotedstr(edit5.Text)+','+quotedstr(datetostr(datetimepicker3.Date))+','+quotedstr(datetostr(datetimepicker4.Date));
        adoquery1.Open;
      finally

      end;
  end;
  if(DBGrid1.Columns.Count <> 0) then
  begin
    for i:=0 to DBGrid1.Columns.Count-1 do
      begin
         DBGrid1.Fields[i].DisplayWidth:=LENGTH(dbgrid1.DataSource.DataSet.Fields[i].AsString);
         //DBGrid1.Fields[i].DisplayWidth:=12;
      end;
      dbedit1.dataField:=dbgrid1.Columns[0].FieldName;
      dbedit3.dataField:=dbgrid1.Columns[2].FieldName;
      dbedit4.dataField:=dbgrid1.Columns[4].FieldName;
      dbedit5.dataField:=dbgrid1.Columns[5].FieldName;
  end;
end;

procedure Tstoreout.button2Click(Sender: TObject);
begin
  add_out_item.show;
end;

procedure Tstoreout.Button3Click(Sender: TObject);
begin
  if (label16.Caption='[双击导入]') then
  begin
    showmessage('请将采购商信息导入');
    exit;
  end;
  if(label18.Caption='[双击导入]') then
  begin
    showmessage('请将经手人信息导入');
    exit;
  end;
  if (label16.Caption<>'[双击导入]')and(label18.Caption<>'[双击导入]') then
  begin
    try
    adocommand1.CommandText:='insert_storeout '+quotedstr(datetostr(datetimepicker1.Date))+','+
                          quotedstr(label16.Caption)+','+quotedstr(label18.Caption);
    adocommand1.CommandType:=cmdtext;
    adocommand1.Execute;
    try
        adoquery3.Close;
        adoquery3.SQL.Text:='select_max_storeout';
        adoquery3.Open;
        dbedit2.DataField:=adoquery3.Fields[0].FieldName;
        panel2.Visible:=true;
        tt:=0;
        label20.Caption:=floattostr(tt);
      finally

      end;
    except

    end;
  end;
end;

procedure Tstoreout.Button4Click(Sender: TObject);
begin
cleartab2();
end;

procedure Tstoreout.Button5Click(Sender: TObject);
var
    excelApp,WorkBook:olevariant;
    xlsFileName:string;
    i,j:integer;
begin
  savedialog1.FileName:='出库单,编号'+edit6.Text;
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
    excelApp.Cells(1,1):='采购商';
    excelApp.Cells(1,2):=dbedit3.Text;
    excelApp.Cells(2,1):='经手人';
    excelApp.Cells(2,2):=dbedit4.Text;
    excelApp.Cells(3,1):='日期';
    excelApp.Cells(3,2):=dbedit5.Text;
    for   i:=0   to   dbgrid2.Columns.Count-1 do
    begin
      excelApp.Cells(4,i+1):=dbgrid2.Columns[i].Title.Caption;
      //ExcelApp.ActiveSheet.Columns[1].Width := 5;
    end;

    dbgrid2.DataSource.DataSet.First;
    j:=5;
    while not dbgrid2.DataSource.DataSet.Eof do
    begin
      for   i:=0   to   dbgrid2.Columns.Count-1   do
      begin
        excelApp.Cells(j,i+1):=dbgrid2.Fields[i].asstring;
        //excelapp.cells(j,i+1).EntireColumn.AutoFit;//自适应<v
      end;
      dbgrid2.DataSource.DataSet.Next;
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

procedure Tstoreout.Button6Click(Sender: TObject);
var
i:integer;
begin

i:=stringgrid1.Rowcount-1;
if i=1 then
begin
  exit;
end;
try
    adocommand1.CommandText:='delete_storeout_item '+quotedstr(dbedit2.Text)+','+quotedstr(inttostr(i))+','+
      quotedstr(stringgrid1.cells[1,i])+','+quotedstr(stringgrid1.cells[3,i])+','+quotedstr(stringgrid1.cells[6,i]);
    adocommand1.CommandType:=cmdtext;
    adocommand1.Execute;
except

end;
stringgrid1.Rowcount:=stringgrid1.Rowcount-1;
end;

procedure Tstoreout.DBEdit1Change(Sender: TObject);
begin
  edit6.Text:=dbedit1.Text;
  edit7.Text:='';
end;

procedure Tstoreout.EditChange();
begin
    try
      adoquery2.close;
      if(edit7.Text <> '') then
      begin
        adoquery2.SQL.Text:='select_storeout_item '+quotedstr(edit6.Text)+','+quotedstr(edit7.Text);
      end
      else
      begin
        adoquery2.SQL.Text:='select_storeout_item;2 '+quotedstr(edit6.Text);
      end;
      adoquery2.Open;
   finally

   end;
   if(DBGrid2.Columns.Count <> 0) then
    begin
    for i:=0 to DBGrid2.Columns.Count-1 do
      begin
         DBGrid2.Fields[i].DisplayWidth:=LENGTH(dbgrid2.DataSource.DataSet.Fields[i].AsString);
    end;
    tot:=0;
    if(adoquery2.RecordCount<>0)  then
    begin
       DBGrid2.DataSource.DataSet.DisableControls;
      try
        DBGrid2.DataSource.DataSet.First;
        while   not   DBGrid2.DataSource.DataSet.Eof   do
        begin
            tot  :=  tot+ DBGrid2.DataSource.DataSet.Fields[7].value*DBGrid2.DataSource.DataSet.Fields[8].value;
            DBGrid2.DataSource.DataSet.next;
        end;
      finally
        DBGrid2.DataSource.DataSet.EnableControls;
      end;
    end;
    label11.Caption:=floattostr(tot);

  end;
end;

procedure Tstoreout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dec(num);
if num=0 then
  login.Close;
end;

procedure Tstoreout.FormShow(Sender: TObject);
begin
inc(num);
end;

procedure Tstoreout.Label16DblClick(Sender: TObject);
begin
  kind_cus:='out_insert_cus';
  typ:='采购商';
  customer.Show;
end;

procedure Tstoreout.Label18DblClick(Sender: TObject);
begin
  kind_staff:='out_insert_staff';
  staff.show;
end;

procedure Tstoreout.N10Click(Sender: TObject);
begin
storein.pagecontrol1.ActivePageIndex:=0;
storein.show;
storeout.Close;
end;

procedure Tstoreout.N11Click(Sender: TObject);
begin
storein.pagecontrol1.ActivePageIndex:=1;
storein.show;
storeout.Close;
end;

procedure Tstoreout.N12Click(Sender: TObject);
begin
pagecontrol1.ActivePageIndex:=0;
end;

procedure Tstoreout.N13Click(Sender: TObject);
begin
pagecontrol1.ActivePageIndex:=1;
end;

procedure Tstoreout.N14Click(Sender: TObject);
begin
others.pagecontrol1.ActivePageIndex:=0;
others.show;
storeout.Close;
end;

procedure Tstoreout.N15Click(Sender: TObject);
begin
others.pagecontrol1.ActivePageIndex:=1;
others.show;
storeout.Close;
end;

procedure Tstoreout.N16Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=4;
main.show;
storeout.Close;
end;

procedure Tstoreout.N17Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=5;
main.show;
storeout.Close;
end;

procedure Tstoreout.N4Click(Sender: TObject);
begin
warn.show;
storeout.Close;
end;

procedure Tstoreout.N6Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=0;
main.show;
storeout.Close;
end;

procedure Tstoreout.N7Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=1;
main.show;
storeout.Close;
end;

procedure Tstoreout.N8Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=2;
main.show;
storeout.Close;
end;

procedure Tstoreout.N9Click(Sender: TObject);
begin
main.pagecontrol1.ActivePageIndex:=3;
main.show;
storeout.Close;
end;

procedure Tstoreout.TabSheet1Show(Sender: TObject);
begin
cleartab1();
end;

procedure Tstoreout.TabSheet2Show(Sender: TObject);
begin
cleartab2();
stringgrid1.Cells[0,0]:='序号';
stringgrid1.Cells[1,0]:='商品编号';
stringgrid1.Cells[2,0]:='商品名称';
stringgrid1.Cells[3,0]:='生产日期';
stringgrid1.Cells[4,0]:='单位';
stringgrid1.Cells[5,0]:='售价';
stringgrid1.Cells[6,0]:='售出量';
stringgrid1.ColWidths[0]:=60;
stringgrid1.ColWidths[1]:=80;
stringgrid1.ColWidths[2]:=120;
stringgrid1.ColWidths[3]:=120;
stringgrid1.ColWidths[4]:=80;
stringgrid1.ColWidths[5]:=120;
stringgrid1.ColWidths[6]:=80;
end;

procedure Tstoreout.Edit2DblClick(Sender: TObject);
begin
  kind_cus:='out_select_cus';
  typ:='采购商';
  customer.Show;
end;

procedure Tstoreout.Edit5DblClick(Sender: TObject);
begin
  kind_staff:='out_select_staff';
  staff.Show;
end;

procedure Tstoreout.Edit6Change(Sender: TObject);
begin
    EditChange();
end;

procedure Tstoreout.Edit7Change(Sender: TObject);
begin
   EditChange();
end;

procedure Tstoreout.cleartab1();
begin
checkbox1.Checked:=false;
edit1.Text:='';
edit2.Text:='';
edit5.Text:='';
try
 adoquery1.close;
 adoquery1.SQL.Text:='select_storeout;1 '+quotedstr(edit1.Text)+','+quotedstr(edit2.Text)+','+quotedstr(edit5.Text);
 adoquery1.Open;
except

end;
  if(DBGrid1.Columns.Count <> 0) then
  begin
    for i:=0 to DBGrid1.Columns.Count-1 do
      begin
         DBGrid1.Fields[i].DisplayWidth:=LENGTH(dbgrid1.DataSource.DataSet.Fields[i].AsString);
         //DBGrid1.Fields[i].DisplayWidth:=12;
      end;
      dbedit1.dataField:=dbgrid1.Columns[0].FieldName;
      dbedit3.dataField:=dbgrid1.Columns[2].FieldName;
      dbedit4.dataField:=dbgrid1.Columns[4].FieldName;
      dbedit5.dataField:=dbgrid1.Columns[5].FieldName;
  end;
end;

procedure Tstoreout.cleartab2();
begin
label16.Caption:='[双击导入]';
label13.Caption:='';
label18.Caption:='[双击导入]';
label17.Caption:='';
panel2.Visible:=false;
//stringgrid1.Destroy;
stringgrid1.RowCount:=1;
stringgrid1.ColCount:=7;
label20.Caption:='0';
end;

end.
