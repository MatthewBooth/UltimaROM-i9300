.class Lcom/android/server/enterprise/log/LogManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LogManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/log/LogManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/log/LogManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/LogManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/log/LogManagerService$1;->this$0:Lcom/android/server/enterprise/log/LogManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService$1;->this$0:Lcom/android/server/enterprise/log/LogManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/log/LogManagerService;->disableLogging(I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService$1;->this$0:Lcom/android/server/enterprise/log/LogManagerService;

    #calls: Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;
    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/LogManagerService;->access$000(Lcom/android/server/enterprise/log/LogManagerService;I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/log/Logger;->flush()V

    goto :goto_0
.end method
