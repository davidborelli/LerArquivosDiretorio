program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ArquivoModelInterfaces in 'ArquivoModelInterfaces.pas',
  ArquivoModelArquivo in 'ArquivoModelArquivo.pas',
  ArquivoModelDiretorio in 'ArquivoModelDiretorio.pas',
  ArquivoControllerInterfaces in 'ArquivoControllerInterfaces.pas',
  ArquivoControllerDiretorio in 'ArquivoControllerDiretorio.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
