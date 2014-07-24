.class public Lcom/android/server/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;,
        Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;,
        Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field private final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

.field private final ANIMATION_DEBOUNCE_MILLIS:J

.field private final ANIMATION_MAX_COUNT:F

.field private final BROWSER_NAMES:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

.field private final FOREGROUND_THREAD_DELAY_MILLIS:J

.field private final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_READ_DELAY:I

.field private final MAX_RGB_SENSOR_COUNT:I

.field private final MSG_ANIMATE_SCR_RGB:I

.field private final MSG_DISABLE_RGB_SENSOR:I

.field private final MSG_ENABLE_RGB_SENSOR:I

.field private final MSG_SEND_RGB_AVERAGE:I

.field private final NUMBER_COEFFICIENT_VALUE:I

.field private final RGB_DEBOUNCE_MILLIS:J

.field private final RGB_FLOAT_MAX:F

.field private final RGB_INTEGER_MAX:I

.field private final SBROWSER_NAME:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCR_FILE_PATH:Ljava/lang/String;

.field private final SETUP_WIZARD_NAME:Ljava/lang/String;

.field private final SSRM_INTENT_MDNIE_SETTING:Ljava/lang/String;

.field private final TEST_RGB_EXPONENTIAL:I

.field private isLockScreenOn:Z

.field private mAceessibilityEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAdaptiveDisplayColorServiceEnable:Z

.field private mAutoModeEnabled:Z

.field private mAvgB:F

.field private mAvgG:F

.field private mAvgR:F

.field private mBrowserScenarioEnabled:Z

