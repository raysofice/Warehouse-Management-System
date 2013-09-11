unit F_add_storage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB;

type
  Tadd_storage = class(TForm)
    Label6: TLabel;
    ADOCommand1: TADOCommand;
    Button4: TButton;
    Button1: TButton;
    Edit5: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_storage: Tadd_storage;

implementation

uses F_var,F_login,F_storage;

{$R *.dfm}

procedure Tadd_storage.Button1Click(Sender: TObject);
begin
  add_storage.close;
end;

procedure Tadd_storage.Button4Click(Sender: TObject);
begin
  if edit4.Text='' then
  begin
    showmessage('«ÎÃÓ–¥≤÷ø‚√˚');
    exit;
  end;

  try
    adocommand1.CommandText:='insert_storage '+quotedstr(edit4.Text)+','+quotedstr(edit5.Text);
    adocommand1.CommandType:=cmdtext;
    adocommand1.Execute;
  except

  end;
  if fstorage='main' then
  begin
    add_storage.Close;
    exit;
  end;
  storage.edit1.Text:='';
  storage.edit2.Text:='';
  try
    storage.adoquery1.close;
    storage.adoquery1.SQL.Text:='select_storage '+quotedstr('')+','+quotedstr('');
    storage.adoquery1.Open;
    storage.DBGrid1.Fields[0].DisplayWidth:=20;
    storage.DBGrid1.Fields[1].DisplayWidth:=20;
    storage.DBGrid1.Fields[2].DisplayWidth:=80;
    storage.ADOQuery1.Last;
    add_storage.Close;
  finally

  end;
end;

procedure Tadd_storage.FormShow(Sender: TObject);
begin
edit4.Text:='';
edit5.Text:='';
end;

end.
