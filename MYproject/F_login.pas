unit F_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, jpeg, Menus;

type
  Tlogin = class(TForm)
    ADOConnection1: TADOConnection;
    Label1: TLabel;
    Label2: TLabel;
    name: TEdit;
    pd: TEdit;
    button2: TButton;
    ADOQuery1: TADOQuery;
    Image1: TImage;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    procedure button2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  login: Tlogin;

implementation

uses F_question, F_main, F_var;

{$R *.dfm}


procedure Tlogin.button2Click(Sender: TObject);

var
  pass : string;

begin
  ADOQuery1.Close;
  us:= name.Text;
  pass:=pd.Text;
  if (us='') or (pass ='' )then
  begin
    MessageBox(0,'�������û�������Ϊ�գ�','����',MB_OK);
  end
  else
  begin
    ADoquery1.SQL.Text:='select_pd '+quotedstr(us);
    ADOquery1.Open;
    if  pd.Text <> ADOQuery1.Fields[0].AsString then
    begin
      MessageBox(0,'������û�������','����',MB_OK);
    end
      else
      begin
      admin:=ADOQuery1.Fields[1].AsBoolean;
      login.hide;
      main.show;
      isclose:=true;
      end;
  end;
end;

procedure Tlogin.FormShow(Sender: TObject);
begin
  isclose:=false;
  num:=0;
end;

procedure Tlogin.Label3Click(Sender: TObject);
begin
   login.hide;
   isclose:=true;
   question.show;
end;

end.
