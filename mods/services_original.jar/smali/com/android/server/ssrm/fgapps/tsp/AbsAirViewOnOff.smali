.class public abstract Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "AbsAirViewOnOff.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;,
        Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;,
        Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "SSRMv2:TSP:AirViewOnOff"

.field public static final WINDOW_ORIENTATION_LANDSCAPE:I = 0x2

.field public static final WINDOW_ORIENTATION_NONE:I = 0x0

.field public static final WINDOW_ORIENTATION_PORTRAIT:I = 0x1

.field private static mInstance:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;


# instance fields
.field final AIR_VIEW_TAG_NAME:Ljava/lang/String;

.field FPS_SYSFS_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final MSG_SCREEN_ON_UPDATE:I

.field final TSP_PATH:Ljava/lang/String;

.field final TSP_RESULT_PATH:Ljava/lang/String;

.field final TYPE_FINGER_ALL_OFF:I

.field final TYPE_FINGER_ALL_ON:I

.field final TYPE_FINGER_HANDGRIP_ON:I

.field final TYPE_FINGER_HOVER_ON:I

.field mAirViewOnPackagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

.field mForceUpdateSysfs:Z

.field mForegroundPackageName:Ljava/lang/String;

.field mFpsSysfsTableInit:Z

.field mHandler:Landroid/os/Handler;

.field mIsAirViewAppOnFg:Z

.field mLastAirViewStatus:I

.field mLastFps:I

.field mLastHandGripEnable:I

.field mLastHoverEnable:I

.field mSettingsAirView:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

.field mTSPSysfsWritable:Z

.field mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->MSG_SCREEN_ON_UPDATE:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->TYPE_FINGER_ALL_OFF:I

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->TYPE_FINGER_HOVER_ON:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->TYPE_FINGER_HANDGRIP_ON:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->TYPE_FINGER_ALL_ON:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mUserId:I

    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastAirViewStatus:I

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastFps:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHoverEnable:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHandGripEnable:I

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mIsAirViewAppOnFg:Z

    const-string v0, "com.sec.android.airview.HOVER"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->AIR_VIEW_TAG_NAME:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mFpsSysfsTableInit:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v0, "/sys/class/sec/tsp/cmd"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->TSP_PATH:Ljava/lang/String;

    const-string v0, "/sys/class/sec/tsp/cmd_result"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->TSP_RESULT_PATH:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mTSPSysfsWritable:Z

    new-instance v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->checkTSPCmdSysfs()V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->registerWhiteList()V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->createDynamicFPSTable()V

    new-instance v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$1;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$1;-><init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
    .locals 3

    const-class v1, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->isPenHoverSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->isFingerHoverSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SSRMv2:TSP:AirViewOnOff"

    const-string v2, "getInstance:: AirViewOnOffForDual"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffForDual;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffForDual;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->isFingerHoverSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SSRMv2:TSP:AirViewOnOff"

    const-string v2, "getInstance:: AirViewOnOff"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOff;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    const-string v0, "SSRMv2:TSP:AirViewOnOff"

    const-string v2, "getInstance:: AirViewOnOffDummy"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffDummy;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/tsp/AirViewOnOffDummy;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mInstance:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static isFingerHoverSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->COMMON_GESTURE_WITH_FINGERHOVER:Z

    return v0
.end method

.method public static isPenHoverSupported()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/sec_epen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected abstract calculateAirViewStatus(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;)I
.end method

.method checkFPS(Ljava/lang/String;I)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SSRMv2:TSP:AirViewOnOff"

    const-string v3, "FPS found in look up"

    invoke-static {v1, v3}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "SSRMv2:TSP:AirViewOnOff"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS found in look up sysfps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method checkTSPCmdSysfs()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mTSPSysfsWritable:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method createDynamicFPSTable()V
    .locals 8

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v3, "SSRMv2:TSP:AirViewOnOff"

    const-string/jumbo v4, "updating lookup hash"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/ssrm/Feature;->SIOP_FILENAME:Ljava/lang/String;

    const-string v4, "j6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v3, :cond_0

    const-string v0, "/sys/class/lcd/panel/fps_change"

    const-string v1, "/sys/class/graphics/fb0/lcdfreq/level"

    sget-object v3, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v3}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->getSysfsPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "60hz, div=3"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "40hz, div=5"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "48hz, div=8"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mFpsSysfsTableInit:Z

    goto :goto_0

    :cond_2
    const-string v3, "/sys/class/lcd/panel/fps_change"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "60"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "42"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->FPS_SYSFS_TABLE:Ljava/util/HashMap;

    const-string v4, "51"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mFpsSysfsTableInit:Z

    goto :goto_0
