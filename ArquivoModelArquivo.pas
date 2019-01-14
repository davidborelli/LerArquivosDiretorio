unit ArquivoModelArquivo;

interface

uses
  ArquivoModelInterfaces;

type
  TModelArquivo = class(TInterfacedObject, iArquivo)
  private
    FNome : String;
    FCaminho : String;
    FSomenteLeitura: Boolean;
    FOculto : Boolean;
    FArquivoSistema : Boolean;
    FDiretorio: Boolean;

    function Nome : iArquivo;
    function Caminho : iArquivo;
    function SomenteLeitura : iArquivo;
    function Oculto : iArquivo;
    function ArquivoSistema : iArquivo;
    function Diretorio : iArquivo;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iArquivo;
  end;

implementation

{ TModelArquivo }

function TModelArquivo.ArquivoSistema: iArquivo;
begin
  Result := Self;
end;

function TModelArquivo.Caminho: iArquivo;
begin

end;

constructor TModelArquivo.Create;
begin

end;

destructor TModelArquivo.Destroy;
begin
  inherited;

end;

function TModelArquivo.Diretorio: iArquivo;
begin

end;

class function TModelArquivo.New: iArquivo;
begin

end;

function TModelArquivo.Nome: iArquivo;
begin

end;

function TModelArquivo.Oculto: iArquivo;
begin

end;

function TModelArquivo.SomenteLeitura: iArquivo;
begin

end;

end.
 