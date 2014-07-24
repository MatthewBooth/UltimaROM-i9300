.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$900(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->initServices()V
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$1000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$1100()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
