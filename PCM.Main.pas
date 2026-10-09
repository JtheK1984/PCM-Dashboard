unit PCM.Main;

interface

uses
  {$Region Uses}
  cxBarEditItem,
  cxButtons,
  cxClasses,
  cxContainer,
  cxControls,
  cxCustomCanvas,
  cxCustomPivotGrid,
  cxDBPivotGrid,
  cxEdit,
  cxGeometry,
  cxGraphics,
  cxGridChartView,
  cxGroupBox,
  cxImageList,
  cxLabel,
  cxLocalization,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxPC,
  cxPivotGridChartConnection,
  cxSplitter,
  cxVariants,
  DateUtils,
  dxBar,
  dxBarBuiltInMenu,
  dxBarExtItems,
  dxChartControl,
  dxChartCore,
  dxChartData,
  dxChartDBData,
  dxChartLegend,
  dxChartMarkers,
  dxChartSimpleDiagram,
  dxChartXYDiagram,
  dxChartXYSeriesAreaView,
  dxChartXYSeriesBarView,
  dxChartXYSeriesLineView,
  dxCoreClasses,
  dxCoreGraphics,
  dxCustomData,
  dxLayoutContainer,
  dxLayoutControl,
  dxLayoutControlAdapters,
  dxLayoutLookAndFeels,
  dxNavBar,
  dxNavBarBase,
  dxNavBarCollns,
  dxNavBarStyles,
  dxUIAClasses,
  inifiles,
  registry,
  shellapi,
  Strutils,
  System.Classes,
  System.ImageList,
  System.SysUtils,
  SYSTEM.uitypes,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.StdCtrls,
  Vcl.Themes,
  VCLTee.Chart, VCLTee.DBChart,
  VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.TeeDBCrossTab,
  VclTee.TeeGDIPlus,
  VCLTee.TeEngine,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_PCM_Main = class(TForm)
    btn_AppClose: TcxButton;
    btn_ArchivPDF: TcxButton;
    btn_ArchivStart: TcxButton;
    btn_ArchivWeb: TcxButton;
    btn_BackupPDF: TcxButton;
    btn_BackupStart: TcxButton;
    btn_BackupWeb: TcxButton;
    btn_BenutzerPDF: TcxButton;
    btn_BenutzerStart: TcxButton;
    btn_BenutzerWeb: TcxButton;
    btn_CleanerPDF: TcxButton;
    btn_CleanerStart: TcxButton;
    btn_CleanerWeb: TcxButton;
    btn_DevPDF: TcxButton;
    btn_DevStart: TcxButton;
    btn_DevWeb: TcxButton;
    btn_Doku: TcxButton;
    btn_LicencePDF: TcxButton;
    btn_LicenceStart: TcxButton;
    btn_LicenceWeb: TcxButton;
    btn_ManagerPDF: TcxButton;
    btn_ManagerStarten: TcxButton;
    btn_ManagerStarten1: TcxButton;
    btn_ManagerWeb: TcxButton;
    btn_MediaPDF: TcxButton;
    btn_MediaStarten: TcxButton;
    btn_MediaWeb: TcxButton;
    btn_MP3PDF: TcxButton;
    btn_MP3Starten: TcxButton;
    btn_MP3Web: TcxButton;
    btn_NotenPDF: TcxButton;
    btn_NotenStarten: TcxButton;
    btn_NotenWeb: TcxButton;
    btn_ServicemanagerPDF: TcxButton;
    btn_ServicemanagerStarten: TcxButton;
    btn_ServicemanagerWeb: TcxButton;
    btn_TimePDF: TcxButton;
    btn_TimeStarten: TcxButton;
    btn_TimeStarten1: TcxButton;
    btn_TimeStartenWeb: TcxButton;
    btn_UpdatePDF: TcxButton;
    btn_UpdateStarten: TcxButton;
    btn_UpdateWeb: TcxButton;
    btn_VokabelPDF: TcxButton;
    btn_VokabelStart: TcxButton;
    btn_VokabelWeb: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    lactrl_Main: TdxLayoutControl;
    lactrl_MainGroup_Root: TdxLayoutGroup;
    laCxlaf_Main: TdxLayoutCxLookAndFeel;
    lafCtrl_Main: TcxLookAndFeelController;
    lagrp_Close: TdxLayoutGroup;
    lagrp_PCMArchiv: TdxLayoutGroup;
    lagrp_PCMBackup: TdxLayoutGroup;
    lagrp_PCMBenutzerverwaltung: TdxLayoutGroup;
    lagrp_PCMCleaner: TdxLayoutGroup;
    lagrp_PCMDevManager: TdxLayoutGroup;
    lagrp_PCMLizenzgenerator: TdxLayoutGroup;
    lagrp_PCMManager: TdxLayoutGroup;
    lagrp_PCMManagerStarten: TdxLayoutGroup;
    lagrp_PCMMediacenter: TdxLayoutGroup;
    lagrp_PCMMP3Manager: TdxLayoutGroup;
    lagrp_PCMNotenrechner: TdxLayoutGroup;
    lagrp_PCMServicemanager: TdxLayoutGroup;
    lagrp_PCMTime: TdxLayoutGroup;
    lagrp_PCMTimeStarten: TdxLayoutGroup;
    lagrp_PCMUpdate: TdxLayoutGroup;
    lagrp_PCMVokabeltrainer: TdxLayoutGroup;
    lagrp_Row1: TdxLayoutGroup;
    lagrp_Row2: TdxLayoutGroup;
    lagrp_Row3: TdxLayoutGroup;
    laitm_BenutzerverwaltungStart: TdxLayoutItem;
    laitm_Close: TdxLayoutItem;
    laitm_PCMArchivPDF: TdxLayoutItem;
    laitm_PCMArchivStart: TdxLayoutItem;
    laitm_PCMArchivWeb: TdxLayoutItem;
    laitm_PCMBackupPDF: TdxLayoutItem;
    laitm_PCMBackupStart: TdxLayoutItem;
    laitm_PCMBackupWeb: TdxLayoutItem;
    laitm_PCMBenutzerverwaltungPDF: TdxLayoutItem;
    laitm_PCMBenutzerverwaltungWeb: TdxLayoutItem;
    laitm_PCMCleanerPDF: TdxLayoutItem;
    laitm_PCMCleanerStart: TdxLayoutItem;
    laitm_PCMCleanerWeb: TdxLayoutItem;
    laitm_PCMDevManagerPDF: TdxLayoutItem;
    laitm_PCMDevManagerStart: TdxLayoutItem;
    laitm_PCMDevManagerWeb: TdxLayoutItem;
    laitm_PCMLizenzgeneratorPDF: TdxLayoutItem;
    laitm_PCMLizenzgeneratorStart: TdxLayoutItem;
    laitm_PCMLizenzgeneratorWeb: TdxLayoutItem;
    laitm_PCMManagerPDF: TdxLayoutItem;
    laitm_PCMManagerStarten: TdxLayoutItem;
    laitm_PCMManagerStarten1: TdxLayoutItem;
    laitm_PCMManagerWeb: TdxLayoutItem;
    laitm_PCMMediacenterPDF: TdxLayoutItem;
    laitm_PCMMediacenterStarten: TdxLayoutItem;
    laitm_PCMMediacenterWeb: TdxLayoutItem;
    laitm_PCMMP3ManagerPDF: TdxLayoutItem;
    laitm_PCMMP3ManagerStarten: TdxLayoutItem;
    laitm_PCMMP3ManagerWeb: TdxLayoutItem;
    laitm_PCMNotenrechnerPDF: TdxLayoutItem;
    laitm_PCMNotenrechnerStarten: TdxLayoutItem;
    laitm_PCMNotenrechnerWeb: TdxLayoutItem;
    laitm_PCMServicemanagerPDF: TdxLayoutItem;
    laitm_PCMServicemanagerStarten: TdxLayoutItem;
    laitm_PCMServicemanagerWeb: TdxLayoutItem;
    laitm_PCMTimePDF: TdxLayoutItem;
    laitm_PCMTimeStarten: TdxLayoutItem;
    laitm_PCMTimeStarten1: TdxLayoutItem;
    laitm_PCMTimeWeb: TdxLayoutItem;
    laitm_PCMUpdatePDF: TdxLayoutItem;
    laitm_PCMUpdateStarten: TdxLayoutItem;
    laitm_PCMUpdateWeb: TdxLayoutItem;
    laitm_PCMVokabeltrainerPDF: TdxLayoutItem;
    laitm_PCMVokabeltrainerStarten: TdxLayoutItem;
    laitm_PCMVokabeltrainerWeb: TdxLayoutItem;
    lalaflst_Main: TdxLayoutLookAndFeelList;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure StartApp(Sender: TObject);
    procedure OpenPDF(Sender: TObject);
    procedure OpenHTML(Sender: TObject);
    procedure btn_AppCloseClick(Sender: TObject);
    procedure btn_DokuClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private-Deklarationen }
    sPath: String;
    function GetAppVersionStr(AProgram: String): string;
    procedure CheckInstalledApp(AProgram: String; Amodul: TdxLayoutGroup);
    procedure CheckInstalledAppMulti(AProgram,AProgram1: String; Amodul: TdxLayoutGroup; AItem, AItem1: TdxLayoutItem);
    procedure CheckExistingPDF(APDF: String; AItem: TdxLayoutItem);
    procedure CheckExistingHTML(AHTML: String; AItem: TdxLayoutItem);
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  {$Region Var}
  frm_PCM_Main: Tfrm_PCM_Main;
  {$EndRegion Var}
