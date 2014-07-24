.class public Lcom/android/server/EcryptfsMountParams;
.super Ljava/lang/Object;
.source "EcryptfsMountParams.java"


# instance fields
.field public callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

.field public containerId:I

.field public excludeMediaTypes:I

.field public key:[B

.field public mountAndEncrypt:Z

.field public mountPath:Ljava/lang/String;

.field public newPassword:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public sourcePath:Ljava/lang/String;

.field public state:I

.field public uninstallOrStop:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/EcryptfsMountParams;->mountPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/EcryptfsMountParams;->key:[B

    iput-boolean p5, p0, Lcom/android/server/EcryptfsMountParams;->mountAndEncrypt:Z

    iput p6, p0, Lcom/android/server/EcryptfsMountParams;->excludeMediaTypes:I

    iput p7, p0, Lcom/android/server/EcryptfsMountParams;->containerId:I

    iput-object p9, p0, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object p10, p0, Lcom/android/server/EcryptfsMountParams;->newPassword:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/EcryptfsMountParams;->state:I

    iput p11, p0, Lcom/android/server/EcryptfsMountParams;->uninstallOrStop:I

    return-void
.end method
