.class final Lcom/android/server/ssrm/LteTpBooster;
.super Ljava/lang/Object;
.source "LteTpBooster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/LteTpBooster$2;,
        Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;
    }
.end annotation


# static fields
.field private static final ADD_CLIENT:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final REMOVE_CLIENT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LteTpBooster"

.field private static final TRAFFIC_STATS_POLL:I = 0x2

.field private static mDVFSHelperBus1:Landroid/os/DVFSHelper;

.field private static mDVFSHelperBus2:Landroid/os/DVFSHelper;

.field private static mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private static mDVFSHelperCpu1:Landroid/os/DVFSHelper;

.field private static mDVFSHelperCpu2:Landroid/os/DVFSHelper;


# instance fields
.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentLevel:I

.field private mEnablePoller:Z

.field private mEnableTrafficStatsPoll:Z

.field private mHelperReady:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPollingLevel0:I

.field private mPollingLevel1:I

.field private mPollingLevel2:I

.field private mPollingPeriod:I

.field private mRxBytes:J

.field private mRxThreshold1:J

.field private mRxThreshold2:J

.field private final mTrafficHandler:Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxBytes:J

.field private mTxThreshold1:J

.field private mTxThreshold2:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/LteTpBooster;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x7d0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    iput v4, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    iput v4, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel1:I

    iput v4, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel2:I

    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold1:J

    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold1:J

    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold2:J

    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold2:J

    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxBytes:J

    iput-wide v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxBytes:J

    iput v3, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    iput-boolean v3, p0, Lcom/android/server/ssrm/LteTpBooster;->mHelperReady:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnablePoller:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnableTrafficStatsPoll:Z

    iput v3, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mClients:Ljava/util/List;

    iput-object v5, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;

    invoke-direct {v1, p0, v5}, Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;-><init>(Lcom/android/server/ssrm/LteTpBooster;Lcom/android/server/ssrm/LteTpBooster$1;)V

    iput-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficHandler:Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/ssrm/LteTpBooster$1;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/LteTpBooster$1;-><init>(Lcom/android/server/ssrm/LteTpBooster;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ssrm/LteTpBooster;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/ssrm/LteTpBooster;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/LteTpBooster;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/ssrm/LteTpBooster;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/ssrm/LteTpBooster;)Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficHandler:Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/LteTpBooster;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/ssrm/LteTpBooster;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/LteTpBooster;)I
    .locals 1

    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/ssrm/LteTpBooster;)I
    .locals 2

    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/ssrm/LteTpBooster;)I
    .locals 1

    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ssrm/LteTpBooster;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mClients:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public initDVFSLevel()V
    .locals 15

    const/16 v14, 0x13

    const/16 v3, 0xc

    const/4 v13, 0x1

    const/16 v2, 0x7d0

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mHelperReady:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "EUR"

    const-string v1, "KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput v2, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    iput v2, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel1:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel2:I

    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold1:J

    const-wide/32 v0, 0x1900000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold2:J

    const-wide/32 v0, 0x1400000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold1:J

    const-wide/32 v0, 0x2800000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold2:J

    const v6, 0x61a80

    const v7, 0xc3500

    iput-boolean v13, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnablePoller:Z

    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    const-string v2, "LTE_TP_CPU1"

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    sget-object v2, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    invoke-virtual {v2, v9}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v11, v2

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_2
    if-eqz v10, :cond_3

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    const-string v2, "LTE_TP_CPU2"

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    sget-object v2, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    invoke-virtual {v2, v10}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_3
    if-eqz v8, :cond_4

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    const-string v2, "LTE_TP_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_4
    if-eqz v6, :cond_5

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    const-string v2, "LTE_TP_BUS1"

    move v3, v14

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_5
    if-eqz v7, :cond_6

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;

    const-string v2, "LTE_TP_BUS2"

    move v3, v14

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    int-to-long v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_6
    iput-boolean v13, p0, Lcom/android/server/ssrm/LteTpBooster;->mHelperReady:Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ms01lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EUR"

    const-string v1, "KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    iput v2, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel1:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel2:I

    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold1:J

    const-wide/32 v0, 0x1400000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold2:J

    const-wide/32 v0, 0x1900000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold1:J

    const-wide/32 v0, 0x2300000

    iput-wide v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold2:J

    const v9, 0xf3c00

    const v10, 0x122a00

    const/4 v8, 0x2

    iput-boolean v13, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnablePoller:Z

    goto/16 :goto_1
.end method

.method public logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/LteTpBooster;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public notifyOnDataActivity()V
    .locals 14

    const-wide/16 v12, 0x8

    iget-boolean v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mHelperReady:Z

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/LteTpBooster;->initDVFSLevel()V

    :cond_0
    iget-boolean v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mEnablePoller:Z

    if-eqz v8, :cond_2

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    iget-wide v6, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxBytes:J

    iget-wide v4, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxBytes:J

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxBytes:J

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxBytes:J

    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxBytes:J

    sub-long/2addr v8, v6

    mul-long/2addr v8, v12

    iget v10, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    div-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    div-long v2, v8, v10

    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxBytes:J

    sub-long/2addr v8, v4

    mul-long/2addr v8, v12

    iget v10, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    div-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    div-long v0, v8, v10

    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold2:J

    cmp-long v8, v2, v8

    if-gtz v8, :cond_1

    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold2:J

    cmp-long v8, v0, v8

    if-lez v8, :cond_3

    :cond_1
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/server/ssrm/LteTpBooster;->undateDVFSLevel(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mTxThreshold1:J

    cmp-long v8, v2, v8

    if-gtz v8, :cond_4

    iget-wide v8, p0, Lcom/android/server/ssrm/LteTpBooster;->mRxThreshold1:J

    cmp-long v8, v0, v8

    if-lez v8, :cond_5

    :cond_4
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/ssrm/LteTpBooster;->undateDVFSLevel(I)V

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/ssrm/LteTpBooster;->undateDVFSLevel(I)V

    goto :goto_0
.end method

.method public undateDVFSLevel(I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    if-eq v0, p1, :cond_4

    const-string v0, "LteTpBooster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt p1, v3, :cond_5

    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    if-gtz v0, :cond_5

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_0
    :goto_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_6

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_1
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_2
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel2:I

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    :goto_1
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_2
    iput p1, p0, Lcom/android/server/ssrm/LteTpBooster;->mCurrentLevel:I

    :cond_4
    return-void

    :cond_5
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    :cond_6
    if-lt p1, v3, :cond_9

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_7
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_8
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel1:I

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    goto :goto_1

    :cond_9
    iget v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingLevel0:I

    iput v0, p0, Lcom/android/server/ssrm/LteTpBooster;->mPollingPeriod:I

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu2:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_a
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus2:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperCpu1:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_b
    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/ssrm/LteTpBooster;->mDVFSHelperBus1:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
