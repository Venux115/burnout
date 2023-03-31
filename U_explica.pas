unit U_explica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,u_teste01;

type
  Tfrm_exp = class(TForm)
    Image1: TImage;
    btn_next: TButton;
    procedure btn_nextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_exp: Tfrm_exp;

implementation

{$R *.dfm}





procedure Tfrm_exp.btn_nextClick(Sender: TObject);
begin
application.CreateForm(Tfrm_teste01,frm_teste01);
frm_exp.Hide;
frm_teste01.showmodal;

end;

end.
