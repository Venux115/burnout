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
    provisorio2:integer;
  end;

var
  frm_teste02: Tfrm_teste02;


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
//DM.pontuacao:= DM.pontuacao + provisorio;
end;

procedure Tfrm_teste02.nextClick(Sender: TObject);
begin


  provisorio2:=0;

  case (cb1.ItemIndex) of
    0:
      begin
        provisorio2 := provisorio2 + 0;
      end;
    1:
      begin
        provisorio2 := provisorio2 + 1;
      end;
    2:
      begin
        provisorio2 := provisorio2 + 2;
      end;
    3:
      begin
        provisorio2 := provisorio2 + 3;
      end;
  end;

  case (cb2.ItemIndex) of
    0:
      begin
        provisorio2 := provisorio2 + 0;
      end;
    1:
      begin
        provisorio2 := provisorio2 + 1;
      end;
    2:
      begin
        provisorio2 := provisorio2 + 2;
      end;
    3:
      begin
        provisorio2 := provisorio2 + 3;
      end;
  end;

  case (cb3.ItemIndex) of
    0:
      begin
        provisorio2 := provisorio2 + 0;
      end;
    1:
      begin
        provisorio2 := provisorio2 + 1;
      end;
    2:
      begin
        provisorio2 := provisorio2 + 2;
      end;
    3:
      begin
        provisorio2 := provisorio2 + 3;
      end;
  end;

  case (cb4.ItemIndex) of
    0:
      begin
        provisorio2 := provisorio2 + 0;
      end;
    1:
      begin
        provisorio2 := provisorio2 + 1;
      end;
    2:
      begin
        provisorio2 := provisorio2 + 2;
      end;
    3:
      begin
        provisorio2 := provisorio2 + 3;
      end;
  end;

  if (cb1.ItemIndex = -1) or (cb2.ItemIndex = -1) or (cb3.ItemIndex = -1) or (cb4.ItemIndex  = -1) then
  begin
      showmessage('H� campos n�o preenchidos');
  end else
  begin
  application.CreateForm(Tfrm_teste03,frm_teste03);
  frm_teste02.visible:= FALSE;
  frm_teste03.ShowModal;
  end;
end;

end.
