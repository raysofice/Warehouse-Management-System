unit F_add_product;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls;

type
  Tadd_product = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ADOCommand1: TADOCommand;
    ComboBox1: TComboBox;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  add_product: Tadd_product;

implementation

uses F_main,F_login,F_storein,F_storeout,F_var,F_product;

{$R *.dfm}

var
  i:double;

procedure Tadd_product.Button1Click(Sender: TObject);
var
  p,l,h:double;
begin
if edit1.Text='' then
begin
showmessage('请填写商品名称');
exit;
end;
if edit2.Text='' then
begin
showmessage('请填写商品单位');
exit;
end;
if edit3.Text='' then
begin
showmessage('请填写商品数量下限');
exit;
end;
if edit4.Text='' then
begin
showmessage('请填写商品数量上限');
exit;
end;
if edit5.Text='' then
begin
showmessage('请填写保质期');
exit;
end;
if TryStrToFloat(edit3.Text,l)=false then
begin
showmessage('请保证数量上限合法');
exit;
end;
if TryStrToFloat(edit4.Text,h)=false then
begin
showmessage('请保证数量下限合法');
exit;
end;
if TryStrToFloat(edit5.Text,p)=false then
begin
showmessage('请保证保质期合法');
exit;
end;

  i:=strtofloat(edit5.Text);
  if(combobox1.ItemIndex=1)then
    i:=strtofloat(edit5.Text)*30;
  if(combobox1.ItemIndex=2)then
    i:=strtofloat(edit5.Text)*365;
  try
    {try
       adoquery1.Close;
       adoquery1.SQL.Text:='';
       adoquery1.Open;
       if adoquery1.RecordCount<>0 then
       begin
         showmessage('已存在完全相同商品信息无需添加');
         add_product.Close;
       end;
    except

    end;}
    adocommand1.CommandText:='insert_pro '+quotedstr(edit1.Text)+','+quotedstr(edit2.text)+','+
                          quotedstr('0')+','+quotedstr(edit3.Text)+','+
                          quotedstr(edit4.Text)+','+quotedstr(floattostr(i));
    adocommand1.CommandType:=cmdtext;
    adocommand1.Execute;
  except

  end;
  if fpro='main' then
  begin
    add_product.Close;
    exit;
  end;
  product.edit3.Text:='';
  product.edit4.Text:='';
  try
    product.adoquery1.close;
    product.adoquery1.SQL.Text:='select_pro '+quotedstr(product.edit3.Text)+','+quotedstr(product.edit4.text);
    product.adoquery1.Open;
    product.adoquery1.Last;
  finally

  end;
  add_product.Close;
end;

procedure Tadd_product.Button2Click(Sender: TObject);
begin
  add_product.Close;
end;

procedure Tadd_product.FormShow(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
end;

end.
