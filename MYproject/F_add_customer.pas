unit F_add_customer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls;

type
  Tadd_customer = class(TForm)
    Button4: TButton;
    Edit8: TEdit;
    Edit7: TEdit;
    Edit6: TEdit;
    Edit5: TEdit;
    Edit4: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    ADOCommand1: TADOCommand;
    Button1: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_customer: Tadd_customer;
  i:integer;

implementation

uses F_var,F_customer,F_login;

{$R *.dfm}

procedure Tadd_customer.Button1Click(Sender: TObject);
begin
  add_customer.Close;
end;

procedure Tadd_customer.Button4Click(Sender: TObject);
begin
  if edit4.Text='' then
  begin
    showmessage('请填写客户名称');
    exit;
  end;
  if edit5.Text='' then
  begin
    showmessage('请填写联系人');
    exit;
  end;
   try
    adocommand1.CommandText:='insert_cus '+quotedstr(edit4.Text)+','+quotedstr(typ)+','+
                          quotedstr(edit5.Text)+','+quotedstr(edit6.Text)+','+
                          quotedstr(edit7.Text)+','+quotedstr(edit8.Text);
    adocommand1.CommandType:=cmdtext;
    adocommand1.Execute;
  except

  end;
  if fcus='fmain' then
  begin
    add_customer.Close;
    exit;
  end;
  customer.edit1.Text:='';
  customer.edit2.Text:='';
  try
    customer.adoquery1.close;
    customer.adoquery1.SQL.Text:='select_cus;2 '+quotedstr('')+','+quotedstr('')+','+quotedstr(typ);
    customer.adoquery1.Open;
    if(customer.DBGrid1.Columns.Count <> 0) then
    begin
    for i:=0 to customer.DBGrid1.Columns.Count-1 do
      begin
         customer.DBGrid1.Fields[i].DisplayWidth:=LENGTH(customer.dbgrid1.DataSource.DataSet.Fields[i].AsString);
         //DBGrid1.Fields[i].DisplayWidth:=12;
      end;
    customer.DBGrid1.Fields[4].DisplayWidth:=20;
    customer.DBGrid1.Fields[5].DisplayWidth:=20;
    customer.adoquery1.Last;
    end;
  finally

  end;
  add_customer.Close;
end;

procedure Tadd_customer.FormShow(Sender: TObject);
begin
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit7.Text:='';
edit8.Text:='';
end;

end.
