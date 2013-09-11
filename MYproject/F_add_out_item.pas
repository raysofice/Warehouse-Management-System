unit F_add_out_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ADODB, DB;

type
  Tadd_out_item = class(TForm)
    ADOCommand1: TADOCommand;
    Button2: TButton;
    Button1: TButton;
    Panel1: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Edit6: TEdit;
    Edit5: TEdit;
    Label4: TLabel;
    ADOQuery1: TADOQuery;
    Label6: TLabel;
    Label10: TLabel;
    procedure Label13Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_out_item: Tadd_out_item;

implementation

uses F_product,F_login,F_var,F_storeout;

{$R *.dfm}

procedure Tadd_out_item.Button1Click(Sender: TObject);
var
i:integer;
p,t,tt:double;
begin
if panel1.Visible=false then
begin
  showmessage('���ȵ�����Ʒ��Ϣ');
  exit;
end;
if edit5.Text='' then
begin
  showmessage('��������ۼ�');
  exit;
end;
if TryStrToFloat(edit5.Text,p)=false then
begin
  showmessage('�뱣֤�ۼۺϷ�');
  exit;
end;
if  edit6.Text='' then
begin
  showmessage('��������ۻ���');
  exit;
end;
if TryStrToFloat(edit6.Text,t)=false then
begin
  showmessage('�뱣֤�ۻ����Ϸ�');
  exit;
end;
if (t>strtofloat(label6.Caption))or (t<=0) then
begin
  showmessage('�뱣֤�ۻ����ںϷ���Χ��');
  exit;
end;


try
storeout.stringgrid1.Rowcount:=storeout.stringgrid1.Rowcount+1;
i:= storeout.stringgrid1.Rowcount-1 ;

adocommand1.CommandText:='insert_storeout_item '+quotedstr(storeout.dbedit2.Text)+','+quotedstr(inttostr(i))+','
                            +quotedstr(label9.Caption)+','+quotedstr(label8.Caption)+','
                            +quotedstr(edit5.Text)+','+quotedstr(edit6.Text);
adocommand1.CommandType:=cmdtext;
adocommand1.Execute;


storeout.stringgrid1.cells[0,i]:=inttostr(i);
storeout.stringgrid1.cells[1,i]:=label9.Caption;
storeout.stringgrid1.cells[2,i]:=label12.Caption;
storeout.stringgrid1.cells[3,i]:=label8.Caption;
storeout.stringgrid1.cells[4,i]:=label11.Caption;
storeout.stringgrid1.cells[5,i]:=edit5.Text;
storeout.stringgrid1.cells[6,i]:=edit6.Text;

TryStrToFloat(storeout.label20.Caption,tt);
storeout.label20.Caption:=floattostr(p*t+tt);

//showmessage('����ɹ�');
add_out_item.close;
except
 storeout.stringgrid1.Rowcount:=i;
end;
end;

procedure Tadd_out_item.Button2Click(Sender: TObject);
begin
  add_out_item.Close;
end;

procedure Tadd_out_item.FormShow(Sender: TObject);
begin
panel1.Visible:=false;
edit5.Text:='';
edit6.Text:='';
end;

procedure Tadd_out_item.Label13Click(Sender: TObject);
begin
  kind_pro:='out_pro';
  product.show;
end;

end.
