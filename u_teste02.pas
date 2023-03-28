unit u_teste02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_teste02 = class(TForm)
    cb1: TComboBox;
    cb2: TComboBox;
    cb3: TComboBox;
    cb4: TComboBox;
    Image1: TImage;
    Label1: TLabel;
    lbl_q5: TLabel;
    lbl_q6: TLabel;
    lbl_q7: TLabel;
    lbl_q8: TLabel;
    next: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_teste02: Tfrm_teste02;

implementation

{$R *.dfm}

uses
u_Splash, u_teste03;

procedure Tfrm_teste02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
splash.close;
end;

procedure Tfrm_teste02.nextClick(Sender: TObject);
begin
  application.CreateForm(Tfrm_teste03,frm_teste03);
  frm_teste02.Hide;
  frm_teste03.ShowModal;
end;

end.
