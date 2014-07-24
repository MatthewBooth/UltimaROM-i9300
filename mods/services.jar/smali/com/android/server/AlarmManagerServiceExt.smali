.class Lcom/android/server/AlarmManagerServiceExt;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;,
        Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final APP_SYNC_LOG:Z = false

.field private static NEW_ALARM_MANAGER:Z = false

.field private static final TAG:Ljava/lang/String; = "AlarmManager"


# instance fields
.field mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    const-string v3, "dev.ssrm.appsync.log"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    return v0
.end method

.method public static maxRepeatInterval(JJ)J
    .locals 12

    move-wide v4, p0

    add-long v2, p0, p2

    const-wide/16 v8, 0x2

    div-long v0, p0, v8

    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-nez v8, :cond_0

    move-wide v6, v4

    :goto_0
    return-wide v6

    :cond_0
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v2, v8

    if-ltz v8, :cond_1

    long-to-double v8, v2

    long-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    mul-long v4, v8, v0

    :goto_1
    move-wide v6, v4

    goto :goto_0

    :cond_1
    const-wide/32 v8, 0x1b7740

    cmp-long v8, v2, v8

    if-ltz v8, :cond_2

    long-to-double v8, v2

    const-wide v10, 0x41224f8000000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/32 v10, 0x927c0

    mul-long v4, v8, v10

    goto :goto_1

    :cond_2
    long-to-double v8, v2

    const-wide v10, 0x41124f8000000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/32 v10, 0x493e0

    mul-long v4, v8, v10

    goto :goto_1
.end method


# virtual methods
.method public getSyncScheduler()Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    return-object v0
.end method
