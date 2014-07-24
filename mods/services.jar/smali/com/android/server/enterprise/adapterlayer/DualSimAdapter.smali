.class public Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;
.super Ljava/lang/Object;
.source "DualSimAdapter.java"


# static fields
.field public static final SIM_NOT_FOUND:I = 0xff

.field public static final SIM_SLOT_1:I = 0x0

.field public static final SIM_SLOT_2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DualSimPolicyService"

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveSimForData()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static getDefaultSimForVoiceCalls()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static getIccId(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getIccSlot(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static getInsertedSimCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;
    .locals 2

    const-class v1, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSimSerialNumber(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static hasIccCard(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isMultiSimEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static setActiveSimForData(I)V
    .locals 0

    return-void
.end method

.method public static setDefaultSimForVoiceCalls(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static switchToSimDataNetwork(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
