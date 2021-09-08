program Project1;

uses
  Forms,
  MenaraHanoi in 'MenaraHanoi.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
