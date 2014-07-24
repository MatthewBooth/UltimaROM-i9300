.class Lcom/android/server/NotificationManagerService$PickupPlayer;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupPlayer"
.end annotation


# instance fields
.field private ivt:[B

.field private mMotionEnabled:Z

.field private mMotionRegistered:Z

.field private mPickUpMissedEventExist:Z

.field private mPickupListener:Landroid/hardware/motion/MRListener;

.field private mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->ivt:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v0, Lcom/android/server/NotificationManagerService$PickupPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/server/NotificationManagerService$PickupPlayer$1;-><init>(Lcom/android/server/NotificationManagerService$PickupPlayer;)V

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupListener:Landroid/hardware/motion/MRListener;

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0xf1t
        0xe0t
        0x1t
        0xe2t
        0x0t
        0x0t
        0xf1t
        0xe0t
        0x1t
        0xe2t
        0x0t
        0x64t
        0xfft
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0xb1t
        0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService$PickupPlayer;-><init>(Lcom/android/server/NotificationManagerService;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/NotificationManagerService$PickupPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$PickupPlayer;->unregister()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/NotificationManagerService$PickupPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$PickupPlayer;->register()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/NotificationManagerService$PickupPlayer;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->ivt:[B

    return-object v0
.end method

.method private register()V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.android.phone"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-eq v4, v7, :cond_2

    :cond_0
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.android.mms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/16 v6, 0x7b

    if-eq v4, v6, :cond_2

    :cond_1
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.notidemo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "KOR"

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.skt.prod.dialer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    const-string v4, "KOR"

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "JPN"

    const-string v6, "EUR"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->missedCount:I

    if-lez v4, :cond_7

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    if-ne v1, v4, :cond_7

    const-string v4, "STATUSBAR-NotificationService"

    const-string v6, "Pickup - Missed event found"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    :cond_5
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupListener:Landroid/hardware/motion/MRListener;

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    iput-boolean v7, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "Pickup - registerListener"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private unregister()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    const-string v0, "STATUSBAR-NotificationService"

    const-string v1, "Pickup - unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public setPickupMotionEnabled(Z)V
    .locals 3

    const-string v0, "STATUSBAR-NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPickupMotionEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService$PickupPlayer;->unregister()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    goto :goto_0
.end method
