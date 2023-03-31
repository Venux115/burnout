unit u_bourn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls,u_explica;

type
  Tfrm_bour = class(TForm)
    Image1: TImage;
    btn_next: TButton;
    procedure btn_nextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_bour: Tfrm_bour;

implementation

{$R *.dfm}

uses
u_pontos;

procedure Tfrm_bour.btn_nextClick(Sender: TObject);
begin
application.CreateForm(Tfrm_pontos,frm_pontos);
frm_bour.Hide;
frm_pontos.showmodal;
end;

end.
