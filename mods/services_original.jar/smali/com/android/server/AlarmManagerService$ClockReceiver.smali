.class Lcom/android/server/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;

.field tickCount:J


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->tickCount:J

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-wide/16 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AlarmManager"

    const-string v3, "ClockReceiver onReceive() ACTION_TIME_TICK"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->tickCount:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->tickCount:J

    const-wide/16 v4, 0xa

    rem-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    const-string v3, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "___SyncScheduler (v3) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ACTIVATED___"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doGarbageCollection(J)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "DEACTIVATED___"

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AlarmManager"

    const-string v3, "ClockReceiver onReceive() ACTION_DATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;)I

    move-result v3

    const v4, 0xea60

    div-int v4, v0, v4

    neg-int v4, v4

    #calls: Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I
    invoke-static {v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;II)I

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    goto :goto_1
.end method

.method public scheduleDateChangedEvent()V
    .locals 12

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0xa

    invoke-virtual {v11, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {v11, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {v11, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v11, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v8

    move-wide v6, v4

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V

    return-void
.end method

.method public scheduleTimeTickEvent()V
    .locals 18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v1, 0xea60

    const-wide/32 v3, 0xea60

    div-long v3, v12, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    mul-long v14, v1, v3

    sub-long v16, v14, v12

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v3, v3, v16

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V

    return-void
.end method
