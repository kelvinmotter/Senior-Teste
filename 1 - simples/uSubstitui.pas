unit uSubstitui;

interface

uses
  uISubstitui;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
  i, iPosicao, ix: Integer;
  sAux, sRetorno: String;
begin
  ix := 1;

  for i := 1 to Length(aStr) do
  begin
    if aStr[i] = aVelho[ix] then
    begin
      sAux := sAux + aStr[i];
      if sAux = aVelho then
      begin
        sAux := '';
        sRetorno := sRetorno + aNovo;
        ix := 1;
      end
      else
        ix := ix + 1;
    end
    else
    begin
      ix := 1;
      if sAux <> '' then
        sRetorno := sRetorno + sAux + aStr[i]
      else
        sRetorno := sRetorno + aStr[i];

      sAux := '';
    end;
  end;

  Result := sRetorno;
end;
  
end.