.field private mCoefficientValueArray:[F

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCountAnimationValue:I

.field private mCountSensorValue:I

.field private mDefaultAdjustB:I

.field private mDefaultAdjustG:I

.field private mDefaultAdjustR:I

.field private mDefaultB:I

.field private mDefaultEbookB:I

.field private mDefaultEbookG:I

.field private mDefaultEbookR:I

.field private mDefaultG:I

.field private mDefaultR:I

.field private mEbookAdjustB:I

.field private mEbookAdjustG:I

.field private mEbookAdjustR:I

.field private mEbookScenarioEnabled:Z

.field private mEmergencyModeEnabled:Z

.field private mFinalIntAvgB:I

.field private mFinalIntAvgG:I

.field private mFinalIntAvgR:I

.field private mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

.field private mForegroundThreadWork:Z

.field private mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsFirstStart:Z

.field private mLastAvgB:F

.field private mLastAvgG:F

.field private mLastAvgR:F

.field private mLastChangedRgbTime:J

.field private mLightSensorB:I

.field private mLightSensorDelay:I

.field private mLightSensorG:I

.field private mLightSensorR:I

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mPrevContorlZone:I

.field private mPrevIntAvgB:I

.field private mPrevIntAvgG:I

.field private mPrevIntAvgR:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mReadingModeEnabled:Z

.field private mRgbSensor:Landroid/hardware/Sensor;

.field private mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field private mRgbThreshold:F

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValueValid:Z

.field private mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

.field private mSumLux:I

.field private mTempIntAvgB:I

.field private mTempIntAvgG:I

.field private mTempIntAvgR:I

.field private mTestScrB:I

.field private mTestScrG:I

.field private mTestScrR:I

.field private mThreadEnableCondition:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mValidZone:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->RGB_INTEGER_MAX:I

    const/high16 v0, 0x437f

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->RGB_FLOAT_MAX:F

    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_SEND_RGB_AVERAGE:I

    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_ENABLE_RGB_SENSOR:I

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_DISABLE_RGB_SENSOR:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MSG_ANIMATE_SCR_RGB:I

    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->ANIMATION_MAX_COUNT:F

    const v0, 0x989680

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->TEST_RGB_EXPONENTIAL:I

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->LIGHT_SENSOR_READ_DELAY:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->MAX_RGB_SENSOR_COUNT:I

    const/16 v0, 0x24

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->NUMBER_COEFFICIENT_VALUE:I

    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->RGB_DEBOUNCE_MILLIS:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->ANIMATION_DEBOUNCE_MILLIS:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->FOREGROUND_THREAD_DELAY_MILLIS:J

    const-string v0, "screen_mode_automatic_setting"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

    const-string v0, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

    const-string v0, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SSRM_INTENT_MDNIE_SETTING:Ljava/lang/String;

    const-string v0, "/sys/class/mdnie/mdnie/sensorRGB"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SCR_FILE_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/sensors/light_sensor/raw_data"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    const-string v0, "com.sec.android.app.SecSetupWizard"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SETUP_WIZARD_NAME:Ljava/lang/String;

    const-string v0, "com.sec.android.app.sbrowser"

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->SBROWSER_NAME:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.sbrowser"

    aput-object v1, v0, v2

    const-string v1, "com.android.chrome"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAceessibilityEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForegroundThreadWork:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mReadingModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrR:I

    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrG:I

    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrB:I

    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    iput v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustR:I

    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustG:I

    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustB:I

    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    iput v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AdaptiveDisplayColorService$1;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AdaptiveDisplayColorService$2;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/AdaptiveDisplayColorService;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/AdaptiveDisplayColorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/AdaptiveDisplayColorService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return p1
.end method

.method static synthetic access$1610(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 2

    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->getRgbFromLightSensor()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/AdaptiveDisplayColorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorR:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->boot_complete()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorG:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorB:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/AdaptiveDisplayColorService;JIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/AdaptiveDisplayColorService;->handleRgbSensorEvent(JIIII)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/AdaptiveDisplayColorService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->animateScrRGB()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->emergency_mode_changed_intent()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->receive_ebookmode_intent()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/AdaptiveDisplayColorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    return v0
.end method

.method private animateScrRGB()V
    .locals 14

    const/4 v13, 0x3

    const/high16 v12, 0x41a0

    const/16 v11, 0xff

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v4

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    if-lez v4, :cond_1

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_2

    iget v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    if-lez v3, :cond_1

    if-gt v3, v11, :cond_1

    if-lez v1, :cond_1

    if-gt v1, v11, :cond_1

    if-lez v0, :cond_1

    if-gt v0, v11, :cond_1

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v9, :cond_0

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v9, :cond_0

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v9, :cond_1

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v9, v6}, Lcom/android/server/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    sub-int v2, v9, v10

    int-to-float v9, v2

    div-float/2addr v9, v12

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v9, v10

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    float-to-int v10, v5

    add-int v3, v9, v10

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    sub-int v2, v9, v10

    int-to-float v9, v2

    div-float/2addr v9, v12

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v9, v10

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    float-to-int v10, v5

    add-int v1, v9, v10

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    sub-int v2, v9, v10

    int-to-float v9, v2

    div-float/2addr v9, v12

    iget v10, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v9, v10

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    float-to-int v10, v5

    add-int v0, v9, v10

    if-lez v3, :cond_4

    if-gt v3, v11, :cond_4

    if-lez v1, :cond_4

    if-gt v1, v11, :cond_4

    if-lez v0, :cond_4

    if-gt v0, v11, :cond_4

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v9, :cond_3

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v9, :cond_3

    iget v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v9, :cond_4

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v9, v6}, Lcom/android/server/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v9, v13}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v10, 0xfa

    add-long/2addr v10, v7

    invoke-virtual {v9, v13, v10, v11}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method private boot_complete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    add-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    add-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    iget v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    add-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->setting_is_changed()V

    return-void
.end method

