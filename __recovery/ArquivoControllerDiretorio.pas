unit ArquivoControllerDiretorio;

interface

uses
  ArquivoControllerInterfaces, ArquivoModelInterfaces;

type
  TControllerDiretorio = class(TInterfacedObject, iControllerDiretorio)
    private
    public
      function Diretorio : iDiretorio;
      Constructor Create;
      Destructor Destroy; override;
      class function New : iControllerDiretorio;
  end;

implementation

uses
  ArquivoModelDiretorio;

{ TControllerDiretorio }

constructor TControllerDiretorio.Create;
begin

end;

destructor TControllerDiretorio.Destroy;
begin

  inherited;
end;

function TControllerDiretorio.Diretorio: iDiretorio;
begin
  Result := TModelDiretorio.New;
end;

class function TControllerDiretorio.New: iControllerDiretorio;
begin
  Result := Self.Create;
end;

end.
