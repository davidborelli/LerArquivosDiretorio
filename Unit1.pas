unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ArquivoModelInterfaces;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtDiretorio: TEdit;
    chkSub: TCheckBox;
    Label2: TLabel;
    memLista: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FDiretorio: iDiretorio;
    procedure ExibirResultado(Value: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ArquivoControllerDiretorio;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  memLista.Lines.Clear;
  FDiretorio
    .MostrarEm(ExibirResultado)
    .ArquivosDoDiretorio(edtDiretorio.Text, chkSub.Checked);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDiretorio := TControllerDiretorio.New.Diretorio;
end;

procedure TForm1.ExibirResultado(Value: String);
begin
  memLista.Lines.Add(Value);
end;

end.
