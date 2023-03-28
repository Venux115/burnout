unit u_teste01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  Tfrm_teste01 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    cb1: TComboBox;
    cb2: TComboBox;
    Label3: TLabel;
    cb3: TComboBox;
    Label4: TLabel;
    cb4: TComboBox;
    Label5: TLabel;
    next: TButton;
    procedure nextClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_teste01: Tfrm_teste01;

implementation

{$R *.dfm}

uses
u_Splash,u_teste02;

procedure Tfrm_teste01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
splash.close;
end;

procedure Tfrm_teste01.nextClick(Sender: TObject);
begin
application.CreateForm(Tfrm_teste02,frm_teste02);
frm_teste01.hide;
frm_teste02.showmodal;


end;

end.
