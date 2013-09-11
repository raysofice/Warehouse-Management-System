unit F_staff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB, Mask;

type
  Tstaff = class(TForm)
    DBEdit4: TDBEdit;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button4: TButton;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Button2: TButton;
    Edit5: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    Edit2: TEdit;
    Label6: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    label1: TLabel;
    label2: TLabel;
    DBEdit5: TDBEdit;
    procedure DBEditChange();
    procedure Button1Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  staff: Tstaff;
  i:integer;

implementation

uses F_var,F_login,F_storein,F_add_staff,F_storeout;

{$R *.dfm}

procedure Tstaff.Button1Click(Sender: TObject);
begin
   try
    adoquery1.close;
    adoquery1.SQL.Text:='select_staff '+quotedstr(edit1.Text)+','+quotedstr(edit2.Text);
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
    DBGrid1.Fields[2].DisplayWidth:=20;
    dbedit1.dataField:=dbgrid1.Columns[0].FieldName;
    dbedit2.dataField:=dbgrid1.Columns[1].FieldName;
    dbedit3.dataField:=dbgrid1.Columns[2].FieldName;
    {dbedit4.dataField:=dbgrid1.Columns[3].FieldName;
    dbedit5.dataField:=dbgrid1.Columns[4].FieldName;
    dbedit6.dataField:=dbgrid1.Columns[5].FieldName;  }

  end;
end;

procedure Tstaff.Button2Click(Sender: TObject);
begin
  if(kind_staff='in_insert_staff') then
  begin
    storein.label18.Caption:=edit3.Text;
    storein.label17.Caption:=edit4.Text;
  end;
  if(kind_staff='in_select_staff') then
  begin
    storein.edit5.text:=edit3.Text;
  end;
  if(kind_staff='out_insert_staff') then
  begin
    storeout.label18.Caption:=edit3.Text;
    storeout.label17.Caption:=edit4.Text;
  end;
  if(kind_staff='out_select_staff') then
  begin
    storeout.edit5.text:=edit3.Text;
  end;
  staff.Close;
end;

procedure Tstaff.Button4Click(Sender: TObject);
begin
  fstaff:='staff';
  add_staff.show;
end;

procedure Tstaff.DBEdit1Change(Sender: TObject);
begin
   DBEditChange();
end;

procedure Tstaff.DBEdit2Change(Sender: TObject);
begin
  DBEditChange();
end;

procedure Tstaff.DBEdit3Change(Sender: TObject);
begin
  DBEditChange();
end;

procedure Tstaff.DBEdit4Change(Sender: TObject);
begin
  DBEditChange();
end;

procedure Tstaff.DBEdit5Change(Sender: TObject);
begin
  DBEditChange();
end;

procedure Tstaff.DBEditChange();
begin
  edit3.Text:=dbedit1.Text;
  edit4.Text:=dbedit2.Text;
  edit5.Text:=dbedit3.Text;
  {edit6.Text:=dbedit4.Text;
  edit7.Text:=dbedit5.Text;
  edit8.Text:=dbedit6.Text;}
end;

procedure Tstaff.FormShow(Sender: TObject);
begin
  edit1.Text:='';
  edit2.Text:='';
  edit3.Text:='';
  edit4.Text:='';
  edit5.Text:='';
  try
    adoquery1.close;
    adoquery1.SQL.Text:='select_staff '+quotedstr(edit1.Text)+','+quotedstr(edit2.Text);
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
    DBGrid1.Fields[2].DisplayWidth:=20;
    dbedit1.dataField:=dbgrid1.Columns[0].FieldName;
    dbedit2.dataField:=dbgrid1.Columns[1].FieldName;
    dbedit3.dataField:=dbgrid1.Columns[2].FieldName;
    {dbedit4.dataField:=dbgrid1.Columns[3].FieldName;
    dbedit5.dataField:=dbgrid1.Columns[4].FieldName;
    dbedit6.dataField:=dbgrid1.Columns[5].FieldName;  }

  end;
end;

end.
