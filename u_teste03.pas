unit u_teste03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_teste03 = class(TForm)
    cb1: TComboBox;
    cb2: TComboBox;
    cb3: TComboBox;
    cb4: TComboBox;
    Image1: TImage;
    Label1: TLabel;
    lbl_q9: TLabel;
    lbl_q10: TLabel;
    lbl_q11: TLabel;
    lbl_q12: TLabel;
    next: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_teste03: Tfrm_teste03;

implementation

{$R *.dfm}

uses
u_Splash;

procedure Tfrm_teste03.FormClose(Sender: TObject; var Action: TCloseAction);
begin
splash.close;
end;

end.
