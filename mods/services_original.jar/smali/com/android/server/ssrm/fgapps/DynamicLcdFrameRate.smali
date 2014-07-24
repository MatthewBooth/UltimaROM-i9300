.class public final Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "DynamicLcdFrameRate.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;,
        Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field static mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field public static sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

.field static sMultiWindowRunning:Z

.field public static sPermanentAppPID:I


# instance fields
.field final LCD_FPS_HIGH:I

.field final LCD_FPS_IDLE:I

.field final LCD_FPS_LOW:I

.field final LCD_FPS_NONE:I

.field mBrowserIntentLowFps:Z

.field mBrowserLowFps:Z

.field mDynamicFpsPackage:Z

.field mFpsFullScreenMode:Z

.field mPrevBrowserLowFps:Z

.field mPrevFpsFullScreen:Z

.field mPrevFpsPackage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SSRMv2:DynamicLcdFrameRate"

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    sput-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sPermanentAppPID:I

    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sMultiWindowRunning:Z

    sput-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_HIGH:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_LOW:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_IDLE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_NONE:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->isFPSValid(I)Z

    move-result v0

    return v0
.end method

.method private isFPSValid(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static onFullScreenStatusChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mContext:Landroid/content/Context;

    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0, p0}, Landroid/os/CustomFrequencyManager;->onTopAppChanged(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method createDynamicLCDFPS()Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;
    .locals 6

    const/4 v2, 0x0

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v0, "/sys/class/lcd/panel/fps_change"

    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/class/lcd/panel/fps_change"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;-><init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V

    const-string v5, "/sys/class/lcd/panel/fps_change"

    invoke-virtual {v2, v5}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->setSysfsPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "/sys/class/graphics/fb0/lcdfreq/level"

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;-><init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V

    const-string v5, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-virtual {v2, v5}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->setSysfsPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBootComplete()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->createDynamicLCDFPS()Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->initialize()V

    :cond_0
    return-void
.end method

.method public onFgAppChanged()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    const-string v2, "com.google.android.youtube"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.chrome"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    if-eq v2, v3, :cond_6

    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    goto :goto_1

    :cond_5
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    :cond_7
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 8

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    const-string v0, "com.sec.android.intent.action.SSRM_REQUEST"

    const-string v1, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v6}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->resetFPS()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "1"

    const-string/jumbo v7, "sys.multiwindow.running"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sMultiWindowRunning:Z

    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v6}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto :goto_0

    :cond_2
    const-string v7, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    const-string v7, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v7, "PID"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    const-string v7, "Camera_preview"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "MoviePlayer_play"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "Navigation_show"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "ChatOnV_vtCall"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "GroupPlay_fpsChange"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "Phone_vtCall"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_4
    if-eqz v5, :cond_5

    :goto_1
    sput v3, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sPermanentAppPID:I

    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v6}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto/16 :goto_0

    :cond_5
    move v3, v6

    goto :goto_1
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statusName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statusValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->onFullScreenStatusChanged(Z)V

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "BrowserLowFps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto :goto_0
.end method
