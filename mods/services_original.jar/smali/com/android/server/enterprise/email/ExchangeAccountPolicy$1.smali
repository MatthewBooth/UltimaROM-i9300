.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDeviceId(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

.field final synthetic val$sync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$000()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "getDeviceId() EX : onReceive "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
