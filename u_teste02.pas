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
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_teste02: Tfrm_teste02;
  provisorio:integer;

implementation

{$R *.dfm}

uses
u_Splash, u_teste03, u_dm;

procedure Tfrm_teste02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
splash.close;
end;

procedure Tfrm_teste02.FormHide(Sender: TObject);
begin
DM.pontuacao:= DM.pontuacao + provisorio;
end;

procedure Tfrm_teste02.nextClick(Sender: TObject);
begin
  application.CreateForm(Tfrm_teste03,frm_teste03);
  frm_teste02.Hide;
  frm_teste03.ShowModal;

  provisorio:=0;

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

  DM.pontuacao := DM.pontuacao + provisorio;

  end;

end.