const
  {$Region Const}
  sPCMArchiv = 'PCM-Archiv\PCMArchiv.exe';
  sPCMBackup = 'PCM-Service\PCMBackup\PCMBackup.exe';
  sPCMBenutzerverwaltung = 'PCM-Benutzerverwaltung\PCMBenutzerverwaltung.exe';
  sPCMCleaner = 'PCM-Cleaner\PCMCleaner.exe';
  sPCMDevmanager = 'PCM-DevManager\PCMDevManager.exe';
  sPCMLizenz = 'PCM-Lizenzgenerator\PCMLizenzgenerator.exe';
  sPCMManager = 'PCM-Manager\PCMManager.exe';
  sPCMManagerApp = 'Apps\PCMManagerAPP.exe';
  sPCMMediacenter = 'PCM-Mediacenter\PCMMediacenter.exe';
  sPCMMP3Manager = 'PCM-MP3Manager\PCMMP3Manager.exe';
  sPCMNotenrechner = 'PCM-Notenrechner\PCMNotenrechner.exe';
  sPCMServicemanager = 'PCM-Service\PCMServicemanager.exe';
  sPCMTime = 'PCM-Time\PCMTime.exe';
  sPCMTimeApp = 'Apps\PCMTimeAPP.exe';
  sPCMUpdate = 'PCM-Update\PCMUpdate.exe';
  sPCMVokabeltrainer = 'PCM-Vokabeltrainer\PCMVokabeltrainer.exe';
  {$EndRegion Const}
