.class Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
.super Lcom/android/server/AlarmManagerService$Alarm;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlarmExt"
.end annotation


# instance fields
.field public isExact:Z

.field public isIntervalChanged:Z

.field public isPassedAlarm:Z

.field public isWhitelist:Z

.field public keyId:I

.field public lastTriggerWhen:J

.field public repeatIntervalOriginal:J

.field public repeatIntervalWindow:J


# direct methods
.method public constructor <init>()V
    .locals 14

    const/4 v12, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    move-wide v10, v2

    move-object v13, v12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    iput v1, p0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 16

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v14}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :goto_0
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
