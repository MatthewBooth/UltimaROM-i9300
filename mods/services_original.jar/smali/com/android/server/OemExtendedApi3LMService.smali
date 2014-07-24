.class public final Lcom/android/server/OemExtendedApi3LMService;
.super Landroid/os/IOemExtendedApi3LM$Stub;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
    }
.end annotation


# static fields
.field public static final ACTION_EMERGENCY_LOCK_ENABLED:Ljava/lang/String; = "android.action.emergencylockenabled"

.field private static final API_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "my_profile_enabled"

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNSUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OemExtendedApi3LM"

.field private static final is3LMAllowed:Z

.field private static mCurrentUserId:I


# instance fields
.field private FelicaSavedState:I

.field private binder:Lcom/samsung/felicaremotelock/IFelica;

.field private isSimulatorPermitted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Landroid/os/IDeviceManager3LM;

.field private mEmergencyLockState:I

.field private mHapticFeedbackVibrationIntensity:I

.field private mLockScreenSettings:I

.field private final mOem:Landroid/os/IDeviceManagerRestrictable3LM;

.field private mOneSegState:I

.field private mOwnerInfo:Ljava/lang/String;

.field private mOwnerInfoEnabled:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/OemExtendedApi3LMService;->mCurrentUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Landroid/os/IOemExtendedApi3LM$Stub;-><init>()V

    iput-boolean v4, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    iput v3, p0, Lcom/android/server/OemExtendedApi3LMService;->mOwnerInfoEnabled:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->binder:Lcom/samsung/felicaremotelock/IFelica;

    new-instance v2, Lcom/android/server/OemExtendedApi3LMService$1;

    invoke-direct {v2, p0}, Lcom/android/server/OemExtendedApi3LMService$1;-><init>(Lcom/android/server/OemExtendedApi3LMService;)V

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mConnection:Landroid/content/ServiceConnection;

    iput v3, p0, Lcom/android/server/OemExtendedApi3LMService;->FelicaSavedState:I

    new-instance v2, Lcom/android/server/OemExtendedApi3LMService$2;

    invoke-direct {v2, p0}, Lcom/android/server/OemExtendedApi3LMService$2;-><init>(Lcom/android/server/OemExtendedApi3LMService;)V

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/OemExtendedApi3LMService;->mOem:Landroid/os/IDeviceManagerRestrictable3LM;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "DeviceManager3LM"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/os/IDeviceManager3LM;

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    new-instance v2, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    invoke-direct {v2, p1}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    iput v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mOneSegState:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/felicaremotelock/IFelica;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "OemExtendedApi3LM"

    const-string v3, "OemExtendedApi3LMService:  Bind to Felica Service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemExtendedApi3LMService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockState:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemExtendedApi3LMService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/OemExtendedApi3LMService;Lcom/samsung/felicaremotelock/IFelica;)Lcom/samsung/felicaremotelock/IFelica;
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->binder:Lcom/samsung/felicaremotelock/IFelica;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/OemExtendedApi3LMService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OemExtendedApi3LMService;->setCurrentUserId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/OemExtendedApi3LMService;)Landroid/os/IDeviceManager3LM;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    return-object v0
.end method

.method private getCurrentUserId()I
    .locals 3

    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OemExtendedApi3LMService.getCurrentUserId(): userId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OemExtendedApi3LMService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/OemExtendedApi3LMService;->mCurrentUserId:I

    return v0
.end method

.method private isAccessPermitted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private setCurrentUserId(I)V
    .locals 3

    sput p1, Lcom/android/server/OemExtendedApi3LMService;->mCurrentUserId:I

    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OemExtendedApi3LMService.setCurrentUserId(): userId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OemExtendedApi3LMService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setFelicaSavedState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/OemExtendedApi3LMService;->FelicaSavedState:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public getEmergencyLockState()I
    .locals 3

    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3LM getEmergencyLockState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockState:I

    return v0
.end method

.method public getFelicaSavedState()I
    .locals 1

    iget v0, p0, Lcom/android/server/OemExtendedApi3LMService;->FelicaSavedState:I

    return v0
.end method

.method public getFelicaState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getInfraredState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getIsSimulatorPermitted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    return v0
.end method

.method public getOneSegState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setEmergencyLock(ZLjava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setEmergencyLockState(I)V
    .locals 3

    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3LM setEmergencyLockState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockState:I

    goto :goto_0
.end method

.method public setFelicaState(I)V
    .locals 0

    return-void
.end method

.method public setInfraredState(I)V
    .locals 0

    return-void
.end method

.method public setOneSegState(I)V
    .locals 0

    return-void
.end method

.method public setisSimulatorPermitted(Z)V
    .locals 3

    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM extended3LM setisSimulatorPermitted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oem extended isSimulatorPermitted is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