implementation
{$R *.dfm}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_PCM_Main.GetAppVersionStr(AProgram: String): string;
var
  Size, Handle: DWORD;
  Buffer: TBytes;
  FixedPtr: PVSFixedFileInfo;
begin
  Size := GetFileVersionInfoSize(PChar(AProgram), Handle);
  if Size = 0 then RaiseLastOSError;
  SetLength(Buffer, Size);
  if not GetFileVersionInfo(PChar(AProgram), Handle, Size, Buffer) then RaiseLastOSError;
  if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then RaiseLastOSError;
  Result := Format('%d.%d.%d.%d',
    [HiWord(FixedPtr.dwFileVersionMS),
     LoWord(FixedPtr.dwFileVersionMS),
     HiWord(FixedPtr.dwFileVersionLS),
     LoWord(FixedPtr.dwFileVersionLS)]);
end;
procedure Tfrm_PCM_Main.CheckInstalledApp(AProgram: String; Amodul: TdxLayoutGroup);
begin
  if not FileExists(AProgram) then
  begin
    Amodul.Visible:= false;
  end
  else begin
    Amodul.CaptionOptions.Text:= '[B]' + StringReplace(StringReplace(ExtractFileName(AProgram),'.exe','',[rfReplaceAll,rfIgnoreCase]),'PCM','PCM - ',[rfReplaceall]) +  '[/B]' + ' Ver: ' + GetAppVersionStr(AProgram);
  end;
