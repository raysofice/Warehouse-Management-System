unit F_storage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DB, ADODB;

type
  Tstorage = class(TForm)
    label2: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Edit2: TEdit;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button4: TButton;
    label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  storage: Tstorage;

implementation

uses F_var,F_login,F_add_in_item,F_add_storage;

{$R *.dfm}

procedure Tstorage.Button1Click(Sender: TObject);
begin
  try
    adoquery1.close;
    adoquery1.SQL.Text:='select_storage '+quotedstr(edit1.Text)+','+quotedstr(edit2.Text);
    adoquery1.Open;
  finally

  end;
  if(DBGrid1.Columns.Count <> 0) then
  begin
    DBGrid1.Fields[0].DisplayWidth:=10;
    DBGrid1.Fields[1].DisplayWidth:=10;
    DBGrid1.Fields[2].DisplayWidth:=80;
    dbedit1.dataField:=dbgrid1.Columns[0].FieldName;
    dbedit2.dataField:=dbgrid1.Columns[1].FieldName;
    dbedit3.dataField:=dbgrid1.Columns[2].FieldName;
  end;
end;

procedure Tstorage.Button2Click(Sender: TObject);
begin
  add_in_item.label10.Caption:=dbedit1.Text;
  storage.Close;
end;

procedure Tstorage.Button4Click(Sender: TObject);
begin
  fstorage:='storage';
  add_storage.show;
end;

procedure Tstorage.DBEdit1Change(Sender: TObject);
begin
  edit3.Text:=dbedit1.Text;
  edit4.Text:=dbedit2.Text;
end;

procedure Tstorage.DBEdit2Change(Sender: TObject);
begin
  edit3.Text:=dbedit1.Text;
  edit4.Text:=dbedit2.Text;
end;

procedure Tstorage.FormShow(Sender: TObject);
begin
  edit1.Text:='';
  edit2.Text:='';
  edit3.Text:='';
  edit4.Text:='';
  try
    adoquery1.close;
    adoquery1.SQL.Text:='select_storage '+quotedstr(edit1.Text)+','+quotedstr(edit2.Text);
    adoquery1.Open;
  finally

  end;
  if(DBGrid1.Columns.Count <> 0) then
  begin
    DBGrid1.Fields[0].DisplayWidth:=10;
    DBGrid1.Fields[1].DisplayWidth:=10;
    DBGrid1.Fields[2].DisplayWidth:=80;
    dbedit1.dataField:=dbgrid1.Columns[0].FieldName;
    dbedit2.dataField:=dbgrid1.Columns[1].FieldName;
    dbedit3.dataField:=dbgrid1.Columns[2].FieldName;
  end;
end;

end.