.end method

.method disableFingerHover()V
    .locals 2

    iget v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHoverEnable:I

    if-eqz v0, :cond_0

    const-string v0, "hover_enable,0"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SSRMv2:TSP:AirViewOnOff"

    const-string v1, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHoverEnable:I

    :cond_0
    return-void
.end method

.method disableHandGrip()V
    .locals 2

    iget v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHandGripEnable:I

    if-eqz v0, :cond_0

    const-string v0, "handgrip_enable,0"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SSRMv2:TSP:AirViewOnOff"

    const-string v1, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHandGripEnable:I

    :cond_0
    return-void
.end method

.method protected discoverAndRegisterPackagesWithFingerHoverIntentFilter(Landroid/content/Context;)V
    .locals 4

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$3;-><init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method enableFingerHover()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHoverEnable:I

    if-eq v0, v2, :cond_0

    const-string v0, "hover_enable,1"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SSRMv2:TSP:AirViewOnOff"

    const-string v1, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHoverEnable:I

    :cond_0
    return-void
.end method

.method enableHandGrip()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHandGripEnable:I

    if-eq v0, v2, :cond_0

    const-string v0, "handgrip_enable,1"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SSRMv2:TSP:AirViewOnOff"

    const-string v1, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHandGripEnable:I

    :cond_0
    return-void
.end method

