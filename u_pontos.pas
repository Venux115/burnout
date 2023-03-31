unit u_pontos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_pontos = class(TForm)
    Image1: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pontos: Tfrm_pontos;

implementation

{$R *.dfm}

uses
U_explica;

procedure Tfrm_pontos.Button1Click(Sender: TObject);
begin
application.CreateForm(Tfrm_exp,frm_exp);
frm_pontos.Hide;
frm_exp.showmodal;
end;

end.