.method private emergency_mode_changed_intent()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v3, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->interrupt()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v3, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V

    iput-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->start()V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private enableRgbSensor(Z)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AdaptiveDisplayColorService"

    const-string v3, "StatFs returns null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "AdaptiveDisplayColorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRgbSensor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    iput v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v7}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteString : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteString : file not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private getRgbFromLightSensor()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "/sys/class/sensors/light_sensor/raw_data"

    invoke-direct {p0, v3}, Lcom/android/server/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorR:I

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorG:I

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorB:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x80

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/16 v0, 0x80

    new-array v1, v11, [B

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v11, :cond_0

    aput-byte v10, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eqz v7, :cond_1

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v9, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    move-object v8, v9

    :cond_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_2
    if-eqz v6, :cond_5

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    :cond_3
    :goto_1
    return-object v8

    :catch_0
    move-exception v3

    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    goto :goto_1

    :catch_1
    move-exception v10

    :goto_2
    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v2

    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v10, "AdaptiveDisplayColorService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v3

    const-string v10, "AdaptiveDisplayColorService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_5
    throw v10

    :catch_5
    move-exception v3

    const-string v11, "AdaptiveDisplayColorService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v10

    move-object v5, v6

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v5, v6

    goto :goto_3

    :catch_7
    move-exception v10

    move-object v5, v6

    goto :goto_2

    :cond_5
    move-object v5, v6

    goto :goto_1
.end method

.method private handleRgbSensorEvent(JIIII)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    iget v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iput-wide p1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastChangedRgbTime:J

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevContorlZone:I

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    :cond_0
    if-lez v0, :cond_1

    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/server/AdaptiveDisplayColorService;->setAverageValue(IIII)V

    :cond_1
    return-void
.end method

.method private initRgbAverage()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    return-void
.end method

.method private isInBoundary()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private max_num(II)I
    .locals 0

    if-lt p1, p2, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private min_num(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private monitorForegroundBrowser(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    if-eqz v4, :cond_2

    const-string v3, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-eqz v4, :cond_3

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeReadingMode(I)Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v4, :cond_4

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_9

    iget-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-nez v4, :cond_1

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeReadingMode(I)Z

    iput-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iget-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v4, :cond_8

    :cond_7
    move v2, v3

    :cond_8
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAdaptiveDisplayColorServiceEnable:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_0

    :cond_9
    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeReadingMode(I)Z

    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_0
.end method

.method private receive_ebookmode_intent()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_0
.end method

.method private receive_screen_off_intent()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v0}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v0}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->interrupt()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private receive_screen_on_intent()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    iget-boolean v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V

    iput-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v0}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->start()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private sendForcedRGB(IIII)V
    .locals 3

    add-int v1, p1, p2

    add-int v0, v1, p3

    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    int-to-float v1, p3

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    iput p4, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method private sendRgbAverage()V
    .locals 31

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    move/from16 v28, v0

    if-lez v28, :cond_7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    move/from16 v28, v0

    int-to-float v0, v8

    move/from16 v29, v0

    div-float v15, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    move/from16 v28, v0

    int-to-float v0, v8

    move/from16 v29, v0

    div-float v10, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    move/from16 v28, v0

    int-to-float v0, v8

    move/from16 v29, v0

    div-float v7, v28, v29

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    move/from16 v28, v0

    div-int v6, v28, v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    const-string v28, "AdaptiveDisplayColorService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AvgR : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", AvgG : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", AvgB : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", avg lux : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    :try_start_0
    const-string v28, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v28, 0x0

    aget-object v28, v20, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    const/16 v28, 0x1

    aget-object v28, v20, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    const/16 v28, 0x2

    aget-object v28, v20, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    :goto_2
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    :cond_3
    move v13, v6

    const/4 v12, -0x1

    const/16 v28, 0x4

    move/from16 v0, v28

    if-ge v13, v0, :cond_b

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v19, v0

    :goto_3
    if-eqz v22, :cond_6

    if-eqz v21, :cond_6

    if-eqz v19, :cond_6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mCountAnimationValue:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    const-string v28, "AdaptiveDisplayColorService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "scrR : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", scrG : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", scrB : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgR:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgG:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mTempIntAvgB:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AdaptiveDisplayColorService;->animateScrRGB()V

    :cond_6
    return-void

    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    const/16 v28, 0xff

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_1

    :catchall_0
    move-exception v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    const/16 v29, 0xff

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_8
    throw v28

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v19, v0

    goto/16 :goto_3

    :cond_b
    :goto_4
    if-eqz v13, :cond_c

    shr-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v28, v0

    if-nez v28, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_13

    :cond_d
    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    :goto_5
    const v28, 0x4b189680

    mul-float v28, v28, v15

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrR:I

    move/from16 v29, v0

    div-int v26, v28, v29

    const v28, 0x4b189680

    mul-float v28, v28, v10

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrG:I

    move/from16 v29, v0

    div-int v25, v28, v29

    const v28, 0x4b189680

    mul-float v28, v28, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrB:I

    move/from16 v29, v0

    div-int v24, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v14

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v14

    move/from16 v0, v26

    if-ne v14, v0, :cond_f

    const/16 v22, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x4

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x5

    aget v29, v29, v30

    add-float v23, v28, v29

    const/high16 v28, 0x437f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x6

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x7

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x8

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x9

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xa

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xb

    aget v29, v29, v30

    add-float v23, v28, v29

    const/high16 v28, 0x437f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v19, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    :goto_6
    add-int v18, v22, v5

    add-int v17, v21, v4

    add-int v16, v19, v3

    const/16 v28, 0x190

    move/from16 v0, v28

    if-ge v6, v0, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_11

    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v18

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v22, v28, 0x8

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v17

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v21, v28, 0x8

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v16

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v19, v28, 0x8

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustR:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustG:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultAdjustB:I

    goto/16 :goto_5

    :cond_f
    move/from16 v0, v24

    if-ne v14, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0xc

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xd

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xe

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0xf

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x10

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x11

    aget v29, v29, v30

    add-float v23, v28, v29

    const/high16 v28, 0x437f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x12

    aget v28, v28, v29

    mul-float v28, v28, v10

    mul-float v28, v28, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x13

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x14

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x15

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x16

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x17

    aget v29, v29, v30

    add-float v23, v28, v29

    const/high16 v28, 0x437f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    const/16 v19, 0xff

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x18

    aget v28, v28, v29

    mul-float v28, v28, v15

    mul-float v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x19

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1a

    aget v29, v29, v30

    mul-float v29, v29, v15

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1b

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1c

    aget v29, v29, v30

    mul-float v29, v29, v15

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1d

    aget v29, v29, v30

    add-float v23, v28, v29

    const/high16 v28, 0x437f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    const/16 v21, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v28, v0

    const/16 v29, 0x1e

    aget v28, v28, v29

    mul-float v28, v28, v10

    mul-float v28, v28, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x1f

    aget v29, v29, v30

    mul-float v29, v29, v7

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x20

    aget v29, v29, v30

    mul-float v29, v29, v10

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x21

    aget v29, v29, v30

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x22

    aget v29, v29, v30

    mul-float v29, v29, v10

    mul-float v29, v29, v7

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v29, v0

    const/16 v30, 0x23

    aget v29, v29, v30

    add-float v23, v28, v29

    const/high16 v28, 0x437f

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v19, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    goto/16 :goto_6

    :cond_11
    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v18

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v22, v28, 0x8

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v22

    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v17

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v21, v28, 0x8

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v21

    rsub-int/lit8 v28, v12, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    mul-int v29, v12, v16

    add-int v28, v28, v29

    add-int/lit8 v28, v28, 0x4

    div-int/lit8 v19, v28, 0x8

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->max_num(II)I

    move-result v28

    const/16 v29, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/AdaptiveDisplayColorService;->min_num(II)I

    move-result v19

    goto/16 :goto_3

    :cond_12
    move/from16 v22, v18

    move/from16 v21, v17

    move/from16 v19, v16

    goto/16 :goto_3

    :cond_13
    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    goto/16 :goto_3
