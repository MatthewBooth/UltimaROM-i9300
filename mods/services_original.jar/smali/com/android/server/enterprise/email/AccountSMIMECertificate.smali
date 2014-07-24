.class Lcom/android/server/enterprise/email/AccountSMIMECertificate;
.super Ljava/lang/Object;
.source "AccountsReceiver.java"


# instance fields
.field public mCxtInfo:Landroid/app/enterprise/ContextInfo;

.field public mPassword:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public sMode:I


# direct methods
.method public constructor <init>(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    return-void
.end method
