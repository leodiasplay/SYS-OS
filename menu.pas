unit menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons, Vcl.StdCtrls;

type
  TF_menu = class(TForm)
    Panel1: TPanel;
    nav_bar: TTreeView;
    Image1: TImage;
    Panel2: TPanel;
    lb_usr_logado: TLabel;
    procedure nav_barClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    gs_usuario_logado : string;
  end;

var
  F_menu: TF_menu;


implementation

{$R *.dfm}

uses U_banco, U_Login, U_Padrao_Cadastro;

procedure TF_menu.FormShow(Sender: TObject);
begin
  lb_usr_logado.Caption := 'User:  '+ gs_usuario_logado;
end;

procedure TF_menu.nav_barClick(Sender: TObject);
begin

 if nav_bar.Selected.Text = 'Cadastro de item' then
  begin
      F_padrao_cadastro.ShowModal;
  end;

end;

end.
{
}
