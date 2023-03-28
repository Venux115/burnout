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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_teste01: Tfrm_teste01;

implementation

{$R *.dfm}

end.
