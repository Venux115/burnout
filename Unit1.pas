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

implementation

{$R *.dfm}

uses
u_Splash,u_dm;

procedure TForm1.Button1Click(Sender: TObject);
begin

  showmessage(inttostr(DM.pontuacao));
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
splash.close;
end;

end.
