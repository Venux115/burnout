unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pontuacao:integer;

implementation

{$R *.dfm}

uses
u_Splash,u_teste01,u_teste02,u_teste03;

procedure TForm1.Button1Click(Sender: TObject);
begin
  pontuacao:= (frm_teste01.provisorio) + (frm_teste02.provisorio2) + (frm_teste03.provisorio3);
  showmessage(inttostr(frm_teste01.provisorio)+inttostr(frm_teste02.provisorio2)+inttostr(frm_teste03.provisorio3)+inttostr(pontuacao));
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
splash.close;
end;

end.
