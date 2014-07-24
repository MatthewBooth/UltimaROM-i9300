.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;,
        Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
    }
.end annotation


# static fields
.field private static BOOSTING_TIMEOUT:I = 0x0

.field private static final DEBUG:Z = true

.field private static final MSG_DISABLE_PARTIAL_DISP:I = 0x7

.field private static final MSG_ENABLE_PARTIAL_DISP:I = 0x6

.field private static final MSG_HIDE_SVIEW_COVER:I = 0x1

.field private static final MSG_SEND_COVER_STATE:I = 0x0

.field private static final MSG_SHOW_SVIEW_COVER:I = 0x2

.field private static final MSG_START_FREEZE_SCREEN:I = 0x4

.field private static final MSG_STOP_FREEZE_SCREEN:I = 0x5

.field private static final MSG_UPDATE_SVIEW_COVER_STATE:I = 0x3

.field private static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field private static final PATH_FILE_COVER_TYPE:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_id"

.field private static final PATH_FILE_COVER_VERIFY:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_verify_mac"

.field private static final PATH_FILE_PARTIAL_DISP:Ljava/lang/String; = "/sys/class/lcd/panel/partial_disp"

#the value of this static final field might be set in the static constructor
.field private static final SAFE_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CoverManager"

.field private static mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static sIsDeviceSupportVerityCover:Z

.field private static sIsDeviceSupportVerityCoverQueried:Z

.field private static sIsSupportFlipCover:Z

.field private static sIsSupportMiniSViewCoverTestMode:Z

.field private static sIsSupportSViewCover:Z

.field private static sIsSupportSViewCoverTestMode:Z

.field private static sIsSystemFeatureQueried:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDefaultCoverColor:I

.field private mDefaultCoverType:I

.field private mDefaultMiniSViewCoverHeight:I

.field private mDefaultMiniSViewCoverWidth:I

.field private mDefaultSViewCoverHeight:I

.field private mDefaultSViewCoverWidth:I

.field private final mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

.field private mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mIsCoverVerified:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

.field private mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

.field private mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mThread:Landroid/os/HandlerThread;

