.class Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseISLPolicyMigrationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterpriseISLPolicyMigrationReceiver onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->onMigration3rdPartyUpdate()Z
    invoke-static {v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.enterprise.knox.IM_MIGRATION_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterpriseISLPolicyMigrationReceiver onReceive ---- Migration Success"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string v2, "IM_MIGRATION_RESULT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLPolicyMigrationReceiver;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    #getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterpriseISLPolicyMigrationReceiver onReceive ---- Migration Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
