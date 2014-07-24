.class public final Lcom/android/server/ssrm/Monitor;
.super Ljava/lang/Thread;
.source "Monitor.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/Monitor$Command;,
        Lcom/android/server/ssrm/Monitor$HangoutMode;,
        Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;,
        Lcom/android/server/ssrm/Monitor$SIPStatusInfo;,
        Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;,
        Lcom/android/server/ssrm/Monitor$CustomSettingWriter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field public static final MSG_BROADCAST_INTENT:I = 0xa

.field public static final MSG_CFMS_COMMAND:I = 0xb

.field public static final MSG_FOREGROUND_APP:I = 0x9

.field public static final MSG_RELEASE_SIOP_DEFERING:I = 0xd

.field public static final MSG_REVIEW_APK:I = 0xc

.field static TAG:Ljava/lang/String;

.field static TAG_SIOP:Ljava/lang/String;

.field static mForegroundPackageName:Ljava/lang/String;

.field private static mLteTpBooster:Lcom/android/server/ssrm/LteTpBooster;

.field public static mMainsController:Lcom/android/server/ssrm/settings/MainController;

.field private static mMonitor:Lcom/android/server/ssrm/Monitor;

.field static mNotifiedMaxBrightness:I

.field static mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

.field public static mSsrmv2Enabled:Z

.field public static mSurfaceTemperature:I

.field static mTts:Landroid/speech/tts/TextToSpeech;

.field static sCmdTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ssrm/Monitor$Command;",
            ">;"
        }
    .end annotation
.end field

.field public static sHandlerThread:Landroid/os/HandlerThread;

.field public static sIsGHeavyAppFg:Z

.field public static sIsHeavyAppFg:Z


# instance fields
.field final ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

.field final IS_VISIBLE_WINDOW:Ljava/lang/String;

.field final RESPONSE_AXT9INFO:Ljava/lang/String;

.field final SIOP_TIMER_PERIOD_LCD_OFF:I

.field final SIOP_TIMER_PERIOD_LCD_ON:I

.field final SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String;

.field final SSRM_STATUS_NAME:Ljava/lang/String;

.field final SSRM_STATUS_NOTIFY:Ljava/lang/String;

.field final SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String;

.field final SSRM_STATUS_VALUE:Ljava/lang/String;

.field mACLWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mAMSQuerySyncObject:Ljava/lang/Object;

.field mActivityManager:Landroid/app/ActivityManager;

.field mAirViewOnOff:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

.field mAmoledAdjustTimerRunnable:Ljava/lang/Runnable;

.field mAppStartCondition:Lcom/android/server/ssrm/settings/Condition;

.field mBatteryCoolDownMode:Lcom/android/server/ssrm/BatteryCoolDownMode;

.field mBootComplete:Z

.field mCPUCoreMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field public mCallStateOffHook:Z

.field mCameraDisableWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mCameraQuickAccess:Lcom/android/server/ssrm/CameraQuickAccess;

.field mCameraRecordingLowFpsWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mContext:Landroid/content/Context;

.field mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

.field mCpuMaxSIP:Landroid/os/DVFSHelper;

.field mCurrentApTemperature:I

.field mCurrentBatteryLevel:I

.field mCurrentBatteryTemperature:I

.field mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

.field mDynamicFpsLevelWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mEmergencyMode:Lcom/android/server/ssrm/EmergencyMode;

.field mFactoryBinary:Z

.field mFlashWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mGovernorAdonisMini:Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

.field mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

.field mGovernorAdonisPrime2Helsinki:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

.field mGovernorPXA1x88Interactive:Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;

.field mHandler:Landroid/os/Handler;

.field mHangoutMode:Lcom/android/server/ssrm/Monitor$HangoutMode;

.field mHotControl:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mHumanMotionTracker:Lcom/android/server/ssrm/HumanMotionTracker;

.field mIPAControlTempWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mIPAHotPlugOutWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field final mIntentMaxBrightnessChanged:Landroid/content/Intent;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsGHeavyUserScenarioExist:Z

.field mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mLimiter:Lcom/android/server/ssrm/Limiter;

.field mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

.field mMaxFpsHelper:Landroid/os/DVFSHelper;

.field mNavigationOn:Z

.field mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

.field mPolarisArmLock:Landroid/os/DVFSHelper;

.field mPolarisPDFViewOn:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerSavingMode:Lcom/android/server/ssrm/PowerSavingMode;

.field mPowerStretchWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mPredictedSurfaceTemperature:Lcom/android/server/ssrm/PredictedSurfaceTemperature;

.field mPrevLucid:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field mPstWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mRecordingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mSIOPLevel:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