end;
procedure Tfrm_PCM_Main.CheckInstalledAppMulti(AProgram,AProgram1: String; Amodul: TdxLayoutGroup; AItem, AItem1: TdxLayoutItem);
begin
  if (not FileExists(AProgram)) and (not FileExists(AProgram1)) then
    Amodul.Visible:= false;
  if not FileExists(AProgram) then
  begin
    AItem.Visible:= false;
  end
  else begin
    Amodul.CaptionOptions.Text:= '[B]' + StringReplace(StringReplace(ExtractFileName(AProgram),'.exe','',[rfReplaceAll,rfIgnoreCase]),'PCM','PCM - ',[rfReplaceall]) +  '[/B]' + ' Ver: ' + GetAppVersionStr(AProgram);
  end;
  if not FileExists(AProgram1) then
    AItem1.Visible:= false;
end;
procedure Tfrm_PCM_Main.CheckExistingPDF(APDF: String; AItem: TdxLayoutItem);
begin
  if not FileExists(APDF) then
    AItem.Visible:= false;
end;
procedure Tfrm_PCM_Main.CheckExistingHTML(AHTML: String; AItem: TdxLayoutItem);
begin
  if not FileExists(AHTML) then
    AItem.Visible:= false;
end;
procedure Tfrm_PCM_Main.StartApp(Sender: TObject);
begin
  case (Sender as TcxButton).Tag of
  1: ShellExecute(0, 'open',PChar(sPath + sPCMArchiv), nil, PChar(ExtractFilePath(sPath + sPCMArchiv)), SW_SHOWNORMAL);
  2: ShellExecute(0, 'open',PChar(sPath + sPCMBackup), nil, PChar(ExtractFilePath(sPath + sPCMBackup)), SW_SHOWNORMAL);
  3: ShellExecute(0, 'open', PChar(sPath + sPCMBenutzerverwaltung), nil, PChar(ExtractFilePath(sPath + sPCMBenutzerverwaltung)), SW_SHOWNORMAL);
  4: ShellExecute(0, 'open',PChar(sPath + sPCMCleaner), nil, PChar(ExtractFilePath(sPath + sPCMCleaner)), SW_SHOWNORMAL);
  5: ShellExecute(0, 'open',PChar(sPath + sPCMDevmanager), nil, PChar(ExtractFilePath(sPath + sPCMDevmanager)), SW_SHOWNORMAL);
  6: ShellExecute(0, 'open',PChar(sPath + sPCMLizenz), nil, PChar(ExtractFilePath(sPath + sPCMLizenz)), SW_SHOWNORMAL);
  7: ShellExecute(0, 'open',PChar(sPath + sPCMManager), nil, PChar(ExtractFilePath(sPath + sPCMManager)), SW_SHOWNORMAL);
  71: ShellExecute(0, 'open',PChar(sPath + sPCMManagerApp), nil, PChar(ExtractFilePath(sPath + sPCMManagerApp)), SW_SHOWNORMAL);
  8: ShellExecute(0, 'open',PChar(sPath + sPCMMediacenter), nil, PChar(ExtractFilePath(sPath + sPCMMediacenter)), SW_SHOWNORMAL);
  9: ShellExecute(0, 'open',PChar(sPath + sPCMMP3Manager), nil, PChar(ExtractFilePath(sPath + sPCMMP3Manager)), SW_SHOWNORMAL);
  10: ShellExecute(0, 'open',PChar(sPath + sPCMNotenrechner), nil, PChar(ExtractFilePath(sPath + sPCMNotenrechner)), SW_SHOWNORMAL);
  11: ShellExecute(0, 'open',PChar(sPath + sPCMServicemanager), nil, PChar(ExtractFilePath(sPath + sPCMServicemanager)), SW_SHOWNORMAL);
  12: ShellExecute(0, 'open',PChar(sPath + sPCMTime), nil, PChar(ExtractFilePath(sPath + sPCMTime)), SW_SHOWNORMAL);
  121: ShellExecute(0, 'open',PChar(sPath + sPCMTimeApp), nil, PChar(ExtractFilePath(sPath + sPCMTimeApp)), SW_SHOWNORMAL);
  13: ShellExecute(0, 'open',PChar(sPath + sPCMUpdate), nil, PChar(ExtractFilePath(sPath + sPCMUpdate)), SW_SHOWNORMAL);
  14: ShellExecute(0, 'open',PChar(sPath + sPCMVokabeltrainer), nil, PChar(ExtractFilePath(sPath + sPCMVokabeltrainer)), SW_SHOWNORMAL);
  end;
