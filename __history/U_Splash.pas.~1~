unit U_Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.ComCtrls, U_teste01;

type
  TSplash = class(TForm)
    Image1: TImage;
    Pb_Splash: TProgressBar;
    Tm_splash: TTimer;
    procedure Tm_splashTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Splash: TSplash;

implementation

{$R *.dfm}

procedure TSplash.Tm_splashTimer(Sender: TObject);
begin
Pb_Splash.position  := Pb_splash.position + 25;
if Pb_Splash.position = 100 then
begin
application.Createform(Tform2,form2);
Tm_splash.enabled := false;
form2.Showmodal;
splash.Hide;
end;
end;




end.
