.class Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;
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

    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.knox.containersettings.changemode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    const-string v2, "com.sec.knox.containersettings.knox.mode"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z
    invoke-static {v1, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$002(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    #getter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z
    invoke-static {v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$000(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mActiveContainer:I
    invoke-static {v1, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$102(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    #setter for: Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mActiveContainer:I
    invoke-static {v1, v3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->access$102(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)I

    goto :goto_0
.end method
