unit F_change;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, DB;

type
  Tchange = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    ADOCommand1: TADOCommand;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  change: Tchange;
  tc:boolean;

implementation

uses F_question,F_var, F_login;

{$R *.dfm}

procedure Tchange.Button1Click(Sender: TObject);
begin
  if (edit1.Text='') or (edit2.Text='') then
  begin
    MessageBox(0,'新密码与确认密码不能为空！','提示',MB_OK);
    tc:=true;
  end
  else
    if edit1.text <> edit2.Text then
    begin
       MessageBox(0,'两次输入不相符！','提示',MB_OK);
       tc:=true;
    end
    else
    begin
        ADOCommand1.CommandText:= 'up_pd '+quotedstr(edit1.Text)+','+quotedstr(us);
        Adocommand1.CommandType:=cmdtext;
        Adocommand1.Execute;
        tc:=false;
        change.close;
        login.show;
    end;

end;

procedure Tchange.Edit1Change(Sender: TObject);
begin
  edit2.Text:='';
end;

procedure Tchange.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (isclose)and(tc) then
    login.close;
end;

procedure Tchange.FormShow(Sender: TObject);
begin
  tc:=true;
end;

end.
