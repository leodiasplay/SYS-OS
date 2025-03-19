unit U_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.Buttons, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_login = class(TForm)
    Panel2: TPanel;
    F_login: TImage;
    bt_login: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    ed_usuario: TEdit;
    ed_senha: TEdit;
    lb_avisos: TLabel;
    sql_login: TFDQuery;
    procedure bt_loginClick(Sender: TObject);
    procedure ed_senhaChange(Sender: TObject);
    procedure ed_usuarioChange(Sender: TObject);
    procedure ed_senhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_login: TF_login;

implementation

{$R *.dfm}

uses menu, U_banco;

procedure TF_login.ed_senhaChange(Sender: TObject);
begin

 lb_avisos.Caption := '';

 ed_senha.Text := AnsiUpperCase(ed_senha.Text);
 ed_senha.SelStart := Length(ed_senha.Text); // Mantém o cursor no final

end;

procedure TF_login.ed_senhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then  // Se pressionar Enter
  begin
    bt_login.Click; // Simula um clique no botão
    Key := 0;      // Impede o som de "beep" ao pressionar Enter
  end;
end;

procedure TF_login.ed_usuarioChange(Sender: TObject);
begin

  ed_usuario.Text := AnsiUpperCase(ed_usuario.Text);
  ed_usuario.SelStart := Length(ed_usuario.Text); // Mantém o cursor no final

end;

procedure TF_login.bt_loginClick(Sender: TObject);
begin


  if ed_usuario.Text = '' then
  begin
    lb_avisos.Caption := 'Digite um usuario';
    ed_usuario.SetFocus;
    exit
  end;

  if ed_senha.Text = '' then
   begin
     lb_avisos.Caption := 'Senha não informada!!';
     ed_senha.SetFocus;
     exit
   end;

   sql_login.Close;
   sql_login.ParamByName('COD_USUARIO').AsString :=  ed_usuario.Text;
   sql_login.ParamByName('SENHA').AsString       :=  ed_senha.Text;
   sql_login.Open;

   if not sql_login.IsEmpty then
   begin
    if F_menu = nil then
      F_menu := TF_menu.Create(nil);

      F_menu.gs_usuario_logado :=  sql_login.FieldByName('COD_USUARIO').AsString;

      F_menu.Show;
   end
    else
     begin
       ShowMessage('Usuario ou senha incorreto. Verifique!');
       lb_avisos.Visible := True;
       ed_senha.Clear;
       ed_senha.SetFocus;
     end;









end;

end.
