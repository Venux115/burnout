unit u_teste03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
    procedure nextClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_teste03: Tfrm_teste03;
  provisorio: integer;

implementation

{$R *.dfm}

uses
  u_Splash, u_dm, unit1;

procedure Tfrm_teste03.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  splash.close;
end;

procedure Tfrm_teste03.FormHide(Sender: TObject);
begin
  DM.pontuacao:= DM.pontuacao + provisorio;
end;

procedure Tfrm_teste03.nextClick(Sender: TObject);
begin

  provisorio := 0;

  case (cb1.ItemIndex) of
    0:
      begin
        provisorio := provisorio + 0;
      end;
    1:
      begin
        provisorio := provisorio + 1;
      end;
    2:
      begin
        provisorio := provisorio + 2;
      end;
    3:
      begin
        provisorio := provisorio + 3;
      end;
  end;

  case (cb2.ItemIndex) of
    0:
      begin
        provisorio := provisorio + 0;
      end;
    1:
      begin
        provisorio := provisorio + 1;
      end;
    2:
      begin
        provisorio := provisorio + 2;
      end;
    3:
      begin
        provisorio := provisorio + 3;
      end;
  end;

  case (cb3.ItemIndex) of
    0:
      begin
        provisorio := provisorio + 0;
      end;
    1:
      begin
        provisorio := provisorio + 1;
      end;
    2:
      begin
        provisorio := provisorio + 2;
      end;
    3:
      begin
        provisorio := provisorio + 3;
      end;
  end;

  case (cb4.ItemIndex) of
    0:
      begin
        provisorio := provisorio + 0;
      end;
    1:
      begin
        provisorio := provisorio + 1;
      end;
    2:
      begin
        provisorio := provisorio + 2;
      end;
    3:
      begin
        provisorio := provisorio + 3;
      end;
  end;

application.CreateForm(TForm1,Form1);
form1.ShowModal;
frm_teste03.hide;

end;

end.
