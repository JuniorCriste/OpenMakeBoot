unit OMB_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, process;

type

  { TombS }

  TombS = class(TForm)
    back: TImage;
    Edit1: TEdit;
    fnIso: TImage;
    fnPd: TImage;
    adrPd: TImage;
    adrIso: TImage;
    cancel: TImage;
    donate: TImage;
    Memo1: TMemo;
    ok: TImage;
    logo: TImage;
    Process1: TProcess;
    select: TOpenDialog;
    procedure okClick(Sender: TObject);
  private

  public

  end;

var
  ombS: TombS;

implementation

{$R *.lfm}

{ TombS }

procedure TombS.okClick(Sender: TObject);
begin

end;

end.


procedure selectIso();
begin

end;

procedure selectPd();
begin

end;

procedure detectLanguage();
begin

end;

