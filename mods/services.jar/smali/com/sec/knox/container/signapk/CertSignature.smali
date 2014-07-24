.class public Lcom/sec/knox/container/signapk/CertSignature;
.super Ljava/lang/Object;
.source "CertSignature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/knox/container/signapk/CertSignature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field TAG:Ljava/lang/String;

.field private mHashCode:I

.field private mHaveHashCode:Z

.field private final mSignature:[B

.field private mStringRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/knox/container/signapk/CertSignature$1;

    invoke-direct {v0}, Lcom/sec/knox/container/signapk/CertSignature$1;-><init>()V

    sput-object v0, Lcom/sec/knox/container/signapk/CertSignature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CertSignature"

    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertSignature;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/knox/container/signapk/CertSignature$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/signapk/CertSignature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v9, "CertSignature"

    iput-object v9, p0, Lcom/sec/knox/container/signapk/CertSignature;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v0, v4

    rem-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "text size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not even"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    div-int/lit8 v9, v0, 0x2

    new-array v6, v9, [B

    const/4 v7, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v8, v7

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v2, v3, 0x1

    aget-byte v9, v4, v3

    invoke-static {v9}, Lcom/sec/knox/container/signapk/CertSignature;->parseHexDigit(I)I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    aget-byte v9, v4, v2

    invoke-static {v9}, Lcom/sec/knox/container/signapk/CertSignature;->parseHexDigit(I)I

    move-result v5

    add-int/lit8 v7, v8, 0x1

    shl-int/lit8 v9, v1, 0x4

    or-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    move v8, v7

    goto :goto_0

    :cond_1
    iput-object v6, p0, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CertSignature"

    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertSignature;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    return-void
.end method

.method private static final parseHexDigit(I)I
    .locals 3

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in hex string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sec/knox/container/signapk/CertSignature;

    move-object v2, v0

    if-eq p0, v2, :cond_0

    iget-object v4, p0, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    iget-object v5, v2, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/sec/knox/container/signapk/CertSignature;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/knox/container/signapk/CertSignature;->mHaveHashCode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/knox/container/signapk/CertSignature;->mHashCode:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/signapk/CertSignature;->mHashCode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/knox/container/signapk/CertSignature;->mHaveHashCode:Z

    iget v0, p0, Lcom/sec/knox/container/signapk/CertSignature;->mHashCode:I

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    iget-object v2, p0, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toChars()[C
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/knox/container/signapk/CertSignature;->toChars([C[I)[C

    move-result-object v0

    return-object v0
.end method

.method public toChars([C[I)[C
    .locals 10

    const/16 v9, 0xa

    iget-object v4, p0, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    array-length v0, v4

    mul-int/lit8 v1, v0, 0x2

    if-eqz p1, :cond_0

    array-length v7, p1

    if-le v1, v7, :cond_1

    :cond_0
    new-array v5, v1, [C

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    aget-byte v6, v4, v3

    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_2

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    and-int/lit8 v2, v6, 0xf

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_3

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_3
    int-to-char v7, v7

    aput-char v7, v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v5, p1

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v2, 0x30

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    const/4 v7, 0x0

    aput v0, p2, v7

    :cond_5
    return-object v5
.end method

.method public toCharsString()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/sec/knox/container/signapk/CertSignature;->mStringRef:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_1
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/signapk/CertSignature;->mStringRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/knox/container/signapk/CertSignature;->toChars()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/knox/container/signapk/CertSignature;->mStringRef:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/signapk/CertSignature;->mSignature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