.field private mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportMiniSViewCoverTestMode:Z

    sput-object v3, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    sput-object v3, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    iput v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v1, Lcom/android/server/cover/CoverManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverManagerService$1;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updateSystemFeature(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "show sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "hide sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "update sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->initializeDefaultCoverState()V

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleSendCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleHideSViewCover()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleShowSViewCover()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleStartFreezeScreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleStopFreezeScreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/cover/CoverManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleSetPartialScreen(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/cover/CoverManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/cover/CoverManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private getDefaultTypeOfCover()I
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x63

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const-string v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v4, "tablet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_0

    :cond_4
    sget-boolean v4, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-nez v4, :cond_0

    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private getSupportSViewCoverHeight(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportSViewCoverWidth(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method private getValueFromSysFS(Ljava/lang/String;I)I
    .locals 9

    move v5, p2

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v6, 0xf

    :try_start_1
    new-array v0, v6, [C

    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x1

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v5

    :cond_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_1
    :goto_0
    return v5

    :catch_0
    move-exception v1

    :goto_1
    move v5, p2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_2
    move v5, p2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_4
    throw v6

    :catch_3
    move-exception v7

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method private handleHideSViewCover()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onSViewCoverHide()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method private handleSendCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    invoke-virtual {v1, p1}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->callback(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private declared-synchronized handleSetPartialScreen(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v2, "0 0"

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v3, "CoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameters="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/lcd/panel/partial_disp"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "CoverManager"

    const-string v4, "Failed to write partial_disp"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private handleShowSViewCover()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onSViewCoverShow()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method private handleStartFreezeScreen()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    const v2, 0x10a0001

    const/high16 v3, 0x10a

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->startFreezingScreen(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private handleStopFreezeScreen()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->stopFreezingScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    :cond_1
    new-instance v0, Lcom/android/server/cover/CoverManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$2;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private hideSViewCoverLocked()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "CoverManager"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private initializeDefaultCoverState()V
    .locals 5

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x10500fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    const v1, 0x10500ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    const v1, 0x1050100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    const v1, 0x1050101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->getDefaultTypeOfCover()I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    new-instance v1, Lcom/samsung/android/cover/CoverState;

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    iget v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverWidth(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-direct {p0, v4}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverHeight(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/cover/CoverState;-><init>(III)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method private isCoverVerfied()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    return v0
.end method

.method private isDeviceSupportCoverVerify()Z
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    if-nez v0, :cond_0

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    :goto_0
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    :cond_0
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    goto :goto_0
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMiniSViewCoverTestMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportMiniSViewCoverTestMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSViewCoverTestMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCPUBoostCover()V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v2, "KEYGUARD_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v8

    if-eqz v8, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v8, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v2, "KEYGUARD_CORE_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v0, v6

    if-lez v0, :cond_2

    aget v0, v6, v9

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_2
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    :try_start_1
    const-string v0, "CoverManager"

    const-string v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v7

    const-string v0, "CoverManager"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    const-string v0, "CoverManager"

    const-string v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private sendCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    const-string v1, "CoverManager"

    const-string v2, "sendCoverStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showSViewCoverLocked()V
    .locals 4

    const/4 v3, 0x2

    const-string v1, "CoverManager"

    const-string/jumbo v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateCoverPropertiesLocked(Z)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchStateLocked(Z)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    iget v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    iget v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverWidth(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverHeight(I)I

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/CoverManagerService;->updateCoverStateLocked(ZIIII)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchStateLocked(Z)V

    goto :goto_0
.end method

.method private updateCoverStateLocked(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/cover/CoverState;->updateCoverState(ZIIII)V

    return-void
.end method

.method private updateCoverSwitchStateLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    return-void
.end method

.method private updateCoverVerificationLocked(Z)V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v6, v1

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    if-eq v0, v6, :cond_1

    iput-boolean v6, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    if-nez v0, :cond_1

    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerificationLocked : Fail cover verification!! send default cover state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    iget v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/CoverManagerService;->updateCoverStateLocked(ZIIII)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0, p1}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->sendCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_3
    move v6, v4

    goto :goto_1

    :cond_4
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerificationLocked : This device is not support cover verification"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    goto :goto_0
.end method

.method private updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/os/PowerManager;->updateCoverState(Z)V

    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-eqz v2, :cond_4

    if-eq v1, v3, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/16 v2, 0x63

    if-ne v1, v2, :cond_4

    :cond_0
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1

    :cond_4
    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_1
.end method

.method private updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 2

    const-string v0, "CoverManager"

    const-string/jumbo v1, "updateSViewCoverLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-nez v0, :cond_0

    const-string v0, "CoverManager"

    const-string v1, "Not support S View cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0
.end method

.method private updateSViewCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    const-string v1, "CoverManager"

    const-string/jumbo v2, "updateSViewCoverStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateSystemFeature(Landroid/content/Context;)V
    .locals 2

    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    const-string v1, "com.sec.feature.cover.sview.testmode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    const-string v1, "com.sec.feature.cover.sview.mini.testmode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportMiniSViewCoverTestMode:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "Current Cover Manager state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " sIsSupportFlipCover="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " sIsSupportSViewCover="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, " isSViewCoverTestMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " isMiniSViewCoverTestMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, " mIsCoverVerified="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " isDeviceSupportCoverVerify()="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, " mDefaultCoverType="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mDefaultCoverColor="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, " mDefaultSViewCoverWidth="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mDefaultSViewCoverHeight="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mDefaultMiniSViewCoverWidth="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mDefaultMiniSViewCoverHeight="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live listeners ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v3

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 2

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallback : binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CoverManager"

    const-string v2, "registerCallback : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-boolean v4, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CoverManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterCallback : binder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v1

    :cond_2
    if-nez v2, :cond_3

    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterCallback : matching listener is NOT EXIST"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return v3

    :cond_3
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v2, :cond_5

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_5
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public updateCoverSwitchState(ZZ)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    if-nez p2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->performCPUBoostCover()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cover/CoverManagerService;->updateCoverVerificationLocked(Z)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isCoverVerfied()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverPropertiesLocked(Z)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->sendCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverSwitchState : switchState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", widthPixel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", heightPixel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
