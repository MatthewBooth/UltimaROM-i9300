.class Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseSCEPpolicyReciever;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseCertEnrollPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseSCEPpolicyReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseSCEPpolicyReciever;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseSCEPpolicyReciever onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseSCEPpolicyReciever;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    #calls: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToSCEPAgent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$200(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