end;
procedure Tfrm_PCM_Main.OpenPDF(Sender: TObject);
begin
  case (Sender as TcxButton).Tag of
    1: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMArchiv,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    2: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMBackup,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    3: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMBenutzerverwaltung,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    4: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMCleaner,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    5: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMDevmanager,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    6: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMLizenz,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    7: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMManager,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    8: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMMediacenter,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    9: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMMP3Manager,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
   10: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMNotenrechner,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
   11: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMServicemanager,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
   12: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMTime,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
   13: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMUpdate,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
   14: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMVokabeltrainer,'exe','pdf',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
  end;
end;
procedure Tfrm_PCM_Main.OpenHTML(Sender: TObject);
begin
  case (Sender as TcxButton).Tag of
    1: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMArchiv,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    2: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMBackup,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    3: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMBenutzerverwaltung,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    4: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMCleaner,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    5: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMDevmanager,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    6: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMLizenz,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    7: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMManager,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    8: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMMediacenter,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
    9: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMMP3Manager,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
   10: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMNotenrechner,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
   11: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMServicemanager,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
   12: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMTime,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
   13: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMUpdate,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
   14: ShellExecute(0, 'open',PChar(StringReplace(sPath + sPCMVokabeltrainer,'exe','htm',[rfReplaceAll,rfIgnoreCase])), nil, nil, SW_SHOWNORMAL);
  end;
end;
{$ENDREGION}
////////////////////////////////////////////////////////////////////////////////
// Buttonfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttonfunktionen}
procedure Tfrm_PCM_Main.cxButton1Click(Sender: TObject);
  function ReadRegistryString(const RootKey: HKEY; const Key, ValueName: string): string;
  var
    Reg: TRegistry;
  begin
    Result := ''; // Default return if value not found
    Reg := TRegistry.Create(KEY_READ);
    try
      Reg.RootKey := RootKey;
      if Reg.OpenKeyReadOnly(Key) then
      begin
        if Reg.ValueExists(ValueName) then
          Result := Reg.ReadString(ValueName);
        Reg.CloseKey;
      end;
    finally
      Reg.Free;
    end;
  end;
begin
var
  ProductName: string;
begin
  ProductName := ReadRegistryString(HKEY_CURRENT_USER,'SOFTWARE\PCM\Swagger','URL');
  ShowMessage(ProductName);
  ShellExecute(0, 'open',PChar(ProductName), nil, nil, SW_SHOWNORMAL);
end;
end;
procedure Tfrm_PCM_Main.btn_DokuClick(Sender: TObject);
begin
  ShellExecute(0, 'open',PChar(sPath + 'Dokumentation\PCM.htm'), nil, nil, SW_SHOWNORMAL);
