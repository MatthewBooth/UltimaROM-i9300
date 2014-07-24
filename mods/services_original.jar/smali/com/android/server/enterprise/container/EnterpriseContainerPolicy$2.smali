.class Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "containerid"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Braoadcast Notification - Container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getStatus(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    #calls: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z
    invoke-static {v2, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$300(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)Z

    :cond_0
    return-void
.end method
