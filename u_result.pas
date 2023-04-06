unit u_result;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_resultado = class(TForm)
    btn_close: TButton;
    btn_voltar: TButton;
    Image1: TImage;
    lbl_desc: TLabel;
    lbl_nome: TLabel;
    lbl_pont2: TLabel;
    lbl_pontos: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_resultado: Tfrm_resultado;
  pontuacao: integer;

implementation

{$R *.dfm}
uses
u_Splash,u_teste01,u_teste02,u_teste03,u_apresentacao;

procedure Tfrm_resultado.btn_closeClick(Sender: TObject);
begin
   splash.Close;
end;

procedure Tfrm_resultado.btn_voltarClick(Sender: TObject);
begin
pontuacao:=0;
application.CreateForm(Tfrm_teste01,frm_teste01);
frm_resultado.hide;
frm_teste01.Show;
end;

procedure Tfrm_resultado.FormActivate(Sender: TObject);

begin
  pontuacao:= (frm_teste01.provisorio) + (frm_teste02.provisorio2) + (frm_teste03.provisorio3);

  lbl_nome.caption:= (frm_apresentacao.nome + ' de ' + frm_apresentacao.idade+ ' anos');
  lbl_pontos.caption := inttostr(pontuacao);

  if (pontuacao <15) then
  begin
    lbl_desc.caption:= 'A sua saúde mental está, de uma forma geral, em equilibrio!';
    lbl_pont2.Caption:='Continue assim.';
  end else
  begin
    if (pontuacao < 27) then
    begin
      lbl_desc.caption:= 'Você está em uma posição de alta vunerabilidade, para o Bournout.';
      lbl_pont2.Caption:='Tente se cuidadar!';
    end else
    begin
       lbl_desc.caption:= 'É possivel que voce tenha desenvolvido algum grau de esgotamento  ';
       lbl_pont2.Caption:='profissional.Procure um especialista!';
    end;

  end;

end;

end.
