program manage;

uses
  Forms,
  F_login in 'F_login.pas' {login},
  F_main in 'F_main.pas' {main},
  F_question in 'F_question.pas' {question},
  F_change in 'F_change.pas' {change},
  F_var in 'F_var.pas',
  F_product in 'F_product.pas' {product},
  F_storein in 'F_storein.pas' {storein},
  F_customer in 'F_customer.pas' {customer},
  F_add_customer in 'F_add_customer.pas' {add_customer},
  F_staff in 'F_staff.pas' {staff},
  F_add_staff in 'F_add_staff.pas' {add_staff},
  F_storeout in 'F_storeout.pas' {storeout},
  F_add_product in 'F_add_product.pas' {add_product},
  F_add_in_item in 'F_add_in_item.pas' {add_in_item},
  F_storage in 'F_storage.pas' {storage},
  F_add_storage in 'F_add_storage.pas' {add_storage},
  F_add_out_item in 'F_add_out_item.pas' {add_out_item},
  F_warn in 'F_warn.pas' {warn},
  F_others in 'F_others.pas' {others};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tlogin, login);
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Tquestion, question);
  Application.CreateForm(Tchange, change);
  Application.CreateForm(Tproduct, product);
  Application.CreateForm(Tstorein, storein);
  Application.CreateForm(Tcustomer, customer);
  Application.CreateForm(Tadd_customer, add_customer);
  Application.CreateForm(Tstaff, staff);
  Application.CreateForm(Tadd_staff, add_staff);
  Application.CreateForm(Tstoreout, storeout);
  Application.CreateForm(Tadd_product, add_product);
  Application.CreateForm(Tadd_in_item, add_in_item);
  Application.CreateForm(Tstorage, storage);
  Application.CreateForm(Tadd_storage, add_storage);
  Application.CreateForm(Tadd_out_item, add_out_item);
  Application.CreateForm(Twarn, warn);
  Application.CreateForm(Tothers, others);
  Application.Run;
end.
