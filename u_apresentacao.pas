unit u_apresentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_apresentacao = class(TForm)
    p: TImage;
    btn_continuar: TButton;
    txt_nome: TEdit;
    txt_idade: TEdit;
    procedure btn_continuarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    nome,idade:string;

  end;

var
  frm_apresentacao: Tfrm_apresentacao;

implementation

{$R *.dfm}

uses
u_bourn, u_Splash;

procedure Tfrm_apresentacao.btn_continuarClick(Sender: TObject);
begin
nome:=txt_nome.Text;
idade:=(txt_idade.text);
if (txt_nome.Text = '') or (txt_idade.Text = '') then
begin
  showmessage('Há campos nao preenchidos');
  end else
  begin


application.CreateForm(Tfrm_bour,frm_bour);
frm_apresentacao.hide;
frm_bour.ShowModal;
end;
end;

procedure Tfrm_apresentacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
splash.close;
end;

end.
