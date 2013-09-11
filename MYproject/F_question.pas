unit F_question;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls;

type
  Tquestion = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    ADOQuery2: TADOQuery;
    Button1: TButton;
    Label5: TLabel;
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
  question: Tquestion;
  an,uss:string;
  tc:boolean;


implementation

uses F_change,F_var,F_login;

{$R *.dfm}

procedure Tquestion.Button1Click(Sender: TObject);
begin
  if (an <>'') then
  begin
    if (an = edit2.Text) then
    begin
        change.show;
        edit1.text:='';
        label5.Caption:='';
        label2.Visible:=false;
        label3.Visible:=false;
        edit2.text:='';
        edit2.Visible:=false;
        label4.Visible:=false;
        tc:=false;
        question.Close;
    end
    else
    begin
      MessageBox(0,'答案不正确！','错误',MB_OK);
      tc:=true;
    end;
   end;

end;

procedure Tquestion.Edit1Change(Sender: TObject);
begin
  ADOQuery2.Close;
  uss:= Edit1.Text;
  an:='';
  if (uss <> '')then
  begin
    ADoquery2.SQL.Text:='select_qu '+quotedstr(uss);
    ADOquery2.Open;
    if  ADOQuery2.IsEmpty = True then
    begin
      label5.Caption:= '用户名不存在！';
    end
      else
        begin
          label2.Visible:=True;
          label3.Visible:=True;
          edit2.Visible:=True;
          label4.Visible:=True;
          label5.Caption :='';
          us:=edit1.text;
          label3.Caption := ADOquery2.Fields[0].Asstring;
          an := ADOquery2.Fields[1].Asstring;
        end;
    end;
end;

procedure Tquestion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (isclose)and(tc) then
    login.close;
end;

procedure Tquestion.FormShow(Sender: TObject);
begin
  tc:=true;
end;

end.


