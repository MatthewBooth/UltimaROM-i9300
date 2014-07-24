.class Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;
.super Ljava/lang/Object;
.source "PowerSaving3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerSaving3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublicKeyCompare"
.end annotation


# instance fields
.field private final mPublicKey:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;->mPublicKey:[B

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;->mPublicKey:[B

    goto :goto_0
.end method

.method private extractPublicKey([B)Ljava/security/PublicKey;
    .locals 7

    :try_start_0
    const-string v4, "X509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v4, "PowerSavingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate parsing exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public comparePublicKey([B)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;->mPublicKey:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;->mPublicKey:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
