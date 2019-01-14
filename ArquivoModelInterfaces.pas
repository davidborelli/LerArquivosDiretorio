unit ArquivoModelInterfaces;

interface

type
  TEvDisplay = procedure(Value: String) of object;

  iDiretorio = interface
  ['{E2CC69F3-DAEF-4778-8101-1AF80D08A8E0}']
    function ArquivosDoDiretorio(Diretorio: String; Subpastas: Boolean = False) : iDiretorio;
    function BuscaNomeContenha(Busca: String) : iDiretorio;
    function BuscarArquivoNomeExato(Busca: String) : iDiretorio;
    function MostrarEm(Value: TEvDisplay): iDiretorio;
  end;

  iArquivo = interface
  ['{D7FC0DC7-D5EB-4447-B0B8-E94BC9D6BB86}']
    function Nome : iArquivo;
    function Caminho : iArquivo;
    function SomenteLeitura : iArquivo;
    function Oculto : iArquivo;
    function ArquivoSistema : iArquivo;
    function Diretorio : iArquivo;
  end;

implementation

end.
 