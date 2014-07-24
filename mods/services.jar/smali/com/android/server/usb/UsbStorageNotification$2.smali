.class Lcom/android/server/usb/UsbStorageNotification$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbStorageNotification;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbStorageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbStorageNotification$2;->this$0:Lcom/android/server/usb/UsbStorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "UsbStorageNotification"

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbStorageNotification$2;->this$0:Lcom/android/server/usb/UsbStorageNotification;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/usb/UsbStorageNotification;->mReady:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbStorageNotification;->access$202(Lcom/android/server/usb/UsbStorageNotification;Z)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbStorageNotification$2;->this$0:Lcom/android/server/usb/UsbStorageNotification;

    #getter for: Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbStorageNotification;->access$300(Lcom/android/server/usb/UsbStorageNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbStorageNotification$2;->this$0:Lcom/android/server/usb/UsbStorageNotification;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbStorageNotification;->sendWaterProfingIntent()V

    iget-object v0, p0, Lcom/android/server/usb/UsbStorageNotification$2;->this$0:Lcom/android/server/usb/UsbStorageNotification;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbStorageNotification;->access$302(Lcom/android/server/usb/UsbStorageNotification;Z)Z

    :cond_0
    return-void
.end method
