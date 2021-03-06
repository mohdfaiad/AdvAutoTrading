program AdvAutoTrading;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, memdslaz, runtimetypeinfocontrols, tachartlazaruspkg, printer4lazarus,
  Dashboard, SQLITEConnection, Position, u_dm_main, u_algorithm,
  u_finance_request, u_frm_History, u_frm_Debug, TAPrint, u_logger, u_frm_about,
  u_MarketPosition;

{$R *.res}

begin
  log_Logger :=TLogger.Create;
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(Tdm_Main, dm_Main);
  Application.CreateForm(Tfrm_Main, frm_Main);
  Application.CreateForm(Tfrm_Lansare, frm_Lansare);
  Application.Run;
end.

