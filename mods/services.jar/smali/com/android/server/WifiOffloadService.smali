.class public Lcom/android/server/WifiOffloadService;
.super Landroid/net/wifi/IWifiOffloadManager$Stub;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_REQUEST:Ljava/lang/String; = "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

.field private static final BACK_KEY_TIMER:J = 0x668a0L

.field private static final DATA_ACTIVITY_CHECK_INTERVAL:J = 0xdbba0L

.field private static final DATA_ACTIVITY_CHECK_START_DELAY:J = 0xdbba0L

.field private static DBG:Z = false

.field private static final DBG_ERR:Z = true

.field private static final DONT_USE_WIFI_PRESS_TIMER:I = 0x2d0

.field private static final EXTRA_SSID:Ljava/lang/String; = "delete_ssid"

.field private static final MAX_SHOW_DIALOG_CNT:I = 0x3

.field static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "persist.offload.datausage.limit"

.field static final PROPERTY_DONT_USE_WIFI_TIME:Ljava/lang/String; = "persist.offload.dontuse.time"

.field private static final START_WIFIOFFLOAD_DIALOG_DELAYED_MSG:I = 0x64

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiOffloadService"

.field public static USER_PRESSED_BACK_KEY:I = 0x0

.field public static USER_PRESSED_NEVER_TURN_ON_WIFI:I = 0x0

.field public static USER_PRESSED_OK:I = 0x0

.field public static USER_PRESSED_TURN_OFF_WIFI:I = 0x0

.field private static final WIFIOFFLOAD_APDIALOG_LAUNCH_DELAYTIME:I = 0x3e8

.field static dataUsageObj:Ljava/lang/Object;

.field public static dialogCreatedObj:Ljava/lang/Object;

.field static isRunning:Z

.field private static mTempPopupBlocked:Z

.field private static mWifiOffloadTempCnt:I

.field private static mWifiOffloadTempStationId:I

.field static obj:Ljava/lang/Object;


# instance fields
.field public DATA_USAGE_THRESHOLD:I

.field WiFiDataReceiver:Landroid/content/BroadcastReceiver;

.field public appRunOverWiFiResult:I

.field applistDB:Landroid/database/sqlite/SQLiteDatabase;

