unit F_add_staff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, DB;

type
  Tadd_staff = class(TForm)
    Edit4: TEdit;
    Edit5: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    ADOCommand1: TADOCommand;
    Button1: TButton;
    Button4: TButton;
    ADOQuery1: TADOQuery;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_staff: Tadd_staff;
  i:integer;

implementation

uses F_var,F_staff,F_login;

{$R *.dfm}

procedure Tadd_staff.Button1Click(Sender: TObject);
begin
  add_staff.Close;
end;

procedure Tadd_staff.Button4Click(Sender: TObject);
begin
  if(edit4.Text='')then
  begin
    showmessage('请添加员工名');
    exit;
  end;
  if(edit5.Text='')then
  begin
    showmessage('请添加电话');
    exit;
  end;
  try 
    adoquery1.Close;
    adoquery1.SQL.Text:='select_staff;2 '+quotedstr(edit4.Text)+','+quotedstr(edit5.Text);
    adoquery1.Open;
    if adoquery1.RecordCount<>0 then
    begin
      showmessage('已存在员工信息无需插入');
      staff.Close;
    end;
  except

  end;
  try
    adocommand1.CommandText:='insert_staff '+quotedstr(edit4.Text)+','+quotedstr(edit5.Text);
    adocommand1.CommandType:=cmdtext;
    adocommand1.Execute;
  except

  end;
  if fstaff='main' then
  begin
    add_staff.Close;
    exit;
  end;
  staff.edit1.Text:='';
  staff.edit2.Text:='';
  try
    staff.adoquery1.close;
    staff.adoquery1.SQL.Text:='select_staff '+quotedstr('')+','+quotedstr('');
    staff.adoquery1.Open;
     if(staff.DBGrid1.Columns.Count <> 0) then
  begin
    for i:=0 to staff.DBGrid1.Columns.Count-1 do
      begin
         staff.DBGrid1.Fields[i].DisplayWidth:=LENGTH(staff.dbgrid1.DataSource.DataSet.Fields[i].AsString);
         //DBGrid1.Fields[i].DisplayWidth:=12;
      end;
    staff.DBGrid1.Fields[2].DisplayWidth:=20;
    staff.ADOQuery1.Last;

  end;
  add_staff.Close;
  finally

  end;
end;

procedure Tadd_staff.FormShow(Sender: TObject);
begin
edit4.Text:='';
edit5.Text:='';
end;

end.
