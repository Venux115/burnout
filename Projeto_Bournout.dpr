program Projeto_Bournout;

uses
  Vcl.Forms,
  U_Splash in 'U_Splash.pas' {Splash},
  u_teste01 in 'u_teste01.pas' {frm_teste01},
  u_teste02 in 'u_teste02.pas' {frm_teste02},
  u_teste03 in 'u_teste03.pas' {frm_teste03};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSplash, Splash);
  Application.CreateForm(TFrm_teste01, frm_teste01);
  Application.CreateForm(Tfrm_teste01, frm_teste01);
  Application.CreateForm(Tfrm_teste02, frm_teste02);
  Application.CreateForm(Tfrm_teste03, frm_teste03);
  Application.Run;
end.
