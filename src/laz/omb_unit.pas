unit OMB_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, UTF8Process, Process, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons;

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
    myShell: TProcessUTF8;
    select: TOpenDialog;
    procedure cancelClick(Sender: TObject);
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
var
  lang: TstringList;
begin
  lang := TStringList.create;
  myShell.CommandLine := 'idioma.sh';
  {myShell.Parameters.Add('echo $LANG');

  myShell.Options:= myShell.Options + [poWaitOnExit, poUsePipes];       }
  myShell.Execute;
  lang.LoadFromStream(myShell.Output);
  lang.SaveToFile('lang.txt');

  lang.Free;
  myShell.Free;
end;

procedure TombS.cancelClick(Sender: TObject);
begin
  ombS.Close;
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

