unit u_dm;

interface

uses
  System.SysUtils, System.Classes;

type
  TDM = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    pontuacao:integer;
  end;

var
  DM: TDM;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
