.class Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;
.super Ljava/lang/Thread;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMIMEThread"
.end annotation


# instance fields
.field private mAccId:J

.field private mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

.field final synthetic this$0:Lcom/android/server/enterprise/email/AccountsReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/AccountsReceiver;Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iput-wide p3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v4, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v5, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget v7, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    iget-object v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v1, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMIME Certificate as Account Creation Time >>> "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v9, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "eas_account_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v7, v2, :cond_1

    iget-wide v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->setForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<<< SMIME Certificate as Account Creation Time >>> "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v7, v2, :cond_2

    :try_start_1
    iget-wide v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->setForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v7, v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->setForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed talking with exchange account policy"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_0
.end method
