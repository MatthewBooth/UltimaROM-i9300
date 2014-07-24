.class public Lcom/immersion/android/HapticFeedbackManagerProxy;
.super Ljava/lang/Object;
.source "HapticFeedbackManagerProxy.java"


# static fields
.field private static final INITIALIZATION_DELAY_MS:I = 0x32

.field public static final TAG:Ljava/lang/String; = "HapticFeedbackManager"

.field private static volatile sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;


# instance fields
.field private mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

.field private volatile mInitState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    return-void
.end method

.method static synthetic access$000()Lcom/immersion/android/HapticFeedbackManagerProxy;
    .locals 1

    sget-object v0, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/immersion/android/HapticFeedbackManagerProxy;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/HapticFeedbackManagerProxy;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/immersion/android/HapticFeedbackManagerProxy;
    .locals 9

    const/4 v2, 0x0

    move-object v4, p0

    sget-object v5, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    if-eqz v5, :cond_0

    sget-object v2, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    :goto_0
    return-object v2

    :cond_0
    const-class v6, Lcom/immersion/android/HapticFeedbackManagerProxy;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    if-eqz v5, :cond_1

    sget-object v2, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    :goto_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    new-instance v3, Lcom/immersion/android/HapticFeedbackManagerProxy;

    invoke-direct {v3}, Lcom/immersion/android/HapticFeedbackManagerProxy;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sput-object v3, Lcom/immersion/android/HapticFeedbackManagerProxy;->sHapticFeedbackManagerProxy:Lcom/immersion/android/HapticFeedbackManagerProxy;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_4
    new-instance v5, Lcom/immersion/android/HapticFeedbackManagerProxy$1;

    invoke-direct {v5, v4, v1}, Lcom/immersion/android/HapticFeedbackManagerProxy$1;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    const-wide/16 v7, 0x32

    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object v2, v3

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_3

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_2
.end method

.method private initialize(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    const/4 v1, 0x1

    iput v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    :try_start_0
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackManager;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/immersion/android/haptics/HapticFeedbackManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public performHapticFeedback(IILandroid/view/View;)Z
    .locals 5

    const/4 v2, 0x0

    iget v3, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mInitState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const-string v3, "HapticFeedbackManager"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HapticFeedbackManager"

    const-string v4, "Trying to call performHapticFeedback(...) on non initialized proxy."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_2

    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/immersion/android/HapticFeedbackManagerProxy;->mHFM:Lcom/immersion/android/haptics/HapticFeedbackManager;

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v3, p1, v2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public performHapticFeedback(ILandroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/immersion/android/HapticFeedbackManagerProxy;->performHapticFeedback(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method
