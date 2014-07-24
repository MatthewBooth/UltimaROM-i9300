.class Lcom/android/server/enterprise/certificate/CertificatePolicy$3;
.super Ljava/lang/Thread;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1900(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->miAdminNotification:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1800(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
