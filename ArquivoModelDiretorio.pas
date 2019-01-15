unit ArquivoModelDiretorio;

interface

uses
  ArquivoModelInterfaces, SysUtils;

type
  TModelDiretorio = class(TInterfacedObject, iDiretorio)
  private
    FArquivosDoDiretorio: array of String;
    FArquivoExato: TSearchRec;
    FArquivosEncontrados: TArrayString;
    FDiretorio: String;
    FSubPastas: Boolean;
    FDisplay: TEvDisplay;

    function DiretorioVazio: Boolean;
    function GetArquivosEncontrados : TArrayString;
    function ArquivosDoDiretorio(Diretorio: String; Subpastas: Boolean = False) : iDiretorio;
    function BuscaNomeContenha(Busca: String) : iDiretorio;
    function BuscarArquivoNomeExato(Busca: String) : iDiretorio;
    function TemAtributo(Attr, Val: Integer) : Boolean;
    function MostrarEm(Value: TEvDisplay): iDiretorio;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iDiretorio;
  end;

implementation

uses
  Vcl.Dialogs;

{ TModelDiretorio }

function TModelDiretorio.ArquivosDoDiretorio(Diretorio: String;
  Subpastas: Boolean): iDiretorio;
var
  F: TSearchRec;
  Ret, Ponteiro: Integer;
  TempNome: String;
begin
  Result := Self;
  FDiretorio := Diretorio;
  FSubPastas := Subpastas;
  Ret := FindFirst(FDiretorio+'\*.*', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if TemAtributo(F.Attr, faDirectory) then
      begin
      if (F.Name <> '.') And (F.Name <> '..') then
        if FSubpastas = True then
        begin
          TempNome := FDiretorio+'\' + F.Name;
          ArquivosDoDiretorio(TempNome, True);
        end;
      end
      else
      begin
        FDisplay({FDiretorio+'\'+}F.Name);
        SetLength(FArquivosDoDiretorio, Length(FArquivosDoDiretorio)+1);
        FArquivosDoDiretorio[Length(FArquivosDoDiretorio)-1] := {FDiretorio+'\'+}F.Name;
      end;
      Ret := FindNext(F);
    end;
  finally
    begin
      FindClose(F);
    end;
  end;
end;

function TModelDiretorio.BuscaNomeContenha(Busca: String): iDiretorio;
var
  Ponteiro, i: Integer;
begin
  Result := Self;
  i := 0;

  for Ponteiro := 0 to Length(FArquivosDoDiretorio)-1 do
  begin
    if Pos(Busca, FArquivosDoDiretorio[Ponteiro]) = 1 then
    begin
      SetLength(FArquivosEncontrados, Length(FArquivosEncontrados)+1);
      FArquivosEncontrados[i] := FArquivosDoDiretorio[Ponteiro];
      Inc(i);
    end;
  end;
end;

function TModelDiretorio.BuscarArquivoNomeExato(Busca: String): iDiretorio;
begin

end;

constructor TModelDiretorio.Create;
begin

end;

destructor TModelDiretorio.Destroy;
begin
  inherited;
end;

function TModelDiretorio.GetArquivosEncontrados: TArrayString;
begin
  Result := FArquivosEncontrados;
end;

function TModelDiretorio.MostrarEm(Value: TEvDisplay): iDiretorio;
begin
  Result := Self;
  FDisplay := Value;
end;

class function TModelDiretorio.New: iDiretorio;
begin
  Result := Self.Create;
end;

function TModelDiretorio.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

function TModelDiretorio.DiretorioVazio: Boolean;
begin
  Result := FDiretorio = '';
end;

end.