.field private blacklistedApps:[Ljava/lang/String;

.field private bootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

.field private checkBackKeyTimer:Ljava/util/Timer;

.field private checkDataActivityTimer:Ljava/util/Timer;

.field dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

.field private deleteRequestReceiver:Landroid/content/BroadcastReceiver;

.field private dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private doOffload:Z

.field private funcCallTimer:I

.field private gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

.field private isBootCompleted:Z

.field private isDontUsewifiPressed:Z

.field private isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isUserPressedNeverTurnOnWifi:Z

.field public isWiFiConnected:Z

.field private lastWifiScanTime:J

.field private mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mDoNotShowOffloadDialogsDelay:J

.field private mDontUseWifiTimerIsRunning:Z

.field public mIsBatteryCharging:Z

.field public mIsServiceReadyForIntelScanMode:Z

.field private mIsTablet:Z

.field private mIsWifiOffloadDialogIntentSent:Z

.field private mNewSupplicantState:Landroid/net/wifi/SupplicantState;

.field public mNoWifiTimerStartTime:J

.field public mPackageName:Ljava/lang/String;

.field private mSeamlessConnectWhileConnecting:Z

.field private mStartDialogIntent:Landroid/content/Intent;

.field private mWaitForScanResults:Z

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private mWifiOffloadLog:Ljava/lang/StringBuilder;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private messageHandler:Landroid/os/Handler;

.field private noKnownNetwork:Z

.field public offloadObj:Ljava/lang/Object;

.field private pm:Landroid/content/pm/PackageManager;

.field private prevWiFiState:Z

.field public previousBaseStation:I

.field private scanCallTimer:I

.field private scanResultAvailable:Landroid/content/BroadcastReceiver;

.field private scanResults:Landroid/content/BroadcastReceiver;

.field private stationID:I

.field private testStationID:I

.field private tm:Landroid/telephony/TelephonyManager;

.field private wifiAuth:Ljava/lang/String;

.field private wifiBSSID:Ljava/lang/String;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiSSID:Ljava/lang/String;

.field wifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    sput-boolean v1, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    sput v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_NEVER_TURN_ON_WIFI:I

    const/4 v0, 0x3

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/server/WifiOffloadService;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    iput v6, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iput v4, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    iput v4, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    const-string v2, "persist.offload.dontuse.time"

    const/16 v3, 0x2d0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    iput v6, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mIsServiceReadyForIntelScanMode:Z

    iput v6, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    iput-wide v7, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/server/WifiOffloadService$1;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$1;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/WifiOffloadService$2;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$2;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/WifiOffloadService$3;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$3;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    iput-wide v7, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    new-instance v2, Lcom/android/server/WifiOffloadService$5;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$5;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/WifiOffloadService$6;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$6;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    new-instance v2, Lcom/android/server/WifiOffloadService$7;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$7;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/WifiOffloadService$8;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$8;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    iput v6, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "WifiOffloadService is started . . ."

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->createWiFiOffloadDB()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "wifi.interface"

    const-string/jumbo v3, "wlan0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/WifiNative;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    const-string v2, "WifiOffloadService"

    const-string v3, "WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isTablet()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mIsTablet:Z

    invoke-static {}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->initStats()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/SupplicantState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    return p0
.end method

.method static synthetic access$1402(I)I
    .locals 0

    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    return p0
.end method

.method static synthetic access$1502(I)I
    .locals 0

    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    return p0
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/WifiOffloadService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/WifiOffloadService;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->insertDataUsage(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/WifiOffloadService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/WifiOffloadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V

    return-void
.end method

.method static synthetic access$2200(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WifiOffloadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->startWifiOffloadAPDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiOffloadService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/server/WifiOffloadService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/server/WifiOffloadService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/WifiOffloadService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/WifiOffloadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->hasNetworkInRange()V

    return-void
.end method

.method private addDumpLogs(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private checkInExceptionalAppList(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mIsTablet:Z

    if-eqz v2, :cond_2

    const-string v2, "TABLET blacklistedApps"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList_Tablet:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return v1

    :cond_2
    const-string v2, "Smartphone blacklistedApps"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private checkInWifiOnlyAppList(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkInternetPermission(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v1

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in checkInternetPermission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkSignalStrength(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x22

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    if-ltz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private dumpAllStoredWifidata(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 9

    const-string v0, "DUMP ALL THE STORED WIFI NETWORKS"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "stationid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "wifissid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-nez v7, :cond_0

    const-string v0, "WIFI_OFFLOAD_TABLE : wifi_data is NULL"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nBase station : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stationid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Network Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wifissid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private dumpAppDataUsage(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 9

    const-string v0, "DUMP ALL THE STORED WIFI NETWORKS"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkgname"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "datausage"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "launchcount"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "data_usage"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-nez v7, :cond_0

    const-string v0, "DATA_USAGE_TABLE : data_usage is NULL"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nApp package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pkgname"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Data Usage   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "datausage"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Launch count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launchcount"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataUsageforPackage(Ljava/lang/String;)V
    .locals 3

    const-string v1, "getDataUsageforApp ()"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/WifiOffloadService$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WifiOffloadService$10;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getDialogShown()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getWifiState()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private hasNetworkInRange()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    const/4 v0, 0x0

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v6, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v5, v6, :cond_0

    aget-object v5, v4, v0

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Wifi was OFF so if ssid is available in SCAN Results turning ON Wi-Fi will connect to AP"

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    goto :goto_0
.end method

.method private insertDataUsage(ILjava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertDataUsage for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "pkgname"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "launchcount"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "data_usage"

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in insertDataUsage for dbHelper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings AIRPLANE_MODE_ON not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isAnyDataActivity()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isMobileDataActive()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_1
    return v3

    :cond_1
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "WifiOffloadService"

    const-string v5, "Unable to put worker thread to sleep"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCurrentProcessRunning(Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x0

    const-string v8, "isCurrentProcessRunning without thread"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const-string v8, "clearCallingIdentity()"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/16 v8, 0x1f4

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    const-string v8, "restoreCallingIdentity()"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_2

    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while checking isCurrentProcessRunning "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDontUseWifiTimerRunning(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    iget v0, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    if-ne v0, p1, :cond_0

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer is running. Same location. TIMER_DELAY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-string v0, "12 hrs timer is running. *****"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "12hrsTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    return v0
.end method

.method private isHotspotOn()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    const-string v1, "No wifiManager."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobileHotspot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isLastScanFoundNetworks()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDataUsageObject()V
    .locals 2

    sget-object v1, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWaitForDialogShown()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private setWifiState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private startWifiOffloadAPDialog()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->setWaitForDialogShown()V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->getDialogShown()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity for showAppRunningOverWifiDialog Called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->waitTillDialogDisplayed(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    return-void
.end method

.method public static waitTillDialogDisplayed(I)V
    .locals 5

    sget-object v2, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<<<<<<<<<<<<< Waitinption while waiting >>>>>>>>>>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blockWifiPopup(IZ)Z
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    if-ne p1, v0, :cond_1

    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const-string/jumbo v0, "wifi offload : Okay, we can show pop up next time"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temporary pop up blocked is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    sput-boolean p2, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->startBackKeyTimer()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "wifi offload : different station id so reset value"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    sput v2, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    goto :goto_0
.end method

.method public canAppOffload(Ljava/lang/String;)Z
    .locals 5

    sget-object v2, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "Calling data usage in seperate thread"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->getDataUsageforPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v1, "waiting here"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning the offload value as "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    monitor-exit v2

    return v1

    :catch_0
    move-exception v0

    const-string v1, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkAppForWiFiOffloading(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    const-string v7, "WifiOffloadService"

    const-string v8, "Intent or intent component is NULL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "WifiOffloadService"

    const-string v8, "intent action is not ACTION_MAIN"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v7, "checkAppForWiFiOffloading()"

    invoke-virtual {p0, v7}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wifiIntelligentMode value for intelligent mode :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    if-nez v1, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialogInvoked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    :goto_1
    invoke-virtual {v7, v10, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process package name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-eqz v6, :cond_5

    invoke-direct {p0, v1}, Lcom/android/server/WifiOffloadService;->isCurrentProcessRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already running in background"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appInBg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialogInvoked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    goto/16 :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->checkForWifiOffload(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/WifiOffloadService;->setDontuseWifiPressed(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialogInvoked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v7, "WifiOffloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkAppForWiFiOffloading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialogInvoked="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dialogInvoked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    throw v7
.end method

.method public checkAppNeedsMoveToFront(I)V
    .locals 5

    const-string v2, "Move task to front..!!"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v2, v3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception move task to front "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkForWifiOffload(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "test 1 passed for starting"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v1, -0x1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-interface {v3, v4, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doing test 2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppinWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while checking permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppInWiFiBlackList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->canAppOffload(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now turning ON wifi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkIsWifiConnected()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    const-string v1, "isWifiEnabledAndConnected, Wifi is Not Enabled"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    const-string v1, "isWifiEnabledAndConnected Wifi is Connected"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    const-string v1, "isWifiEnabledAndConnected Wifi is Enabled, but not connected"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method public checkNetworksAndShowAPDialog()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isLastScanFoundNetworks()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "No networks. Start scanning."

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Going to show AP dialog now"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    const-string v1, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.REQUEST_WINDOW_MODE"

    const/high16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    goto :goto_0
.end method

.method public checkisScreenOn()Z
    .locals 5

    const-string v2, "checkisScreenOn()"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when checking is screen on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearAllAccessPoints()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in test api clearAllAccessPoints "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public collectWiFiDetails()V
    .locals 3

    const-string v1, "getWiFiDetails()"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiBSSID(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiSSID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createWiFiOffloadDB()V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi_offload/WifiOffloadDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in create WifiOffloadDB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteNetwork(Ljava/lang/String;)I
    .locals 7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifissid = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in delete network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "WifiOffloadService"

    const-string v1, "dump started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WifiOffloadService"

    const-string v1, "check if the caller has DUMP permission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiOffloadService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "WifiOffloadService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->dumpStats(Ljava/io/PrintWriter;)V

    const-string v0, "WifiOffloadService"

    const-string v1, "dump finished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getActualState()I
    .locals 4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.Manifest.permission.ACCESS_WIFI_STATE not granted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->wifiStateToFiveState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getAvailableSSIDNames()[Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wifissid"

    aput-object v4, v2, v3

    const-string/jumbo v3, "wifissid <> 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "wifissid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v10

    :goto_0
    return-object v0

    :catch_0
    move-exception v9

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getAvailableSSIDNames for dbHelper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    goto :goto_0

    :cond_2
    move-object v0, v11

    goto :goto_0
.end method

.method public getCDMABaseStationID()I
    .locals 7

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v0, -0x1

    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    :goto_0
    return v3

    :cond_0
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone type is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v3, "CellLocation is NULL, return -1"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_4

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    if-nez v3, :cond_3

    const-string v3, "CDMA location is null"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseStation ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    move v3, v0

    goto :goto_0

    :cond_5
    if-ne v2, v6, :cond_4

    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_4

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v6, :cond_7

    :cond_6
    const-string v3, "GSM location is null"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    goto :goto_1
.end method

.method public getIntelligentWifiEnabled()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_offload_monitoring"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    const-string/jumbo v1, "wifi_use_intelligent_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public getLastPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWifiScannedTime()J
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning the last scanned time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method public getNeverTurnonWiFiValue()I
    .locals 11

    const/4 v7, 0x1

    const/4 v10, 0x0

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    if-eqz v0, :cond_0

    :goto_0
    return v7

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dialogstatus"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dialogstatus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getNeverTurnonWiFiValue for Cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move v7, v10

    goto :goto_0
.end method

.method public getStationID()I
    .locals 1

    iget v0, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    return v0
.end method

.method public getWifiAuth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiBSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public isAppInWiFiBlackList(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInExceptionalAppList(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blackListed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    move v1, v0

    goto :goto_0
.end method

.method public isAppinWhiteList(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDontUseWifiPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    return v0
.end method

.method public isMobileDataActive()I
    .locals 4

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    const-string v2, "No Telephony manager"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    goto :goto_0
.end method

.method public isNotifyMeChecked()Z
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v4, "wifi_offload_network_notify"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notify me = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception happened while checking NotifyMe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isWifiConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    return v0
.end method

.method public isWifiOnlyApp(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInWifiOnlyAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isWifiSeamlessConnect()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_connect_seamlessly"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public notifyDialogDisplayed(I)V
    .locals 3

    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "<<<<<<<<<<<<<<<< Wait Completed. Dialog created OR error returned >>>>>>>>>>>"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiOffloadService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected requestStateChange()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    const-string v1, "No wifiManager."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getActualState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifi state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const-string v1, "Calling setWifiEnabledDialog() from requestStateChange"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v1, "WifiOffloadService"

    const-string v2, "Wifi state is enabled but not connected so calling our API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkNetworksAndShowAPDialog()V

    goto :goto_0
.end method

.method protected requestStateChange(Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_1

    const-string v5, "No wifiManager."

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v5, v6

    :goto_0
    return v5

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ok, wifi is not connected, try to enable network : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configuration is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSID is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v5, "WifiOffloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enable network for SSID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "WifiOffloadService"

    const-string v8, "enableNetwork passed"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "WifiOffloadService"

    const-string v6, "Connected "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto/16 :goto_0

    :cond_3
    const-string v5, "WifiOffloadService"

    const-string v7, "failed enableNetwork"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto/16 :goto_0

    :cond_4
    const-string v5, "WifiOffloadService"

    const-string v7, "failed to connect"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto/16 :goto_0

    :cond_5
    move v5, v6

    goto/16 :goto_0
.end method

.method protected requestStateChange(Z)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    const-string v1, "No wifiManager."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public requestWifiListForStationID(I)[Ljava/lang/String;
    .locals 11

    const-string v0, "requestWifiListForStationID()"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scanning performed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wifissid"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "wifissid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7

    :catch_0
    move-exception v10

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetCurrentTestBaseStationID()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    return-void
.end method

.method public resetNeverTurnOnWifi()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetNeverTurnOnWifi() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    const-string v0, "Timer is reset"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    return-void
.end method

.method public setAppRunOverWiFiResult(IZ)V
    .locals 2

    iput p1, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    const-string v0, "notification came"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentTestBaseStationID(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    return-void
.end method

.method public setDontuseWifiPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    return-void
.end method

.method public setNeverTurnOnWifi()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "setNeverTurnOnWifi()"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    return-void
.end method

.method public setStationID(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    return-void
.end method

.method public setWifiAuth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    return-void
.end method

.method public setWifiBSSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    return-void
.end method

.method public startBackKeyTimer()V
    .locals 4

    const-string v0, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$9;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$9;-><init>(Lcom/android/server/WifiOffloadService;)V

    const-wide/32 v2, 0x668a0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public startDataActivityTimer()V
    .locals 6

    const-wide/32 v2, 0xdbba0

    const-string v0, "WifiOffloadService"

    const-string v1, "Inside startDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$4;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$4;-><init>(Lcom/android/server/WifiOffloadService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public startDataActivityTimerOnce(Ljava/lang/String;Z)V
    .locals 4

    const-string v2, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const-string v2, "checkDataActivityTimer excecuted"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Intel mode is ON"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check before offload , mSeamlessConnectWhileConnecting ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-eqz v2, :cond_1

    const-string v2, "Its already trying to auto-connect to a known network in a loop, so dont offload now"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seamlessConn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->wifiOffloadFlow(Ljava/lang/String;Z)Z

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    const-string v2, "Intel mode is OFF"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDontUseWiFiPressedTimer()V
    .locals 4

    const-string v0, "Started timer when user pressed Don\'t use WiFi."

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    const-string v0, "persist.offload.dontuse.time"

    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer delay -- >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopDataActivityTimer()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "WifiOffloadService"

    const-string v1, "Inside stopDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

.method public storeWiFiDetails()V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storeWiFiDetails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getWifiBSSID() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "stationid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "wifissid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wifibssid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lastuseddate"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "dialogstatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "wifi_data"

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in StoreWiFiDetais() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tryToTurnOnWifi(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for data activity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->startDataActivityTimerOnce(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateBaseStationIDs(Ljava/lang/String;I)V
    .locals 7

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "stationid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifissid = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in test api updateBaseStationIDs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDialogStatus(I)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDialogStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v8, 0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_0

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "stationid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in updateDialogStatus for dbHelper "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNeverTurnOnWiFi(I)V
    .locals 9

    const-string/jumbo v0, "updateNeverTurnOnWiFi to 1"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "stationid"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lastuseddate"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in updateNeverTurnOnWiFi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasWiFiReallyOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return v0
.end method

.method public declared-synchronized wifiOffloadFlow(Ljava/lang/String;Z)Z
    .locals 13

    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Main function called "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intel mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-nez v6, :cond_0

    const-string v9, "Wi-Fi intelligent mode is not set to ON; return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    :goto_0
    monitor-exit p0

    return v9

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "WiFi is already connected; return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAirplaneModeOn()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isHotspotOn()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string v9, "Airplane plane OR hotspot return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    if-eqz p2, :cond_6

    move v3, v2

    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/lit8 v2, v3, 0x1

    const/16 v9, 0x32

    if-le v3, v9, :cond_4

    const-string v9, "returning since data activity is going on for more than 10 Secs"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 v9, 0xc8

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v2

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    const-string v9, "WifiOffloadService"

    const-string v10, "Unable to put worker thread to sleep"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    goto :goto_1

    :cond_5
    move v2, v3

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->isDontUseWifiTimerRunning(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "mDontUseWifiTimerIsRunning is true dont offload"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_8

    if-nez v0, :cond_a

    :cond_8
    const-string v9, "WifiOffloadService"

    const-string v10, "No Offloading since Base station ID returned -1 or 0"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez p2, :cond_9

    const-string v9, "Base Station is -1 but wifi is ON show the dialog"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkNetworksAndShowAPDialog()V

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    array-length v9, v7

    const/4 v10, 0x1

    if-gt v9, v10, :cond_d

    :cond_b
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "No networks and wifi is off so don\'t offload"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_c
    if-eqz p2, :cond_12

    const-string v9, "if there is no network in wifi offload DB dont turn on wifi just return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_d
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v5, 0x0

    :goto_2
    array-length v9, v7

    if-ge v5, v9, :cond_12

    const-string v9, "requestStateChange : status true"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_e
    aget-object v9, v7, v5

    invoke-direct {p0, v9}, Lcom/android/server/WifiOffloadService;->checkSignalStrength(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    aget-object v9, v7, v5

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Ljava/lang/String;)Z

    move-result v8

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_f
    const/4 v8, 0x0

    goto :goto_3

    :cond_10
    if-eqz p2, :cond_11

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "WifiOffloadService"

    const-string v10, "Connect WiFi seamlessly"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Z)Z

    move-result v8

    :cond_12
    const/4 v1, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestStateChange returned nowWaitForConnection"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :cond_13
    :goto_4
    if-eqz v8, :cond_16

    const/16 v9, 0x64

    if-ge v1, v9, :cond_16

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v10, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v9, v10, :cond_15

    const-string v9, "Association completed"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_15
    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    if-eqz v9, :cond_18

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-nez v9, :cond_13

    const-string v9, "Unable to connect to known network since not in range, show AP list dialog"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :cond_16
    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-eqz v9, :cond_19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoConnect: mSeamlessConnectWhileConnecting  is true "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_17

    const-string v9, "AutoConnect unable to CONNNECT : sendEmptyMessageDelayed after 5 min to check Wifi status"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    const-wide/32 v11, 0x493e0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_18
    const-wide/16 v9, 0xc8

    :try_start_4
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_1
    move-exception v4

    :try_start_5
    const-string v9, "WifiOffloadService"

    const-string v10, "Unable to put worker thread to sleep"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_19
    :try_start_6
    const-string v9, "enableNetwork API failed based on location, try to call standard API"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-nez p2, :cond_1a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWaitrequired "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->requestStateChange()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1a
    const/4 v9, 0x1

    goto/16 :goto_0
.end method
