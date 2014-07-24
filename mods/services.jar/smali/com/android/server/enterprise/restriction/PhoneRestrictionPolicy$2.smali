.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, "Trying to connect to EnterpriseSimPin Service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$500(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$700(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.enterprise.SimPinCode"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinServiceConn:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$600(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
