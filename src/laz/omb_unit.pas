unit OMB_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons;

type

  { TombS }

  TombS = class(TForm)
    back: TImage;
    fnIso: TImage;
    fnPd: TImage;
    adrPd: TImage;
    adrIso: TImage;
    cancel: TImage;
    donate: TImage;
    ok: TImage;
    logo: TImage;
  private

  public

  end;

var
  ombS: TombS;

implementation

{$R *.lfm}

end.