.method public onFgAppChanged()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mIsAirViewAppOnFg:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mIsAirViewAppOnFg:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    :cond_1
    const-string v1, "com.sec.android.app.launcher"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setPhoneDialerVisible(Z)V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setContactDialerVisible(Z)V

    :cond_2
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method public onFrameRateUpdate(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;-><init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 12

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    iget-boolean v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mTSPSysfsWritable:Z

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ResponseAxT9Info"

    const-string v0, "AxT9IME.isVisibleWindow"

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v9, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setStatusBar(Z)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto :goto_0

    :cond_2
    const-string v9, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setStatusBar(Z)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto :goto_0

    :cond_3
    const-string v9, "com.samsung.cover.OPEN"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const-string v9, "coverOpen"

    const/4 v11, 0x1

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setClearCover(Z)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    const-string v9, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const-string v10, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setMultiWindow(Z)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto :goto_0

    :cond_6
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v9, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    invoke-direct {v9, p0, p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;-><init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    const-string v9, "keyguard"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setLockScreen(Z)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->discoverAndRegisterPackagesWithFingerHoverIntentFilter(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updatePackagesWithFingerHoverIntentFilter(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHoverEnable:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastHandGripEnable:I

    goto/16 :goto_0

    :cond_a
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "SSRMv2:TSP:AirViewOnOff"

    const-string v10, "onReceive:: Intent.ACTION_SCREEN_ON"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "keyguard"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setLockScreen(Z)V

    iget v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastAirViewStatus:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_0

    :cond_c
    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/4 v9, 0x1

    iput v9, v5, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x320

    invoke-virtual {v9, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_d
    const-string v9, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "SSRMv2:TSP:AirViewOnOff"

    const-string v10, "onReceive:: Intent.ACTION_USER_PRESENT"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setLockScreen(Z)V

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setPatternLockVisible(Z)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_0

    :cond_e
    const-string v9, "ResponseAxT9Info"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const-string v10, "AxT9IME.isVisibleWindow"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setSIP(Z)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_0

    :cond_f
    const-string v9, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    :cond_10
    const-string v9, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "SSRM_STATUS_VALUE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "PackageName"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "Browser_showMain"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setBrowserMainPage(Z)V

    :cond_11
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_0

    :cond_12
    const-string v9, "Phone_dialer"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "SSRMv2:TSP:AirViewOnOff"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Phone_dialer = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", packageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "com.android.contacts"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setContactDialerVisible(Z)V

    goto :goto_2

    :cond_13
    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setPhoneDialerVisible(Z)V

    goto :goto_2

    :cond_14
    const-string v9, "Lockscreen_patternLock"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "SSRMv2:TSP:AirViewOnOff"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Lockscreen_patternLock = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setPatternLockVisible(Z)V

    goto :goto_2

    :cond_15
    const-string v9, "com.samsung.pen.INSERT"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    const-string v9, "penInsert"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v9, v3}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setPenAttached(Z)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_0

    :cond_16
    const-string v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "SSRMv2:TSP:AirViewOnOff"

    const-string v10, "ACTION_USER_SWITCHED"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "android.intent.extra.user_handle"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mUserId:I

    iget-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    invoke-virtual {v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->deregisterObservers()V

    new-instance v9, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;-><init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto/16 :goto_0
.end method

.method protected registerWhiteList()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Email"

    const-string v2, "com.android.email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Gallery"

    const-string v2, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Messaging"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music"

    const-string v2, "com.samsung.music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music Player"

    const-string v2, "com.sec.android.app.music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "My files"

    const-string v2, "com.sec.android.app.myfiles"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "New Internet"

    const-string v2, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S Memo"

    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S-Planner"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Story ablum"

    const-string v2, "com.samsung.android.app.episodes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video"

    const-string v2, "com.samsung.everglades.video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video (hidden)"

    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Allshare play"

    const-string v2, "com.sec.pcw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "ChatON"

    const-string v2, "com.sec.chaton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "ChatON V"

    const-string v2, "com.coolots.chaton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Clock Package"

    const-string v2, "com.sec.android.app.clockpackage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Group play"

    const-string v2, "com.samsung.groupcast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Kids mode"

    const-string v2, "com.samsung.kidsmode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Kies cast"

    const-string v2, "com.sec.android.app.podcast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Prism store"

    const-string v2, "com.sec.everglades"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "S health"

    const-string v2, "com.sec.android.app.shealth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Video editor"

    const-string v2, "com.sec.android.app.ve"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Voice"

    const-string v2, "com.vlingo.midas"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Voice recorder"

    const-string v2, "com.sec.android.app.voicerecorder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "color blind"

    const-string v2, "com.samsung.android.app.colorblind"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Remote view finder"

    const-string v2, "com.sec.android.app.remoteviewfinder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "SamsungApps"

    const-string v2, "com.sec.android.app.samsungapps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "sbrowsertry"

    const-string v2, "com.sec.android.app.sbrowsertry"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music Live Share"

    const-string v2, "com.sec.android.app.mediasync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Books"

    const-string v2, "com.sec.readershub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Learning"

    const-string v2, "com.sec.msc.learninghub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Music 3.1"

    const-string v2, "com.samsung.musichub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "Games"

    const-string v2, "com.sec.android.app.gamehub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    const-string v1, "WatchOn"

    const-string v2, "com.sec.watchon.phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method declared-synchronized sendHoverCommand(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->disableFingerHover()V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->disableHandGrip()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->enableFingerHover()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->enableHandGrip()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->enableFingerHover()V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->enableHandGrip()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setMultiverseEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setGripVolumeDown(Z)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    return-void
.end method

.method public setWindowOrientation(I)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setLandscape(Z)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->setLandscape(Z)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto :goto_0
.end method

.method updateAirViewStatus()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    if-nez v1, :cond_1

    const-string v1, "SSRMv2:TSP:AirViewOnOff"

    const-string/jumbo v2, "updateAirViewStatus:: mSettingsAirView or mSettingsAirView is null."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;->printDebug()V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->printDebug()V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mDevice:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->calculateAirViewStatus(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$DeviceInfo;Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;)I

    move-result v0

    iget v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastAirViewStatus:I

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->sendHoverCommand(I)V

    iput v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastAirViewStatus:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    goto :goto_0
.end method

.method updateAirViewStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mLastFps:I

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    return-void
.end method

.method protected updatePackagesWithFingerHoverIntentFilter(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/16 v11, 0x200

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aget-object v0, v5, v8

    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_PACKAGE_ADDED :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    const-string v9, "AirView Tag Scan Start (Install)"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.android.airview.HOVER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added ris count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added package intent for :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added HashMap size Before Adding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added HashMap size after Adding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    const-string v9, "AirView Tag Scan End (Install)"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    const-string v9, "AirView Provider Scan Start (Install)"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    new-instance v3, Landroid/content/Intent;

    sget-object v8, Lcom/android/server/ssrm/Feature;->AIR_VIEW_PROVIDER_NAME:Ljava/lang/String;

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added provider package intent for :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added provider HashMap size Before Adding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirView added provider HashMap size after Adding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mAirViewOnPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v8, "SSRMv2:TSP:AirViewOnOff"

    const-string v9, "AirView Provider Scan End (Install)"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SSRMv2:TSP:AirViewOnOff"

    invoke-static {v0, p2, p1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
