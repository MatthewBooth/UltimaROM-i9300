.class Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
.super Ljava/lang/Object;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificatoinUnit"
.end annotation


# instance fields
.field private mCurrentNofication:Z

.field private final mDismissable:Z

.field private final mIcon:I

.field private final mId:I

.field private final mMessageId:I

.field private final mPi:Landroid/app/PendingIntent;

.field private mStayNofiBar:Z

.field private final mTitleId:I

.field private mUsbObserverNotification:Landroid/app/Notification;

.field private final mVisible:Z

.field private final mszId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbNotificationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbNotificationHandler;IIIZZLandroid/app/PendingIntent;ZLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mCurrentNofication:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    iput p2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    iput p3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    iput p4, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    iput-boolean p5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mVisible:Z

    iput-boolean p6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    iput-object p7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mPi:Landroid/app/PendingIntent;

    iput-object p9, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mCurrentNofication:Z

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mId:I

    iput-boolean p8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    return-void
.end method

.method private declared-synchronized setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 12

    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    #getter for: Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbNotificationHandler;->access$200(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    if-eqz v9, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v8

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    #getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", device = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v8, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_2
    if-eqz p4, :cond_5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    if-nez p2, :cond_6

    new-instance v7, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    if-nez v1, :cond_3

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    :cond_3
    if-eqz p5, :cond_7

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    :goto_2
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    iput p3, v1, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    iput-object v11, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    const/4 v2, 0x0

    iput v2, v1, Landroid/app/Notification;->defaults:I

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/Notification;->vibrate:[J

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->priority:I

    if-nez p6, :cond_4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    #getter for: Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbNotificationHandler;->access$200(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    :cond_4
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    #getter for: Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbNotificationHandler;->access$200(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v1, v2, v11, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :cond_5
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->hashCode()I

    move-result v8

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    #getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", device = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v8, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    #getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUsbObserverNotification : notify id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", device = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", title = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v8, v2, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_6
    :try_start_2
    invoke-virtual {v10, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mUsbObserverNotification:Landroid/app/Notification;

    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public clearNotification()V
    .locals 8

    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    iget v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    iget-object v6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mPi:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public getNotificationStayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    return v0
.end method

.method public getStringId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setNotificationStayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    return-void
.end method

.method public setObserverNotification()V
    .locals 8

    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    iget v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    iget-object v6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mPi:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method
