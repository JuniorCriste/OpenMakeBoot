program OMB;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, OMB_unit
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Open Make Boot';
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TombS, ombS);
  Application.Run;
end.

