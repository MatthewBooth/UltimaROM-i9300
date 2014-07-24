.class public Lcom/android/server/ssrm/AESEncryption;
.super Ljava/lang/Object;
.source "AESEncryption.java"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final IV_LENGTH:I = 0x10

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field public static LOGTAG:Ljava/lang/String; = null

.field private static final PBE_ITERATION_COUNT:I = 0x64

.field private static final PBE_KEY_LENGTH:I = 0x80

.field private static final SECRET_KEY_ALGORITHM:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field static iv:[B

.field private static salt:Ljava/lang/String;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/AESEncryption;->salt:Ljava/lang/String;

    const-class v0, Lcom/android/server/ssrm/AESEncryption;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/AESEncryption;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ssrm/AESEncryption;->generateIV()[B

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/AESEncryption;->iv:[B

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lcom/android/server/ssrm/AESEncryption;->salt:Ljava/lang/String;

    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v2, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    goto :goto_0
.end method

.method private generateIV()[B
    .locals 3

    const/16 v2, 0x10

    :try_start_0
    new-array v1, v2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/android/server/ssrm/AESEncryption;->iv:[B

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v4, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    const/4 v5, 0x2

    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/AESEncryption;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v4, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    const/4 v5, 0x0

    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v2, v4

    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lcom/android/server/ssrm/AESEncryption;->iv:[B

    invoke-direct {v3, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v5, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    const/4 v6, 0x1

    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/AESEncryption;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v5, p0, Lcom/android/server/ssrm/AESEncryption;->cipher:Ljavax/crypto/Cipher;

    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v4

    goto :goto_0
.end method

.method public getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 9

    :try_start_0
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    sget-object v6, Lcom/android/server/ssrm/AESEncryption;->salt:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/16 v7, 0x64

    const/16 v8, 0x80

    invoke-direct {v2, v5, v6, v7, v8}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const-string v5, "PBKDF2WithHmacSHA1"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v3, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0
.end method
