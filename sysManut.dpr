program sysManut;

uses
  Vcl.Forms,
  menu in 'menu.pas' {F_menu},
  U_Login in 'U_Login.pas' {F_login},
  U_banco in 'U_banco.pas' {DataModule1: TDataModule},
  U_Padrao_Cadastro in 'U_Padrao_Cadastro.pas' {F_padrao_cadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_login, F_login);
  Application.CreateForm(TF_login, F_login);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TF_padrao_cadastro, F_padrao_cadastro);
  Application.Run;
end.
