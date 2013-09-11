unit F_add_in_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, Menus, DB, ADODB, ExtCtrls,
  DBCtrls, Mask;

type
  Tadd_in_item = class(TForm)
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label10: TLabel;
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
    Button1: TButton;
    Button2: TButton;
    ADOCommand1: TADOCommand;
    procedure Label13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label10DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_in_item: Tadd_in_item;

implementation

uses F_product,F_login,F_var,F_storein,F_storage;

{$R *.dfm}

procedure Tadd_in_item.Button1Click(Sender: TObject);
var
i:integer;
p,t,tt:double;
begin
if panel1.Visible=false then
begin
  showmessage('请先导入商品信息');
  exit;
end;
if label10.Caption='[双击导入]' then
begin
  showmessage('请导入仓库编号');
  exit;
end;
if edit5.Text='' then
begin
  showmessage('请先填好进价');
  exit;
end;
if TryStrToFloat(edit5.Text,p)=false then
begin
  showmessage('请保证进价合法');
  exit;
end;
if  edit6.Text='' then
begin
  showmessage('请先填好进货量');
  exit;
end;
if TryStrToFloat(edit6.Text,t)=false then
begin
  showmessage('请保证进货量合法');
  exit;
end;

try

storein.stringgrid1.Rowcount:=storein.stringgrid1.Rowcount+1;
i:= storein.stringgrid1.Rowcount-1 ;

adocommand1.CommandText:='insert_storein_item '+quotedstr(storein.dbedit2.Text)+','+quotedstr(inttostr(i))+','
                            +quotedstr(label9.Caption)+','+quotedstr(label8.Caption)+','
                            +quotedstr(label10.Caption)+','+quotedstr(edit5.Text)+','+quotedstr(edit6.Text);
adocommand1.CommandType:=cmdtext;
adocommand1.Execute;


storein.stringgrid1.cells[0,i]:=inttostr(i);
storein.stringgrid1.cells[1,i]:=label9.Caption;
storein.stringgrid1.cells[2,i]:=label12.Caption;
storein.stringgrid1.cells[3,i]:=label8.Caption;
storein.stringgrid1.cells[4,i]:=label10.Caption;
storein.stringgrid1.cells[5,i]:=label11.Caption;
storein.stringgrid1.cells[6,i]:=edit5.Text;
storein.stringgrid1.cells[7,i]:=edit6.Text;

TryStrToFloat(storein.label20.Caption,tt);
storein.label20.Caption:=floattostr(p*t+tt);

//showmessage('导入成功');
add_in_item.close;
except
 storein.stringgrid1.Rowcount:=i;
end;

end;

procedure Tadd_in_item.Button2Click(Sender: TObject);
begin
  add_in_item.Close;
end;

procedure Tadd_in_item.FormShow(Sender: TObject);
begin
  panel1.Visible:=false;
  edit5.Text:='';
  edit6.Text:='';
  label10.Caption:='[双击导入]';
end;

procedure Tadd_in_item.Label10DblClick(Sender: TObject);
begin
  storage.show;
end;

procedure Tadd_in_item.Label13Click(Sender: TObject);
begin
  kind_pro:='in_pro';
  product.Show;
end;

end.
