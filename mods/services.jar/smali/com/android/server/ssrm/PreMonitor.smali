.class public final Lcom/android/server/ssrm/PreMonitor;
.super Ljava/lang/Object;
.source "PreMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PreMonitor$SIOPTable;,
        Lcom/android/server/ssrm/PreMonitor$BrightnessController;
    }
.end annotation


# static fields
.field private static LOCAL_TEST:Z = false

.field private static final TAG:Ljava/lang/String; = "SSRMv2:PreMonitor"

.field private static mArmDVFSHelper:Landroid/os/DVFSHelper;

.field static mBatteryTemperature:I

.field static mBootComplete:Z

.field private static mContext:Landroid/content/Context;

.field private static mGpuDVFSHelper:Landroid/os/DVFSHelper;

.field private static mSiopEnabled:Z

.field private static mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mSiopEnabled:Z

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->LOCAL_TEST:Z

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->mArmDVFSHelper:Landroid/os/DVFSHelper;

    sput-object v1, Lcom/android/server/ssrm/PreMonitor;->mGpuDVFSHelper:Landroid/os/DVFSHelper;

    sput v0, Lcom/android/server/ssrm/PreMonitor;->mBatteryTemperature:I

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mBootComplete:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/ssrm/PreMonitor;->mSiopEnabled:Z

    return p0
.end method

.method static synthetic access$200()Landroid/os/DVFSHelper;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mArmDVFSHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .locals 0

    sput-object p0, Lcom/android/server/ssrm/PreMonitor;->mArmDVFSHelper:Landroid/os/DVFSHelper;

    return-object p0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/DVFSHelper;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mGpuDVFSHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$402(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .locals 0

    sput-object p0, Lcom/android/server/ssrm/PreMonitor;->mGpuDVFSHelper:Landroid/os/DVFSHelper;

    return-object p0
.end method

.method static getBatteryTemperature()I
    .locals 1

    sget v0, Lcom/android/server/ssrm/PreMonitor;->mBatteryTemperature:I

    return v0
.end method

.method public static getDuration()I
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    if-nez v0, :cond_0

    const/16 v0, 0x7d0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->duration:I

    goto :goto_0
.end method

.method public static getLastBatteryTemperature()I
    .locals 1

    sget v0, Lcom/android/server/ssrm/PreMonitor;->mBatteryTemperature:I

    return v0
.end method

.method public static isSiopEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mSiopEnabled:Z

    return v0
.end method

.method static updateBatteryTemperature()V
    .locals 2

    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->LOCAL_TEST:Z

    if-eqz v0, :cond_0

    const/16 v0, -0xc8

    sput v0, Lcom/android/server/ssrm/PreMonitor;->mBatteryTemperature:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "SSRMv2:PreMonitor"

    const-string v1, "/sys/class/power_supply/battery/temp"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/ssrm/PreMonitor;->mBatteryTemperature:I

    goto :goto_0
.end method


# virtual methods
.method bootComplete()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mBootComplete:Z

    sget-boolean v0, Lcom/android/server/ssrm/PreMonitor;->mSiopEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->notifyMaxBrightnessToSettings()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/PreMonitor$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/PreMonitor$2;-><init>(Lcom/android/server/ssrm/PreMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method initialize(Landroid/content/Context;)V
    .locals 7

    const v2, 0x9eb10

    const/16 v3, 0xb1

    const/16 v4, 0x82

    const/16 v6, 0x3c

    const/4 v5, 0x0

    sput-object p1, Lcom/android/server/ssrm/PreMonitor;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03_3GWIFI:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_3GWIFI:Z

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const/16 v1, -0x46

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03_LTE:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_PICASSO_LTE:Z

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const/16 v1, -0x32

    const v2, 0x16da00

    const v3, 0xbebc200

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const/16 v1, -0x28

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const v2, 0x16da00

    const v3, 0xbebc200

    const/16 v4, 0x28

    move v1, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    goto :goto_0

    :cond_6
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V1_3GWIFI:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V2_3GWIFI:Z

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move v1, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    goto :goto_0

    :cond_8
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V1_LTE:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V2_LTE:Z

    if-eqz v0, :cond_1

    :cond_9
    new-instance v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    const/16 v1, -0x28

    const v2, 0x16da00

    const v3, 0xbebc200

    const/16 v4, 0x9b

    const/16 v6, 0x14

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/PreMonitor$SIOPTable;-><init>(IIIIZI)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    goto :goto_0
.end method

.method public run()V
    .locals 2

    sget-object v0, Lcom/android/server/ssrm/PreMonitor;->mSiopTable:Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/PreMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/PreMonitor$1;-><init>(Lcom/android/server/ssrm/PreMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