.end method

.method private setAverageValue(IIII)V
    .locals 10

    const/4 v9, 0x0

    add-int v6, p1, p2

    add-int v3, v6, p3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    :cond_0
    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    add-float/2addr v6, v2

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    add-float/2addr v6, v1

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    add-int/2addr v6, p4

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSumLux:I

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgR:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgR:F

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgG:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgG:F

    iget v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAvgB:F

    iget v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mLastAvgB:F

    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    :cond_1
    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    if-nez v6, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mValidZone:Z

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v7, 0x1770

    add-long/2addr v7, v4

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/server/AdaptiveDisplayColorService;->initRgbAverage()V

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v9}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method private setting_is_changed()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_curtain"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    const-string v1, "color_blind"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEmergencyModeEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v1, :cond_5

    :goto_4
    iput-boolean v2, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    iget-boolean v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V

    iput-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->start()V

    :cond_0
    :goto_5
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-virtual {v1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->interrupt()V

    goto :goto_5
.end method


# virtual methods
.method systemReady()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110080

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    iget-boolean v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v6, :cond_0

    new-instance v6, Landroid/hardware/SystemSensorManager;

    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v8}, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    new-instance v6, Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mHandler:Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-direct {v6, p0, v7}, Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "lcd_curtain"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v4, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v6, "high_contrast"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v4, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v6, "color_blind"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v4, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v6, "screen_mode_automatic_setting"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v4, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    aget v6, v0, v9

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustR:I

    aget v6, v0, v10

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustG:I

    aget v6, v0, v11

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mEbookAdjustB:I

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    aget v6, v5, v9

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrR:I

    aget v6, v5, v10

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrG:I

    aget v6, v5, v11

    iput v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mTestScrB:I

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x24

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/4 v2, 0x0

    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget-object v7, v1, v2

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
