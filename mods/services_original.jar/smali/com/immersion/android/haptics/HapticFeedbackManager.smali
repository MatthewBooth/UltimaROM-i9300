.class public Lcom/immersion/android/haptics/HapticFeedbackManager;
.super Ljava/lang/Object;
.source "HapticFeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;,
        Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;,
        Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_THEME_CONTENT_URI:Ljava/lang/String; = "content://com.immersion.android.haptics.defaulttheme"

.field public static final DEVICE_HANDLE_ARRAY_SIZE:I = 0x2

.field private static final MAX_IMMVIBE_INITIALIZATION_ATTEMPTS:I = 0xf

.field public static final TAG:Ljava/lang/String; = "HapticFeedbackManager"

.field public static final UI_DEVICE_HANDLE_INDEX:I = 0x0

.field public static final UI_NOTIFICATION_DEVICE_HANDLE_INDEX:I = 0x1


# instance fields
.field private mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

.field private mBootedAndInitialized:Z

.field private mCalledFromProxy:Z

.field private mCanUseTouchSenseAPI:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentUserID:I

.field private mDevices:[Lcom/immersion/WrappableDevice;

.field private mImmVibeInitAttempts:I

.field private mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

.field mKeyboardTapVibePattern:[J

.field mLongPressVibePattern:[J

.field private mLooper:Landroid/os/Looper;

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

.field private mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

.field private mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/immersion/WrappableDevice;

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    iput v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    iput-object p2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_initialized"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V

    :cond_0
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    :cond_1
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->registerSettingsContentObservers()V

    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->setupPackageBroadcastReceiver()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    return-void
.end method

.method static synthetic access$000(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    return v0
.end method

.method static synthetic access$200(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    return v0
.end method

.method static synthetic access$300(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    return v0
.end method

.method static synthetic access$302(Lcom/immersion/android/haptics/HapticFeedbackManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$502(Lcom/immersion/android/haptics/HapticFeedbackManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    .locals 0

    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/immersion/android/haptics/HapticFeedbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    return-void
.end method

.method static synthetic access$700(Lcom/immersion/android/haptics/HapticFeedbackManager;)Lcom/immersion/android/haptics/HapticFeedbackTheme;
    .locals 1

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    return-object v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private immVibeInitialize()V
    .locals 6

    const/4 v3, 0x4

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v2, :cond_1

    const-string v2, "HapticFeedbackManager"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HapticFeedbackManager"

    const-string v3, "ImmVibeInitialize called but system has not finished booting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    :try_start_0
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_devicehandle"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/immersion/WrappableDevice;-><init>(II)V

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/immersion/WrappableDevice;->getPropertyInt32(I)I

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_notification_devicehandle"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/immersion/WrappableDevice;-><init>(II)V

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/immersion/WrappableDevice;->getPropertyInt32(I)I

    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "HapticFeedbackManager"

    const-string v3, "Using existing device handle (called from proxy)."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    :cond_3
    :goto_1
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. mCanUseTouchSenseAPI ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :try_start_1
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001c

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001d

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001e

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001f

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070020

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    const/16 v2, 0xbb8

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/immersion/WrappableDevice;->getCapabilityInt32(I)I

    move-result v3

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/immersion/WrappableDevice;->close()V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x0

    new-instance v4, Lcom/immersion/WrappableDevice;

    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    new-instance v4, Lcom/immersion/WrappableDevice;

    invoke-static {}, Lcom/immersion/Device;->newDevice()Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "HapticFeedbackManager"

    const-string v3, "Opening composite devices for keyboard, UI and notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_devicehandle"

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/immersion/WrappableDevice;->getDeviceHandle()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_ui_notification_devicehandle"

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/immersion/WrappableDevice;->getDeviceHandle()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. mCanUseTouchSenseAPI ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    :try_start_4
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_initialized"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001c

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001d

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001e

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001f

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070020

    invoke-static {v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_a
    :try_start_5
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    const/4 v3, 0x1

    new-instance v4, Lcom/immersion/WrappableDevice;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/immersion/WrappableDevice;-><init>(Lcom/immersion/Device;)V

    aput-object v4, v2, v3

    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "HapticFeedbackManager"

    const-string v3, "3000 Edition, Opening single device for keyboard and UI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    :try_start_6
    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_initialized"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001c

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001d

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001e

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001f

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070020

    invoke-static {v3, v4}, Lcom/immersion/android/haptics/HapticFeedbackManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_c
    :goto_4
    throw v2

    :catch_3
    move-exception v0

    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in HapticFeedbackManager(...)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method


# virtual methods
.method public canPlayHDEffects()Z
    .locals 2

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    :cond_0
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    return v0
.end method

.method public cancel()V
    .locals 5

    :try_start_0
    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/immersion/WrappableDevice;->stopAllPlayingEffects()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "HapticFeedbackManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "HapticFeedbackManager"

    const-string v3, "canceled all playing effects for all devices :"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    :cond_4
    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in cancel()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public cancel(I)V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v1, :cond_2

    if-lez p1, :cond_1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/immersion/WrappableDevice;->stopAllPlayingEffects()V

    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled all playing effects for device :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "HapticFeedbackManager"

    const-string v2, "deviceHandle is not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in cancel()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    :cond_3
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected deviceForEffectId(I)I
    .locals 1

    const/16 v0, 0x63ce

    if-eq p1, v0, :cond_0

    const/16 v0, 0x63d8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4f4c

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public loadActiveTheme()V
    .locals 4

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> strTheme is null, reverting to default theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "content://com.immersion.android.haptics.defaulttheme"

    :cond_1
    invoke-virtual {p0, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized loadActiveTheme(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "content://com.immersion.android.haptics.defaulttheme"

    :cond_0
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v1, :cond_2

    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> mActiveTheme is null. First time being loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    :cond_2
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v1, v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> active theme has changed. Loading new theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    :cond_4
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    invoke-virtual {v1}, Lcom/immersion/android/haptics/HapticFeedbackTheme;->ping()V

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-boolean v1, v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    if-nez v1, :cond_6

    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> problem with currently active theme. Switching back to default theme."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string p1, "content://com.immersion.android.haptics.defaulttheme"

    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    invoke-direct {v1, p1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackTheme;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_theme"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. loadActiveTheme() --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v3, v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in loadActiveTheme()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public notifySystemBoot()V
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in notifySystemBoot()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 2

    const-string v0, "HapticFeedbackManager"

    const-string v1, "[JK] Before call performHapticFeedback(null, effectId, always);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(IZ[JLcom/immersion/IVTBuffer;II)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v4, :cond_1

    const-string v2, "HapticFeedbackManager"

    const/4 v4, 0x4

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HapticFeedbackManager"

    const-string v4, "PerformHapticFeedback but system has not finished booting"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v5, 0xf

    if-ge v4, v5, :cond_2

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    :cond_2
    :try_start_0
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    const/4 v6, 0x0

    iget v7, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    :goto_1
    if-nez p2, :cond_3

    if-nez v1, :cond_0

    :cond_3
    if-eqz p4, :cond_7

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v4, v4, p6

    const/4 v5, 0x0

    int-to-byte v6, p5

    invoke-virtual {v4, p4, v5, v6}, Lcom/immersion/WrappableDevice;->playIVTEffectRepeat(Lcom/immersion/IVTBuffer;IB)Lcom/immersion/EffectHandle;

    move v3, v2

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_6

    move v1, v2

    :goto_2
    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_9

    array-length v4, p3

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_9

    array-length v4, p3

    if-ne v4, v2, :cond_8

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v5, 0x0

    aget-wide v5, p3, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4, p3, p5}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in performHapticFeedback(...)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2, p1, p2, p6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto/16 :goto_0
.end method

.method public performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 2

    const-string v0, "HapticFeedbackManager"

    const-string v1, "[JK] Before call performHapticFeedback(win, effectId, always, deviceForEffectId(effectId));"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/immersion/android/haptics/HapticFeedbackManager;->deviceForEffectId(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZI)Z
    .locals 10

    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] Enter performHapticFeedback(WindowState win, int effectId, boolean always,int deviceHandle)"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JK] effectId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "always : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "deviceHandle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z

    if-nez v4, :cond_1

    const-string v4, "HapticFeedbackManager"

    invoke-static {v4, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "HapticFeedbackManager"

    const-string v5, "PerformHapticFeedback called but system has not finished booting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v6

    :cond_1
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 1"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitAttempts:I

    const/16 v7, 0xf

    if-ge v4, v7, :cond_2

    invoke-direct {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V

    :cond_2
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 2"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, 0x0

    iget v9, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCurrentUserID:I

    invoke-static {v4, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_3

    move v1, v5

    :goto_1
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 3"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JK] always : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "hapticsDisabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_6

    if-eqz v1, :cond_6

    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 4 : return false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "HapticFeedbackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proxy is \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'. Exception caught in performHapticFeedback(...)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    move v1, v5

    :goto_2
    goto :goto_1

    :cond_5
    move v1, v6

    goto :goto_2

    :cond_6
    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z

    if-eqz v4, :cond_e

    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 5"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HapticFeedbackManager"

    const/4 v7, 0x4

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-nez v2, :cond_8

    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. performHapticFeedback() via TouchSense API: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    const/16 v4, 0x5460

    if-ne p2, v4, :cond_9

    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 6"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackManager;->cancel()V

    move v6, v5

    goto/16 :goto_0

    :cond_8
    const-string v7, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\'. performHapticFeedback() via TouchSense API: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    if-nez v4, :cond_b

    const-string v4, "HapticFeedbackManager"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "HapticFeedbackManager"

    const-string v5, "mActiveTheme is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 7"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v4, v4, p4

    if-nez v4, :cond_d

    const-string v4, "HapticFeedbackManager"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "HapticFeedbackManager"

    const-string v5, "mDevices[deviceHandle] is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 8"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string v4, "HapticFeedbackManager"

    const-string v5, "[JK] In performHapticFeedback - 9"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;

    iget-object v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mDevices:[Lcom/immersion/WrappableDevice;

    aget-object v5, v5, p4

    invoke-virtual {v4, p2, v5}, Lcom/immersion/android/haptics/HapticFeedbackTheme;->performHapticFeedback(ILcom/immersion/Device;)Z

    move-result v6

    goto/16 :goto_0

    :cond_e
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 10"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HapticFeedbackManager"

    const/4 v7, 0x4

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "HapticFeedbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. performHapticFeedback() via Google Vibrator API"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v3, 0x0

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mLongPressVibePattern:[J

    :goto_4
    array-length v4, v3

    if-ne v4, v5, :cond_10

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v7, 0x0

    aget-wide v7, v3, v7

    invoke-virtual {v4, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_5
    const-string v4, "HapticFeedbackManager"

    const-string v7, "[JK] In performHapticFeedback - 11"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    goto/16 :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVirtualKeyVibePattern:[J

    goto :goto_4

    :sswitch_2
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mKeyboardTapVibePattern:[J

    goto :goto_4

    :sswitch_3
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeDisabledVibePattern:[J

    goto :goto_4

    :sswitch_4
    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mSafeModeEnabledVibePattern:[J

    goto :goto_4

    :cond_10
    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v7, -0x1

    invoke-virtual {v4, v3, v7}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
        0x61a8 -> :sswitch_2
        0x6220 -> :sswitch_2
        0x622a -> :sswitch_2
        0x6234 -> :sswitch_2
        0x623e -> :sswitch_2
    .end sparse-switch
.end method

.method protected registerSettingsContentObservers()V
    .locals 6

    :try_start_0
    new-instance v3, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-direct {v3, p0, p0}, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;-><init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    new-instance v3, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    invoke-direct {v3, p0, p0}, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;-><init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    iput-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "haptic_feedback_theme"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mUserThemeObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackUserThemeContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "haptic_feedback_initialized"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mImmVibeInitializeContentObserver:Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "HapticFeedbackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Exception caught in setupPackageBroadcastReceiver()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setupPackageBroadcastReceiver()V
    .locals 5

    :try_start_0
    new-instance v2, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-direct {v2, p0, p0}, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;-><init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HAPTIC_THEME_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mThemeReceiver:Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "HapticFeedbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Exception caught in setupPackageBroadcastReceiver()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
