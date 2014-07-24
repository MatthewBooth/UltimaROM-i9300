.class final Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
.super Landroid/os/Handler;
.source "LicenseLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/license/LicenseLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/license/LicenseLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "LicenseLogService"

    const-string v2, "MSG_CLEAN_OLD_RECORDS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    #calls: Lcom/android/server/enterprise/license/LicenseLogService;->handleLicenseLogCleanNotification()V
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLogService;->access$100(Lcom/android/server/enterprise/license/LicenseLogService;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    const-string v2, "apiName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    #calls: Lcom/android/server/enterprise/license/LicenseLogService;->_log(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/license/LicenseLogService;->access$200(Lcom/android/server/enterprise/license/LicenseLogService;Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
