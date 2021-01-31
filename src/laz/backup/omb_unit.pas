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
    procedure adrIsoClick(Sender: TObject);
    procedure adrPdClick(Sender: TObject);
    procedure cancelClick(Sender: TObject);
    procedure donateClick(Sender: TObject);
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


  myshell := TProcessUTF8.Create(nil);
  myShell.Executable:= ('xterm');
  myShell.Parameters.Add('mkfs.vfat /dev/sdb1 ');
  myShell.Parameters.Add('&& dd if=bodhi.iso of=/dev/sdb1 status=progress && sync ');
  myShell.Parameters.Add('&& umount /dev/sdb1');
  myShell.Execute;

  {myShell.Parameters.Add('echo $LANG');
  myShell.Options:= myShell.Options + [poWaitOnExit, poUsePipes];


  lang.LoadFromStream(myShell.Output);
  lang.SaveToFile('lang.txt');       }
   
  myShell.Free;
  lang.Free;
end;

procedure TombS.cancelClick(Sender: TObject);
begin
  ombS.Close;
end;

procedure TombS.donateClick(Sender: TObject);
Var S : String;
begin
  GetDir (0,S);
  fnpd.Caption:= S;

end;

procedure TombS.adrIsoClick(Sender: TObject);
begin

end;

procedure TombS.adrPdClick(Sender: TObject);
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