end;
procedure Tfrm_PCM_Main.btn_AppCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;
{$ENDREGION}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_PCM_Main.FormShow(Sender: TObject);
begin
  sPath:= ExtractFilePath(ParamStr(0));
  CheckInstalledApp(sPath + sPCMArchiv,lagrp_PCMArchiv);
  CheckInstalledApp(sPath + sPCMBackup,lagrp_PCMBackup);
  CheckInstalledApp(sPath + sPCMBenutzerverwaltung,lagrp_PCMBenutzerverwaltung);
  CheckInstalledApp(sPath + sPCMCleaner,lagrp_PCMCleaner);
  CheckInstalledApp(sPath + sPCMDevmanager,lagrp_PCMDevManager);
  CheckInstalledApp(sPath + sPCMLizenz,lagrp_PCMLizenzgenerator);
  CheckInstalledAppMulti(sPath + sPCMManager,sPCMManagerApp,lagrp_PCMManager,laitm_PCMManagerStarten,laitm_PCMManagerStarten1);
  CheckInstalledApp(sPath + sPCMMediacenter,lagrp_PCMMediacenter);
  CheckInstalledApp(sPath + sPCMMP3Manager,lagrp_PCMMP3Manager);
  CheckInstalledApp(sPath + sPCMNotenrechner,lagrp_PCMNotenrechner);
  CheckInstalledApp(sPath + sPCMServicemanager,lagrp_PCMServicemanager);
  CheckInstalledAppMulti(sPath + sPCMTime,sPCMTimeApp,lagrp_PCMTime,laitm_PCMTimeStarten,laitm_PCMTimeStarten1);
  CheckInstalledApp(sPath + sPCMUpdate,lagrp_PCMUpdate);
  CheckInstalledApp(sPath + sPCMVokabeltrainer,lagrp_PCMVokabeltrainer);

  CheckExistingPDF(sPath + StringReplace(sPCMArchiv,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMArchivPDF);
  CheckExistingPDF(sPath + StringReplace(sPCMBackup,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMBackupPDF);
  CheckExistingPDF(sPath + StringReplace(sPCMBenutzerverwaltung,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMBenutzerverwaltungPDF);
  CheckExistingPDF(sPath + StringReplace(sPCMCleaner,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMCleanerPDF);
  CheckExistingPDF(sPath + StringReplace(sPCMDevmanager,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMDevManagerPDF);
  CheckExistingPDF(sPath + StringReplace(sPCMLizenz,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMLizenzgeneratorPDF);
  CheckExistingPDF(sPath + StringReplace(sPCMManager,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMManagerPDF);
  CheckExistingPDF(sPath + StringReplace(sPCMMediacenter,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMMediacenterPDF);
  CheckExistingPDF(sPath + StringReplace(sPCMMP3Manager,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMMP3ManagerPDF);
  CheckExistingPDF(sPath + StringReplace(sPCMNotenrechner,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMNotenrechnerPDF);
  CheckExistingPDF(sPath + StringReplace(sPCMServicemanager,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMServicemanagerPDF);
  CheckExistingPDF(sPath + StringReplace(sPCMTime,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMTimePDF);
  CheckExistingPDF(sPath + StringReplace(sPCMUpdate,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMUpdatePDF);
  CheckExistingPDF(sPath + StringReplace(sPCMVokabeltrainer,'exe','pdf',[rfReplaceAll,rfIgnoreCase]),laitm_PCMVokabeltrainerPDF);

  CheckExistingHTML(sPath + StringReplace(sPCMArchiv,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMArchivWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMBackup,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMBackupWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMBenutzerverwaltung,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMBenutzerverwaltungWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMCleaner,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMCleanerWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMDevmanager,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMDevManagerWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMLizenz,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMLizenzgeneratorWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMManager,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMManagerWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMMediacenter,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMMediacenterWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMMP3Manager,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMMP3ManagerWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMNotenrechner,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMNotenrechnerWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMServicemanager,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMServicemanagerWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMTime,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMTimeWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMUpdate,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMUpdateWeb);
  CheckExistingHTML(sPath + StringReplace(sPCMVokabeltrainer,'exe','htm',[rfReplaceAll,rfIgnoreCase]),laitm_PCMVokabeltrainerWeb);
end;
{$ENDRegion}
end.