.field mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

.field mScreenOn:Z

.field mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

.field mSideTouch:Lcom/android/server/ssrm/fgapps/tsp/SideTouch;

.field mSiopLevel:I

.field mSmartBonding:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTempShift:I

.field mTempShiftWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mThermistorObeserverRunnable:Ljava/lang/Runnable;

.field mWifiApOn:Z

.field mlevelCurrLucid:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "SSRMv2:Monitor"

    sput-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v0, "SSRMv2:SIOP"

    sput-object v0, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    const/16 v0, 0x12c

    sput v0, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    const/4 v0, -0x1

    sput v0, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 11

    const-string v8, "Monitor"

    invoke-direct {p0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/ssrm/DevSysProperty;

    invoke-direct {v8}, Lcom/android/server/ssrm/DevSysProperty;-><init>()V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryLevel:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mTempShift:I

    const-string v8, "com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_NOTIFY:Ljava/lang/String;

    const-string v8, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String;

    const-string v8, "SSRM_STATUS_NAME"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_NAME:Ljava/lang/String;

    const-string v8, "SSRM_STATUS_VALUE"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_VALUE:Ljava/lang/String;

    const-string v8, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String;

    const-string v8, "ResponseAxT9Info"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->RESPONSE_AXT9INFO:Ljava/lang/String;

    const-string v8, "AxT9IME.isVisibleWindow"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->IS_VISIBLE_WINDOW:Ljava/lang/String;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mIsGHeavyUserScenarioExist:Z

    const/16 v8, 0x2710

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->SIOP_TIMER_PERIOD_LCD_ON:I

    const v8, 0xea60

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->SIOP_TIMER_PERIOD_LCD_OFF:I

    new-instance v8, Lcom/android/server/ssrm/Monitor$2;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$2;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    new-instance v8, Lcom/android/server/ssrm/Monitor$3;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$3;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mAmoledAdjustTimerRunnable:Ljava/lang/Runnable;

    new-instance v8, Lcom/android/server/ssrm/Monitor$4;

    const-string v9, "IPAControlTemp"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$4;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIPAControlTempWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$5;

    const-string v9, "IPAHotPlugOut"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$5;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIPAHotPlugOutWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$6;

    const-string v9, "CPUFreqMax"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$6;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$7;

    const-string v9, "CPUCoreMax"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$7;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$8;

    const-string v9, "GPUFreqMax"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$8;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$9;

    const-string v9, "HotControl"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$9;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mHotControl:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$10;

    const-string v9, "PST"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$10;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPstWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$11;

    const-string v9, "TempShift"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$11;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mTempShiftWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$12;

    const-string v9, "CameraDisable"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$12;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCameraDisableWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$13;

    const-string v9, "CameraRecordingLowFps"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$13;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCameraRecordingLowFpsWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$14;

    const-string v9, "Flash"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$14;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mFlashWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$15;

    const-string v9, "Recording"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$15;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mRecordingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$16;

    const-string v9, "LCDBrightness"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$16;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    new-instance v8, Lcom/android/server/ssrm/Monitor$17;

    const-string v9, "Charging"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$17;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$18;

    const-string v9, "ACL"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$18;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mACLWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$19;

    const-string v9, "PowerStretch"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$19;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPowerStretchWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$20;

    const-string v9, "DynamicFpsLevel"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$20;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mDynamicFpsLevelWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mSiopLevel:I

    new-instance v8, Lcom/android/server/ssrm/Monitor$21;

    const-string v9, "SIOPLevel"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$21;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mSIOPLevel:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$22;

    const-string v9, "SmartBonding"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$22;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mSmartBonding:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    const-string v8, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mPrevLucid:I

    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mlevelCurrLucid:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    new-instance v8, Lcom/android/server/ssrm/Monitor$23;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$23;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mAMSQuerySyncObject:Ljava/lang/Object;

    new-instance v8, Lcom/android/server/ssrm/Monitor$24;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$24;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v8, Lcom/android/server/ssrm/Limiter;

    invoke-direct {v8, p1}, Lcom/android/server/ssrm/Limiter;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    new-instance v8, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/server/ssrm/Monitor;->mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    const/16 v10, 0x20

    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v8, Lcom/android/server/ssrm/LteTpBooster;

    invoke-direct {v8, p1}, Lcom/android/server/ssrm/LteTpBooster;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/android/server/ssrm/Monitor;->mLteTpBooster:Lcom/android/server/ssrm/LteTpBooster;

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->registerIntentFilters()V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mFactoryBinary:Z

    :try_start_0
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {p2, v8}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->registerCommands()V

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/ssrm_v2.disable"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mFactoryBinary:Z

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    :goto_1
    return-void

    :catch_0
    move-exception v3

    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to registerProcessObserver, e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/ssrm_v2.sts"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    :cond_2
    new-instance v8, Lcom/android/server/ssrm/PredictedSurfaceTemperature;

    invoke-direct {v8}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;-><init>()V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPredictedSurfaceTemperature:Lcom/android/server/ssrm/PredictedSurfaceTemperature;

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v8, v5, Landroid/graphics/Point;->x:I

    const/16 v9, 0xa00

    if-ge v8, v9, :cond_3

    iget v8, v5, Landroid/graphics/Point;->y:I

    const/16 v9, 0xa00

    if-lt v8, v9, :cond_4

    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/ssrm/Feature;->DISPLAY_WQXGA:Z

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/server/ssrm/settings/MainController;->getInstance()Lcom/android/server/ssrm/settings/MainController;

    move-result-object v8

    sput-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXMLFromLocalOrResource()Ljava/io/InputStream;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIPAControlTempWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIPAHotPlugOutWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v9, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;

    invoke-direct {v9}, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;-><init>()V

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/SettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v9, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;

    invoke-direct {v9}, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;-><init>()V

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/SettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mFlashWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mRecordingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v9, Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;

    iget-object v10, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v9, v10}, Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;-><init>(Landroid/os/PowerManager;)V

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/SettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v9, Lcom/android/server/ssrm/settingschooser/MinSettingsChooser;

    invoke-direct {v9}, Lcom/android/server/ssrm/settingschooser/MinSettingsChooser;-><init>()V

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/SettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mACLWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPowerStretchWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mDynamicFpsLevelWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mSIOPLevel:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mSmartBonding:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mHotControl:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPstWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mTempShiftWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCameraDisableWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCameraRecordingLowFpsWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4, v7}, Lcom/android/server/ssrm/settings/MainController;->initialize(Lcom/android/server/ssrm/settings/LevelsFactory;Ljava/io/InputStream;Ljava/util/List;)V

    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v9, "SSRMv2 Settings Engine initialized!"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "ScreenOff"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "ScreenOff"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "ScreenOffInCall"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "ScreenOffInCall"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    :cond_5
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "ScreenOnAppStarted"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "ScreenOnAppStarted"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

    :cond_6
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "HangoutsVTCall"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    if-nez v8, :cond_7

    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    :cond_7
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "GHeavyUserUp"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "GHeavyUserDown"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mIsGHeavyUserScenarioExist:Z

    :cond_8
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "AppStart"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mAppStartCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->updateSimpleConditionsWithName()V

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/DevSysProperty;->setSsrmInitResult(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v9, "/sys/class/power_supply/battery/capacity"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/DeviceStatus;->setBatteryRemaining(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v3

    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v9, "failed to init ssrm v2"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/DevSysProperty;->setSsrmInitResult(Z)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/Monitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z

    move-result v0

    return v0
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMonitorInstance()Lcom/android/server/ssrm/Monitor;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    return-object v0
.end method

.method public static declared-synchronized getMonitorInstance(Landroid/content/Context;Landroid/app/IActivityManager;)Lcom/android/server/ssrm/Monitor;
    .locals 2

    const-class v1, Lcom/android/server/ssrm/Monitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ssrm/Monitor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ssrm/Monitor;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPolicyXMLFromLocalOrResource()Ljava/io/InputStream;
    .locals 11

    new-instance v3, Ljava/io/File;

    const-string v10, "/data/system/ssrm_v2.debug"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v10, "/data/system/ssrm_v2.original"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v10, "/data/system/ssrm_v2.new"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v10, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v6

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v6, :cond_2

    if-eqz v8, :cond_2

    const/16 v10, 0x400

    :try_start_1
    new-array v0, v10, [B

    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    const/4 v10, -0x1

    if-ne v1, v10, :cond_5

    :cond_2
    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    if-eqz v8, :cond_4

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_4
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_9

    :try_start_4
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v8, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v7, v8

    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v6, :cond_7

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_8
    :goto_6
    throw v10

    :catch_2
    move-exception v2

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v9

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v9

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v2

    goto :goto_4

    :catchall_1
    move-exception v10

    move-object v7, v8

    goto :goto_5

    :catch_6
    move-exception v2

    goto :goto_3
.end method

.method private getPolicyXmlFromResource()Ljava/io/InputStream;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v4, "raw"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static handleSsrmCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/Monitor$Command;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/ssrm/Monitor$Command;->execute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static isConditionExist(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    invoke-virtual {v0, p0}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBatteryChanged(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "level"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/ssrm/DeviceStatus;->setBatteryRemaining(I)V

    const-string v4, "plugged"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    invoke-static {v2}, Lcom/android/server/ssrm/DeviceStatus;->setUsbConnected(Z)V

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onUsbConnectionStatusChangedForAll(Z)V

    :goto_0
    if-ne v0, v2, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/android/server/ssrm/DeviceStatus;->setAcConnected(Z)V

    const-string/jumbo v2, "temperature"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v2}, Lcom/android/server/ssrm/DevSysProperty;->getBatteryTemperature()I

    move-result v1

    const/16 v2, -0x3e7

    if-eq v1, v2, :cond_0

    iput v1, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    :cond_0
    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    invoke-static {v2}, Lcom/android/server/ssrm/DeviceStatus;->setBatteryTemperature(I)V

    return-void

    :cond_1
    invoke-static {v3}, Lcom/android/server/ssrm/DeviceStatus;->setUsbConnected(Z)V

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onUsbConnectionStatusChangedForAll(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private onBootCompleted()V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onReceive:: ACTION_BOOT_COMPLETED is received."

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/SortingMachine;->bootComplete()V

    new-instance v1, Lcom/android/server/ssrm/PowerSavingMode;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/PowerSavingMode;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Lcom/android/server/ssrm/PowerSavingMode;

    new-instance v1, Lcom/android/server/ssrm/HumanMotionTracker;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/HumanMotionTracker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHumanMotionTracker:Lcom/android/server/ssrm/HumanMotionTracker;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/ssrm/CameraQuickAccess;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/CameraQuickAccess;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCameraQuickAccess:Lcom/android/server/ssrm/CameraQuickAccess;

    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v1}, Lcom/android/server/ssrm/DevSysProperty;->isTtsFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_1
    new-instance v1, Lcom/android/server/ssrm/EmergencyMode;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/EmergencyMode;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mEmergencyMode:Lcom/android/server/ssrm/EmergencyMode;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_VZW_COOLDOWN_ENABLE:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/server/ssrm/CoolDownMode;

    invoke-direct {v1}, Lcom/android/server/ssrm/CoolDownMode;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    :cond_2
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_BATTERY_COOLDOWN_ENABLE:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/server/ssrm/BatteryCoolDownMode;

    invoke-direct {v1}, Lcom/android/server/ssrm/BatteryCoolDownMode;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mBatteryCoolDownMode:Lcom/android/server/ssrm/BatteryCoolDownMode;

    :cond_3
    new-instance v1, Lcom/android/server/ssrm/Monitor$HangoutMode;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/ssrm/Monitor$HangoutMode;-><init>(Lcom/android/server/ssrm/Monitor;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHangoutMode:Lcom/android/server/ssrm/Monitor$HangoutMode;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    iput-boolean v4, v1, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    :cond_4
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->isSiopEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/ssrm/Monitor;->notifyLimitBrightness(IZ)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SsrmUEventObserver;->systemReady(Landroid/content/Context;)V

    const-string v1, "dev.knoxapp.running"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/Monitor$26;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$26;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onClearCoverOn(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "com.samsung.ssrm.COVER_OPEN"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ssrm.COVER_OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "coverOpen"

    const-string v3, "coverOpen"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private onNetworkBoosterEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkBoosterEnabled:: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NetworkBooster"

    invoke-static {v0, p1}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method private onPowerConnected()V
    .locals 3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/ssrm/DeviceStatus;->setPowerConnected(Z)V

    const-string v1, "ro.product.name"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ms013gzm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ms013gzn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    invoke-virtual {v1}, Lcom/android/server/ssrm/Limiter;->rewriteChargingCurrent()V

    :cond_0
    return-void
.end method

.method private onPowerDisconnected()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/ssrm/DeviceStatus;->setPowerConnected(Z)V

    return-void
.end method

.method private onScreenOff()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    goto :goto_0
.end method

.method private onScreenOn()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/Monitor;->isSignaled(Lcom/android/server/ssrm/settings/Condition;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    :cond_0
    :goto_0
    const-string v0, "com.samsung.ssrm.SCREEN_ON"

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.ssrm.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    goto :goto_0
.end method

.method private onSecurePlaybackStarted()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "SecurePlayback_play"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_VALUE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PackageName"

    const-string v2, "android.av.media.libstagefright"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PID"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private onSecurePlaybackStopped()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "SecurePlayback_play"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_VALUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PackageName"

    const-string v2, "android.av.media.libstagefright"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PID"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private onSsrmIntentReceived(Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x0

    const-string v4, "SSRM_STATUS_NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SSRM_STATUS_VALUE"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "PackageName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastReceiver::onReceive SSRM_STATUS_NOTIFY with statusName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  statusValue ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v4, :cond_0

    invoke-static {v1, v2}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    :cond_0
    const-string v4, "Navigation_show"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v2, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    :cond_1
    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/ssrm/Monitor;->mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

    iget-boolean v5, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    if-eqz v5, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    :cond_4
    return-void
.end method

.method private onTetheringChanged(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v2, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    :goto_0
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

    iget-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    invoke-virtual {p0, v3, v1}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    :cond_2
    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    goto :goto_0
.end method

.method private onUsbCharged(Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/Limiter;->setResetBatteryCharging(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/Limiter;->setResetBatteryCharging(Z)V

    goto :goto_0
.end method

.method private declared-synchronized readThermistorFile()Z
    .locals 8

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    :try_start_1
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    sget-object v6, Lcom/android/server/ssrm/Feature;->AP_TEMP_PATH:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v5, v0, 0xa

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mTempShift:I

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v5}, Lcom/android/server/ssrm/DevSysProperty;->getApTemperature()I

    move-result v2

    const/16 v5, -0x3e7

    if-eq v2, v5, :cond_2

    move v0, v2

    :cond_2
    iget v3, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    iput v0, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor;->mPredictedSurfaceTemperature:Lcom/android/server/ssrm/PredictedSurfaceTemperature;

    iget v6, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->WeightedMean(I)I

    move-result v5

    sput v5, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    iget-object v5, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    sget v6, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/DevSysProperty;->setPredictedSurfaceTemperatue(I)V

    :cond_4
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-eqz v5, :cond_5

    sget v5, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    iput v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    :cond_5
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    if-gez v5, :cond_7

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    if-eqz v5, :cond_7

    :cond_6
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    iput v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    :cond_7
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIOP:: AP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PST = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Delta = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    if-eq v3, v5, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIOP:: AP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Delta = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private static registerFgAppListener(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    return-void
.end method

.method private static registerFgAppListener(Ljava/lang/Class;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-class v1, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->getInstance()Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->register(Ljava/lang/Class;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    :goto_1
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ssrm/DevSysProperty;->addFgAppListeners(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register FgAppListener class c = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener;

    invoke-static {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->register(Ljava/lang/Class;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private registerFgAppListeners()V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-class v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;)V

    const-class v0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;)V

    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v3, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_a

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v3, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MATISSE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    if-eqz v0, :cond_b

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_MRVL_SYSFS:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v3, Lcom/android/server/ssrm/fgapps/NavigationScenario;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_c

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_TURBO_MODE_BOOSTER:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v3, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;

    const-string v0, "Combination"

    sget-object v4, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_d

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v3, Lcom/android/server/ssrm/fgapps/TouchBooster;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v0, :cond_e

    :cond_4
    move v0, v2

    :goto_4
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v3, Lcom/android/server/ssrm/fgapps/GameBooster;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    if-nez v0, :cond_6

    :cond_5
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HEAT:Z

    if-eqz v0, :cond_f

    :cond_6
    move v0, v2

    :goto_5
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v3, Lcom/android/server/ssrm/fgapps/TouchBusBooster;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-eqz v0, :cond_10

    move v0, v2

    :goto_6
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;

    invoke-static {v0, v2}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v3, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-eqz v0, :cond_11

    :cond_7
    move v0, v2

    :goto_7
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v3, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    if-nez v0, :cond_12

    move v0, v2

    :goto_8
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/TouchReportRate;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_LOW_BATTERY_LIMITATION:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    if-eqz v3, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;)V

    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;)V

    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mSideTouch:Lcom/android/server/ssrm/fgapps/tsp/SideTouch;

    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisMini:Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisPrime2Helsinki:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGovernorPXA1x88Interactive:Lcom/android/server/ssrm/fgapps/GovernorPXA1x88Interactive;

    return-void

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto/16 :goto_3

    :cond_e
    move v0, v1

    goto/16 :goto_4

    :cond_f
    move v0, v1

    goto/16 :goto_5

    :cond_10
    move v0, v1

    goto/16 :goto_6

    :cond_11
    move v0, v1

    goto/16 :goto_7

    :cond_12
    move v0, v1

    goto/16 :goto_8
.end method

.method public static sendMessage(Landroid/os/Message;)V
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-boolean v0, v0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setForegroundPackageName(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    return-void
.end method

.method static setNotifiedMaxBrightness(I)V
    .locals 0

    sput p0, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    return-void
.end method

.method public static speak(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SSRMv2:Speak"

    invoke-static {v0, p0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method private trimKnoxPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, "sec_container_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private trimPostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private updateKnoxSystemProperty(Ljava/lang/String;)V
    .locals 2

    const-string v0, "sec_container_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.knox.containeragent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "dev.knoxapp.running"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "dev.knoxapp.running"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSimpleConditionsWithName()V
    .locals 12

    const/4 v11, 0x1

    const-string v9, "HeavyUser"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "HeavyUserScenario"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    const-string v9, "GHeavyUserDown"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "GHeavyUserScenario"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    const-string v9, "GHeavyUserUp"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "GHeavyUserScenario"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "ChatOnV"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v9, "ChatOnV"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "ChatOnV_vtCall"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    :cond_0
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "GroupPlay"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v9, "GroupPlay"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v3

    const-string v9, "GroupPlay_gpuLock"

    invoke-virtual {v3, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    const-string v9, "Navigation_show"

    invoke-virtual {v3, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    :cond_1
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "CameraRecording"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v9, "CameraRecording"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v1

    const-string v9, "Camera_recording"

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    const-string v9, "Camera_recordingDual"

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    const-string v9, "ChatOnV_vtCall"

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    const-string v9, "Phone_vtCall"

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    :cond_2
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "CameraShooting"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v9, "CameraShooting"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v2

    const-string v9, "Camera_panoramaShot"

    invoke-virtual {v2, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    const-string v9, "Camera_dramaShot"

    invoke-virtual {v2, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    :cond_3
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "MirroringBoost"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v9, "MirroringBoost"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "ScreenMirroringBooster"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    :cond_4
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "BrowserMode"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v9, "BrowserMode"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v0

    const-string v9, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    const-string v9, "com.android.chrome"

    invoke-virtual {v0, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    sget-boolean v9, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    if-eqz v9, :cond_5

    const-string v9, "com.android.email"

    invoke-virtual {v0, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    :cond_5
    const-string v9, "Hangouts"

    sget-boolean v10, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    invoke-static {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "com.google.android.talk"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "WatchNow"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_6

    const-string v9, "WatchNow"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "com.sec.android.app.videoplayer"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    :cond_6
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "Camera"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_7

    const-string v9, "Camera"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "com.sec.android.app.camera"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    :cond_7
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "VideoPlayer"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_8

    const-string v9, "VideoPlayer"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "com.samsung.everglades.video"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    :cond_8
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "VoiceRecorder"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_9

    const-string v9, "VoiceRecorder"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    :cond_9
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "HotGameControl0"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_a

    const-string v9, "HotGameControl0"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    sget-object v10, Lcom/android/server/ssrm/HotGameList;->HotGameGroup0:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    :cond_a
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "HotGameControl1"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_b

    const-string v9, "HotGameControl1"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    sget-object v10, Lcom/android/server/ssrm/HotGameList;->HotGameGroup1:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    :cond_b
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "HotGameControl2"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_c

    const-string v9, "HotGameControl2"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    sget-object v10, Lcom/android/server/ssrm/HotGameList;->HotGameGroup2:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    :cond_c
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "HotGameControl3"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_d

    const-string v9, "HotGameControl3"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    sget-object v10, Lcom/android/server/ssrm/HotGameList;->HotGameGroup3:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    :cond_d
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "HotGameControl4"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_e

    const-string v9, "HotGameControl4"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    sget-object v10, Lcom/android/server/ssrm/HotGameList;->HotGameGroup4:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    :cond_e
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "NetworkBooster"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_f

    const-string v9, "NetworkBooster"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "NetworkBooster"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    :cond_f
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "OneSegTmm"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_10

    const-string v9, "OneSegTmm"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v6

    const-string v9, "jp.co.mmbi.app"

    invoke-virtual {v6, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    const-string v9, "com.samsung.sec.mtv"

    invoke-virtual {v6, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    :cond_10
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "KidsCamera"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_11

    const-string v9, "KidsCamera"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v4

    const-string v9, "com.sec.kidsplat.camera"

    invoke-virtual {v4, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    :cond_11
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "Navigation"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_12

    const-string v9, "Navigation"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    const-string v9, "com.google.android.apps.maps"

    invoke-virtual {v5, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    const-string v9, "com.skt.skaf.l001mtm091"

    invoke-virtual {v5, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    const-string v9, "kt.navi"

    invoke-virtual {v5, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    const-string v9, "com.mnsoft.lgunavi"

    invoke-virtual {v5, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    :cond_12
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "VtCall"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_13

    const-string v9, "VtCall"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v8

    const-string v9, "ChatOnV_vtCall"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    const-string v9, "Phone_vtCall"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    :cond_13
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "TPBoost"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_14

    const-string v9, "TPBoost"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v7

    const-string v9, "com.FTATS"

    invoke-virtual {v7, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    :cond_14
    return-void
.end method


# virtual methods
.method PowerStretchSet(I)V
    .locals 3

    iget v1, p0, Lcom/android/server/ssrm/Monitor;->mPrevLucid:I

    if-eq p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".POWER_STRETCH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mlevelCurrLucid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    iput p1, p0, Lcom/android/server/ssrm/Monitor;->mPrevLucid:I

    return-void
.end method

.method checkIsHeavyApp(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/ssrm/Monitor;->mIsGHeavyUserScenarioExist:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ssrm/SortingMachine;->isAppInCategory(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v3, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    const-string v1, "GHeavyUserScenario"

    invoke-static {v1, v3}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    if-eqz v1, :cond_2

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    const-string v1, "GHeavyUserScenario"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput-boolean v3, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    const-string v1, "HeavyUserScenario"

    invoke-static {v1, v3}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    const-string v1, "HeavyUserScenario"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    invoke-virtual {v0, p2}, Lcom/android/server/ssrm/settings/MainController;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method enableAcl(Z)V
    .locals 5

    const-string v0, "/sys/class/lcd/panel/siop_enable"

    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "/sys/class/lcd/panel/siop_enable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method fileWriteInt(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initHandlerThread()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SSRM Handler Thread"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/android/server/ssrm/Monitor$1;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/Monitor$1;-><init>(Lcom/android/server/ssrm/Monitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor;->mFactoryBinary:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListeners()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v0}, Lcom/android/server/ssrm/DevSysProperty;->writeModeToSystemProperty()V

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v0}, Lcom/android/server/ssrm/DevSysProperty;->writeFgAppListenersToSystemProperty()V

    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->isSiopEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getLastBatteryTemperature()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    iget v1, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/settings/MainController;->setTemperature(I)V

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreMonitor.getLastBatteryTemperature:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mAmoledAdjustTimerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method isSignaled(Lcom/android/server/ssrm/settings/Condition;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Condition;->signaled()Z

    move-result v0

    goto :goto_0
.end method

.method logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method final notifyLimitBrightness(IZ)V
    .locals 5

    const-string v1, "max_brightness"

    const-string v0, "change_type"

    sget v2, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    if-ne v2, p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    sput p1, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyLimitBrightness() : brightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isBootCompleted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v3, "max_brightness"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v3, "change_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v3, "change_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method onDockConnected(Landroid/content/Intent;)V
    .locals 4

    const/16 v0, 0xb

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mHumanMotionTracker:Lcom/android/server/ssrm/HumanMotionTracker;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mHumanMotionTracker:Lcom/android/server/ssrm/HumanMotionTracker;

    invoke-virtual {v2}, Lcom/android/server/ssrm/HumanMotionTracker;->onConnected()V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mHumanMotionTracker:Lcom/android/server/ssrm/HumanMotionTracker;

    invoke-virtual {v2}, Lcom/android/server/ssrm/HumanMotionTracker;->onDisconnected()V

    goto :goto_0
.end method

.method onForegroundAppChanged(Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundAppChanged:: packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->updateKnoxSystemProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->trimKnoxPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->trimPostfix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundAppChanged::ignored packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->setForegroundPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/server/ssrm/TouchSeparation;->notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHangoutMode:Lcom/android/server/ssrm/Monitor$HangoutMode;

    invoke-virtual {v1, p1}, Lcom/android/server/ssrm/Monitor$HangoutMode;->onFgAppChanged(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onForegroundActivitiesChanged(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->checkIsHeavyApp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mAppStartCondition:Lcom/android/server/ssrm/settings/Condition;

    if-eqz v1, :cond_0

    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_3

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryRemaining()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mAppStartCondition:Lcom/android/server/ssrm/settings/Condition;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onInit(I)V
    .locals 0

    return-void
.end method

.method onPolarisChanged(Landroid/content/Intent;)V
    .locals 11

    const v10, 0x124f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "ENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v9, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "POLARIS_ARM_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v6

    if-eqz v6, :cond_0

    aget v0, v6, v8

    if-le v0, v10, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v2, v10}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: dvfs lock for Polaris is acquired."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: -20 cd is applied."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v9}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: dvfs lock for Polaris is released."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: -20 cd is released."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    goto :goto_1
.end method

.method onReceiveBroadcastIntent(Landroid/content/Intent;)V
    .locals 6

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceiveForAll(Landroid/content/Context;Landroid/content/Intent;)V

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_SEPARATION:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/TouchSeparation;->getInstance()Lcom/android/server/ssrm/TouchSeparation;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lcom/android/server/ssrm/TouchSeparation;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/ssrm/SortingMachine;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onBootCompleted()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onBatteryChanged(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v3, "android.intent.action.USB_CHARGING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onUsbCharged(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onPowerConnected()V

    goto :goto_0

    :cond_5
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onPowerDisconnected()V

    goto :goto_0

    :cond_6
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onScreenOn()V

    goto :goto_0

    :cond_7
    const-string v3, "com.samsung.cover.OPEN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onClearCoverOn(Landroid/content/Intent;)V

    goto :goto_0

    :cond_8
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onScreenOff()V

    goto :goto_0

    :cond_9
    const-string v3, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onSsrmIntentReceived(Landroid/content/Intent;)V

    goto :goto_0

    :cond_b
    const-string v3, "ResponseAxT9Info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->onSipChanged(Landroid/content/Intent;)V

    goto :goto_0

    :cond_c
    const-string v3, "android.intent.action.SECURE_PLAYBACK_START"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onSecurePlaybackStarted()V

    goto :goto_0

    :cond_d
    const-string v3, "android.intent.action.SECURE_PLAYBACK_STOP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onSecurePlaybackStopped()V

    goto/16 :goto_0

    :cond_e
    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-direct {p0, v1}, Lcom/android/server/ssrm/Monitor;->onTetheringChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_f
    const-string v3, "com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "sec_container_1.com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->onPolarisChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->onDockConnected(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    const-string v3, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    const-string v3, "START"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/ssrm/Monitor;->onNetworkBoosterEnabled(Z)V

    goto/16 :goto_0

    :cond_14
    const-string v3, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v3, :cond_1

    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.EXTRA_USER_HANDLE:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x64

    if-eq v2, v3, :cond_15

    const/16 v3, 0x65

    if-ne v2, v3, :cond_16

    :cond_15
    const/4 v3, 0x1

    :goto_1
    sput-boolean v3, Lcom/android/server/ssrm/DeviceStatus;->sKnoxMode:Z

    goto/16 :goto_0

    :cond_16
    const/4 v3, 0x0

    goto :goto_1
.end method

.method onSipChanged(Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onSIPIntentReceived:: SIP visility was updated more than two times in 100ms."

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/Monitor$25;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$25;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method registerCommands()V
    .locals 3

    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "TYPE_WINDOW_ORIENTATION"

    new-instance v2, Lcom/android/server/ssrm/Monitor$27;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$27;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "MULTIVERSE_FINGER_HOVER"

    new-instance v2, Lcom/android/server/ssrm/Monitor$28;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$28;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "MULTIVERSE_SIDE_KEY"

    new-instance v2, Lcom/android/server/ssrm/Monitor$29;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$29;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "CAMERA_SIDE_KEY"

    new-instance v2, Lcom/android/server/ssrm/Monitor$30;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$30;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "SBROWSER_PAGE_LOADING"

    new-instance v2, Lcom/android/server/ssrm/Monitor$31;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$31;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "SBROWSER_DASH_MODE"

    new-instance v2, Lcom/android/server/ssrm/Monitor$32;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$32;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "REQ_DROP_CACHE"

    new-instance v2, Lcom/android/server/ssrm/Monitor$33;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$33;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "BUS_DCVS_GOVERNOR"

    new-instance v2, Lcom/android/server/ssrm/Monitor$34;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$34;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "GENERAL_SHELL"

    new-instance v2, Lcom/android/server/ssrm/Monitor$35;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$35;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerIntentFilters()V
    .locals 19

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USB_CHARGING"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SECURE_PLAYBACK_START"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SECURE_PLAYBACK_STOP"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.EMERGENCY_MODE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.POWER_SAVING_MODE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.ULTRA_POWER_SAVING_MODE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v13, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "sec_container_1.com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method signal(Lcom/android/server/ssrm/settings/Condition;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->isSignaled(Lcom/android/server/ssrm/settings/Condition;)Z

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/ssrm/settings/Condition;->signal(Z)V

    :cond_0
    return-void
.end method

.method updateFallbackTime(Z)V
    .locals 6

    const-string v0, "hf"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jf"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jm"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_5

    const-string v0, "debug.mdpcomp.idletime"

    const-string v1, "5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIP_ARM_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    const v3, 0xfa7d0

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_3
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v0, "debug.mdpcomp.idletime"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1
.end method
