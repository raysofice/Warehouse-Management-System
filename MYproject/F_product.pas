unit F_product;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB,
  DBCtrls,dateutils, Mask;

type
  Tproduct = class(TForm)
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel1: TPanel;
    DateTimePicker3: TDateTimePicker;
    label8: TLabel;
    Button5: TButton;
    Button6: TButton;
    Label9: TLabel;
    Edit1: TEdit;
    ADOCommand1: TADOCommand;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    ADOQuery3: TADOQuery;
    DBEdit6: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  product: Tproduct;

implementation

uses F_var,F_login,F_storein,F_storeout,F_add_product,F_add_in_item,F_add_out_item;

{$R *.dfm}

procedure Tproduct.Button1Click(Sender: TObject);
begin
  fpro:='product';
  add_product.show;
end;

procedure Tproduct.Button2Click(Sender: TObject);
begin
  try
      adoquery1.Close;
      adoquery1.SQL.Text:='select_pro '+quotedstr(edit3.Text)+','+quotedstr(edit4.text);
      adoquery1.Open;
  finally

   end;
   dbedit1.DataField:=adoquery1.Fields[0].FieldName;
   dbedit4.DataField:=adoquery1.Fields[1].FieldName;
   dbedit5.DataField:=adoquery2.Fields[2].FieldName;
end;

procedure Tproduct.Button3Click(Sender: TObject);
begin
  if(kind_pro='out_pro') then
  begin
    add_out_item.Panel1.Visible:=true;
    add_out_item.label9.caption:=dbedit1.Text;
    add_out_item.label12.caption:=dbedit4.Text;
    add_out_item.label8.caption:=dbedit3.Text;
    add_out_item.label11.caption:=dbedit5.Text;
    add_out_item.label6.caption:=dbedit6.Text;
  end;
  if(kind_pro='in_pro') then
  begin
    add_in_item.Panel1.Visible:=true;
    add_in_item.label9.caption:=dbedit1.Text;
    add_in_item.label12.caption:=dbedit4.Text;
    add_in_item.label8.caption:=dbedit3.Text;
    add_in_item.label11.caption:=dbedit5.Text;
  end;
  product.close;
end;


procedure Tproduct.Button4Click(Sender: TObject);
begin
  panel1.Visible:=true;
end;

procedure Tproduct.Button5Click(Sender: TObject);
begin
  if(edit1.Text='') then
  begin
    showmessage('先确定商品编码，若没有请先插入商品信息');
    exit;
  end;
  try
    adoquery3.close;
    adoquery3.SQL.Text:='select_prostate;4 '+quotedstr(edit1.Text)+','
                      +quotedstr(datetostr(datetimepicker3.Date));
    adoquery3.Open;
    if adoquery3.RecordCount<>0 then
    begin
      showmessage('该商品明细已存在');
      panel1.Visible:=false;
      exit;
    end;
    adocommand1.CommandText:='insert_prostate '+quotedstr(edit1.Text)+','
                      +quotedstr(datetostr(datetimepicker3.Date))+','
                         +quotedstr('0');
    adocommand1.CommandType:=cmdtext;
    adocommand1.Execute;
  except

  end;
  try
    adoquery2.Close;
    adoquery2.SQL.Text:='select_prostate;3 '+quotedstr(dbedit1.Text);
    adoquery2.Open;
    adoquery2.Last;
  finally

  end;
  panel1.Visible:=false;
end;

procedure Tproduct.Button6Click(Sender: TObject);
begin
    panel1.Visible:=false;
end;

procedure Tproduct.DateTimePicker1Change(Sender: TObject);
begin
  try
      adoquery2.close;
      adoquery2.SQL.Text:='select_prostate'+quotedstr(dbedit1.Text)+','+quotedstr(datetostr(datetimepicker1.Date))+','+quotedstr(datetostr(datetimepicker2.Date));
      adoquery2.Open;
      dbgrid2.Fields[2].DisplayWidth:=10;
   finally

    end;
    dbedit2.DataField:=adoquery2.Fields[0].FieldName;
    dbedit3.DataField:=adoquery2.Fields[1].FieldName;
    dbedit6.DataField:=adoquery2.Fields[2].FieldName;
  //dbgrid3.Columns[0].FieldName:=adoquery2.Fields[0].FieldName;
  //dbgrid3.Columns[1].FieldName:=adoquery2.Fields[1].FieldName;
 // dbedit2.DataField:=dbgrid3.Columns[0].FieldName;
 // dbedit3.DataField:=dbgrid3.Columns[1].FieldName;
end;

procedure Tproduct.DBEdit1Change(Sender: TObject);
begin
  DateTimePicker1.Date:=strtodate('2011-01-01');
  DateTimePicker2.Date:=strtodate('2020-12-30');
  try
    adoquery2.Close;
    adoquery2.SQL.Text:='select_prostate;3 '+quotedstr(dbedit1.Text);
    adoquery2.Open;
    dbgrid2.Fields[2].DisplayWidth:=10;
  finally

  end;
  //dbedit2.DataField:=dbgrid2.Columns[0].FieldName;
  //dbedit3.DataField:=dbgrid2.Columns[1].FieldName;
  dbedit2.DataField:=adoquery2.Fields[0].FieldName;
  dbedit3.DataField:=adoquery2.Fields[1].FieldName;
  dbedit6.DataField:=adoquery2.Fields[2].FieldName;
  edit1.Text:=dbedit1.Text;
end;

procedure Tproduct.FormShow(Sender: TObject);
begin
  edit3.Text:='';
  edit4.Text:='';
  DateTimePicker1.Date:=strtodate('2011-01-01');
  DateTimePicker2.Date:=strtodate('2020-12-30');
  panel1.Visible:=false;
  try
      Adoquery1.Close;
      Adoquery1.SQL.Text:='select_pro  '+quotedstr('')+','+quotedstr('');
      ADoquery1.Open;
      dbedit1.DataField:=adoquery1.Fields[0].FieldName;
      dbedit4.DataField:=adoquery1.Fields[1].FieldName;
      dbedit5.DataField:=adoquery1.Fields[2].FieldName;
    except
   end;
    panel1.Visible:=false;
end;

end.
