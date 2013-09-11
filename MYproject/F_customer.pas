unit F_customer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Mask, DBCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, DB,
  ADODB;

type
  Tcustomer = class(TForm)
    Label1: TLabel;
    label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Button2: TButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Button4: TButton;
    ADOQuery2: TADOQuery;
    procedure DBEditChange();
    procedure DBEdit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  customer: Tcustomer;

implementation

uses F_var,F_storein,F_login,F_add_customer,F_storeout;

{$R *.dfm}
var
  i:integer;

procedure Tcustomer.Button1Click(Sender: TObject);
begin
  try
    adoquery1.close;
    adoquery1.SQL.Text:='select_cus;2 '+quotedstr(edit1.Text)+','+quotedstr(edit2.Text)+','+quotedstr(typ);
    adoquery1.Open;
  finally

  end;
  if(DBGrid1.Columns.Count <> 0) then
  begin
    for i:=0 to DBGrid1.Columns.Count-1 do
      begin
         DBGrid1.Fields[i].DisplayWidth:=LENGTH(dbgrid1.DataSource.DataSet.Fields[i].AsString);
         //DBGrid1.Fields[i].DisplayWidth:=12;
      end;
    DBGrid1.Fields[4].DisplayWidth:=20;
    DBGrid1.Fields[5].DisplayWidth:=20;
    dbedit1.dataField:=dbgrid1.Columns[0].FieldName;
    dbedit2.dataField:=dbgrid1.Columns[1].FieldName;
    dbedit3.dataField:=dbgrid1.Columns[2].FieldName;
    dbedit4.dataField:=dbgrid1.Columns[3].FieldName;
    dbedit5.dataField:=dbgrid1.Columns[4].FieldName;
    dbedit6.dataField:=dbgrid1.Columns[5].FieldName;

  end;
end;

procedure Tcustomer.DBEditChange();
begin
  edit3.Text:=dbedit1.Text;
  edit4.Text:=dbedit2.Text;
  edit5.Text:=dbedit3.Text;
  edit6.Text:=dbedit4.Text;
  edit7.Text:=dbedit5.Text;
  edit8.Text:=dbedit6.Text;
end;

procedure Tcustomer.FormShow(Sender: TObject);
begin
  edit1.Text:='';
  edit2.Text:='';
  edit3.Text:='';
  edit4.Text:='';
  edit5.Text:='';
  edit6.Text:='';
  edit7.Text:='';
  edit8.Text:='';
   try
    adoquery1.close;
    adoquery1.SQL.Text:='select_cus;2 '+quotedstr(edit1.Text)+','+quotedstr(edit2.Text)+','+quotedstr(typ);
    adoquery1.Open;
  finally

  end;
  if(DBGrid1.Columns.Count <> 0) then
  begin
    for i:=0 to DBGrid1.Columns.Count-1 do
      begin
         DBGrid1.Fields[i].DisplayWidth:=LENGTH(dbgrid1.DataSource.DataSet.Fields[i].AsString);
         //DBGrid1.Fields[i].DisplayWidth:=12;
      end;
    DBGrid1.Fields[4].DisplayWidth:=20;
    DBGrid1.Fields[5].DisplayWidth:=20;
    dbedit1.dataField:=dbgrid1.Columns[0].FieldName;
    dbedit2.dataField:=dbgrid1.Columns[1].FieldName;
    dbedit3.dataField:=dbgrid1.Columns[2].FieldName;
    dbedit4.dataField:=dbgrid1.Columns[3].FieldName;
    dbedit5.dataField:=dbgrid1.Columns[4].FieldName;
    dbedit6.dataField:=dbgrid1.Columns[5].FieldName;
  end;
end;

procedure Tcustomer.Button2Click(Sender: TObject);
begin
  if(kind_cus='in_insert_cus') then
  begin
    storein.label16.Caption:=edit3.Text;
    storein.label13.Caption:=edit4.Text;
  end;
  if(kind_cus='in_select_cus') then
  begin
    storein.edit2.text:=edit3.Text;
  end;
  if(kind_cus='out_insert_cus') then
  begin
    storeout.label16.Caption:=edit3.Text;
    storeout.label13.Caption:=edit4.Text;
  end;
  if(kind_cus='out_select_cus') then
  begin
    storeout.edit2.text:=edit3.Text;
  end;
  customer.Close;
end;

procedure Tcustomer.Button3Click(Sender: TObject);
begin
  edit3.Text:='';
  edit4.Text:='';
  edit5.Text:='';
  edit6.Text:='';
  edit7.Text:='';
  edit8.Text:='';
end;

procedure Tcustomer.Button4Click(Sender: TObject);
begin
  fcus:='customer';
   add_customer.Show;

end;

procedure Tcustomer.DBEdit1Change(Sender: TObject);
begin
   DBEditChange();
end;

procedure Tcustomer.DBEdit2Change(Sender: TObject);
begin
   DBEditChange();
end;

procedure Tcustomer.DBEdit3Change(Sender: TObject);
begin
   DBEditChange();
end;

procedure Tcustomer.DBEdit4Change(Sender: TObject);
begin
   DBEditChange();
end;

procedure Tcustomer.DBEdit5Change(Sender: TObject);
begin
    DBEditChange();
end;

procedure Tcustomer.DBEdit6Change(Sender: TObject);
begin
    DBEditChange();
end;

end.
