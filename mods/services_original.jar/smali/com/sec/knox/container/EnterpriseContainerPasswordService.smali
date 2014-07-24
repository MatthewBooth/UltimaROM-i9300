.class public Lcom/sec/knox/container/EnterpriseContainerPasswordService;
.super Ljava/lang/Object;
.source "EnterpriseContainerPasswordService.java"

# interfaces
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# static fields
.field private static final ALPHAS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field private static final CONTAINER_LOCK_PASSWORD_FILE:Ljava/lang/String; = "containerpassword"

.field private static final CONTAINER_PASSWORD_SALT_KEY:Ljava/lang/String; = "container.password_salt"

.field private static final DAY_IN_MILIS:J = 0x5265c00L

.field private static final DAY_IN_MINUTES:J = 0x5a0L

.field private static final DEFAUL_MAXIMUM_TIME_TO_LOCK:J = 0x1b7740L

.field private static final DEFAUL_MAXIMUM_TIME_TO_UNMOUNT:J = 0x0L

.field private static final DIGIT_CHARS:Ljava/lang/String; = "\\d(?=\\d{1,})"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final INVALID_CONTAINER_ID:I = -0x1

.field private static final MAX_CONTAINER_NUMBER:I = 0x3

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final NUMBERS:Ljava/lang/String; = "0123456789"

.field private static ORIGINAL_PASSWORD_HASH_SIZE:I = 0x0

.field private static final PASSWORD_MAXIMUM_LENGTH:I = 0x10

.field private static final PASSWORD_MINIMUM_LENGTH:I = 0x6

.field private static final PASSWORD_MINIMUM_LETTERS:I = 0x1

.field private static final PASSWORD_MINIMUM_NUMERICS:I = 0x1

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field private static final REQUEST_PASSWORD_TIMEOUT:I = 0x15c4

.field private static final REQUEST_UNMOUNT_TIMEOUT:I = 0x15c5

.field private static final REVERSE_ALPHAS:Ljava/lang/String; = "zyxwvutsrqponmlkjihgfedcba"

.field private static final REVERSE_NUMBERS:Ljava/lang/String; = "9876543210"

.field private static final SECOND_IN_MILIS:J = 0x3e8L

.field private static TAG:Ljava/lang/String; = null

.field private static final THRESHOLD_OF_LOOP_CHAR:I = 0x3

.field private static final THRESHOLD_OF_SEQUENTIAL_CHAR:I = 0x4

.field private static final WORD_CHARS:Ljava/lang/String; = "\\w(?=\\w{1,})"

.field private static containerPasswordFilePath:Ljava/lang/String;

.field private static mEnterpriseContainerPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mECS:Lcom/sec/knox/container/EnterpriseContainerService;

.field private mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

.field private mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

.field private mStateManager:Lcom/sec/knox/container/manager/StateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "EnterpriseContainerPasswordService"

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEnterpriseContainerPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    sput-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    const/16 v0, 0x48

    sput v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mECS:Lcom/sec/knox/container/EnterpriseContainerService;

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "/data/system/container/containerpassword"

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    new-instance v0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iput-object p2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mECS:Lcom/sec/knox/container/EnterpriseContainerService;

    return-void
.end method

.method private cancelPasswordExpirationAlarm(I)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v5, "enterprise.container.INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "containerid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v6, 0x15c3

    const/high16 v7, 0x4800

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "containerid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v6, 0x15c4

    const/high16 v7, 0x4800

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 9

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    filled-new-array {v3, v5}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_0

    aget-object v3, v0, v1

    aput v1, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_1

    aget-object v3, v0, v4

    aput v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    aget-object v5, v0, v1

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    aget v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    aget-object v6, v0, v1

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    add-int/lit8 v7, v2, -0x1

    aget v7, v3, v7

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v8, v2, -0x1

    invoke-interface {p2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v3, v8, :cond_2

    move v3, v4

    :goto_4
    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    aget-object v3, v0, v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    aget v3, v3, v4

    return v3
.end method

.method private containsForbiddenStringDistance(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containsForbiddenStringDistance() minDistance= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_2

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "Set Minimum change Length is false-Since if its not set,we return true for time bieng"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-ge v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .locals 7

    const/4 v5, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :try_start_0
    new-instance v4, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    goto :goto_0
.end method

.method private getCurrentPasswordHash(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v2, v7

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "verifyStoredData() Length old the RandomAccessFile: length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v5, v2, [B

    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-result v1

    if-gtz v1, :cond_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_0
    move-object v3, v4

    move-object v5, v6

    :goto_1
    return-object v5

    :cond_1
    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    :cond_2
    :goto_2
    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "File Not Found. Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3
    :goto_4
    move-object v5, v6

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    :goto_6
    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_3

    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    goto :goto_6

    :catchall_0
    move-exception v6

    :goto_8
    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_4
    :goto_9
    throw v6

    :catch_5
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_6
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    goto :goto_6

    :catch_7
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_8
    move-exception v0

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close hash data stream"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_8

    :catch_9
    move-exception v0

    move-object v3, v4

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v3, v4

    goto :goto_5

    :catch_b
    move-exception v0

    move-object v3, v4

    goto :goto_3
.end method

.method private getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSalt()Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x0

    const-string v3, "container.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const-string v3, "container.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setLong(Ljava/lang/String;J)V

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private passwordToHash(Ljava/lang/String;)[B
    .locals 14

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSalt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    :goto_1
    const/16 v10, 0x400

    if-ge v4, v10, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v10, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "passwordToHash time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v1, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v10, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private passwordToHashOriginal(Ljava/lang/String;)[B
    .locals 9

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeContainerCredentialFiles(ILjava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Removed Successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendAdminCommandLocked(ILandroid/app/admin/DeviceAdminInfo;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "expiration"

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationDate(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setActivePasswordState(IIIIIIIIIZIII)V
    .locals 14

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setActivePasswordState(IIIIIIIIIZIII)V

    return-void
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private setOldPasswordToHistory(I[B)V
    .locals 2

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOldPasswordToHistory()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOldPasswordToHistory(): PasswordHash is null"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setOldPasswordToHistory(I[B)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOldPasswordToHistory(): Password History Length is Zero"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPasswordStateInfoCache(IIIIIIIIIZIII)V
    .locals 2

    new-instance v0, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    invoke-direct {v0}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setContainerId(I)V

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordQuality(I)V

    invoke-virtual {v0, p3}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLength(I)V

    invoke-virtual {v0, p4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordUppercase(I)V

    invoke-virtual {v0, p5}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLowercase(I)V

    invoke-virtual {v0, p6}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLetters(I)V

    invoke-virtual {v0, p7}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNumeric(I)V

    invoke-virtual {v0, p8}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNonLetter(I)V

    invoke-virtual {v0, p9}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSymbols(I)V

    invoke-virtual {v0, p10}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSimple(Z)V

    invoke-virtual {v0, p11}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharSeqLength(I)V

    invoke-virtual {v0, p12}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setDigitSeqLength(I)V

    invoke-virtual {v0, p13}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharMaxOccurrencesCount(I)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/manager/StateManager;->updatePasswordStateInfoCache(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized setPasswordStatusInActive(Landroid/content/Context;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p2, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New State :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v2, "Cache or Database instances are Null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer Task password status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private storeHashofData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sget v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v4, v2, v6, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :goto_0
    const/4 v3, 0x0

    :cond_1
    :goto_1
    return v5

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "File Not Found. Unable to store the data"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    :goto_3
    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_4
    :try_start_5
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to store the data"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    goto :goto_3

    :catch_4
    move-exception v1

    :goto_5
    :try_start_7
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    :catch_5
    move-exception v1

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    goto :goto_3

    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v3, :cond_2

    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    const/4 v3, 0x0

    :cond_2
    :goto_7
    throw v6

    :catch_6
    move-exception v1

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close store hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_7
    move-exception v1

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to close store hash data stream"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_6

    :catch_8
    move-exception v1

    move-object v3, v4

    goto :goto_5

    :catch_9
    move-exception v1

    move-object v3, v4

    goto :goto_4

    :catch_a
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method private storePassword(ILjava/lang/String;)V
    .locals 33

    if-nez p2, :cond_0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "storePassword() Password is Null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rw"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storeHashofData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "Hash of Password stored"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v32, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v32

    if-ge v0, v2, :cond_5

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    const/16 v2, 0x41

    move/from16 v0, v30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    move/from16 v0, v30

    if-gt v0, v2, :cond_2

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    :goto_3
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    :cond_1
    :try_start_1
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to store the Hash of Password"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v31

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v2, 0x61

    move/from16 v0, v30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    move/from16 v0, v30

    if-gt v0, v2, :cond_3

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/16 v2, 0x30

    move/from16 v0, v30

    if-lt v0, v2, :cond_4

    const/16 v2, 0x39

    move/from16 v0, v30

    if-gt v0, v2, :cond_4

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v12, 0x1

    :goto_4
    const-string v2, "\\w(?=\\w{1,})"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSequenceLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const-string v2, "\\d(?=\\d{1,})"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSequenceLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumCharOccurrencesCount(Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setActivePasswordState(IIIIIIIIIZIII)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordStateInfoCache(IIIIIIIIIZIII)V

    goto/16 :goto_0

    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    :cond_8
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, p0

    move/from16 v17, p1

    invoke-direct/range {v16 .. v29}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setActivePasswordState(IIIIIIIIIZIII)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v16, p0

    move/from16 v17, p1

    invoke-direct/range {v16 .. v29}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordStateInfoCache(IIIIIIIIIZIII)V

    goto/16 :goto_0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6

    const-string v0, "0123456789ABCDEF"

    const-string v2, ""

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private verifyStoredData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v2, v7

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "verifyStoredData() Length old the RandomAccessFile: length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v5, v2, [B

    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move-result v1

    if-gtz v1, :cond_2

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_0
    move-object v3, v4

    :cond_1
    :goto_1
    return v6

    :cond_2
    :try_start_3
    sget v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    if-ne v2, v7, :cond_4

    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHashOriginal(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-result v6

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_3
    :goto_2
    move-object v3, v4

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    move-result v6

    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    :cond_5
    :goto_3
    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_4
    :try_start_7
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "File Not Found. Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    :goto_5
    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_6
    :try_start_9
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to verify the data"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_1

    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    goto :goto_5

    :catch_4
    move-exception v0

    :goto_7
    :try_start_b
    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_1

    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_1

    :catch_5
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    goto :goto_5

    :catchall_0
    move-exception v6

    :goto_8
    if-eqz v3, :cond_6

    :try_start_d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_6
    :goto_9
    throw v6

    :catch_6
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_7
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_8
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_9
    move-exception v0

    sget-object v7, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "Unable to close verify hash data stream"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v3, v4

    goto :goto_7

    :catch_b
    move-exception v0

    move-object v3, v4

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v3, v4

    goto/16 :goto_4
.end method


# virtual methods
.method public checkMaximumCharacterOccurrences(ILjava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v0

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMaximumCharacterOccurrences() maxOccurrence= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumCharOccurrencesCount(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkMaximumCharacterSequenceLength(ILjava/lang/String;)Z
    .locals 12

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v4

    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMaximumCharacterSequenceLength() maxLength= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v4, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\w(?=\\w{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",})"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v1, v9, v0

    if-nez v1, :cond_2

    const/4 v7, 0x0

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v4, 0x5

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v9, 0x51

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_5

    add-int v9, v0, v7

    int-to-char v0, v9

    const/16 v9, 0x5c

    if-ne v0, v9, :cond_4

    const-string v9, "\\\\"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-lez v1, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v9, 0x45

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int v9, v8, v4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public checkMaximumNumericSequenceLength(ILjava/lang/String;)Z
    .locals 12

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v3

    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMaximumNumericSequenceLength() length= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v3, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\d(?=\\d{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",})"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v1, v9, v0

    if-nez v1, :cond_2

    const/4 v7, 0x0

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x5

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v9, 0x51

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_5

    add-int v9, v0, v7

    int-to-char v0, v9

    const/16 v9, 0x5c

    if-ne v0, v9, :cond_4

    const-string v9, "\\\\"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-lez v1, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v9, 0x45

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int v9, v8, v3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public checkMinimumCharacterChangeLength(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "checkMinimumCharacterChangeLength"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containsForbiddenStringDistance(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkOldPasswordHistory(ILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory(): Password is null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, v0}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->checkOldPasswordHistory(I[B)Z

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory(): passwordToHash is null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "checkOldPasswordHistory(): Password History Length is Zero"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChooseLockPassword has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method public checkSequentialChars(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x1

    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v1, :cond_2

    const-string v5, "0123456789"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "9876543210"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "ChooseLockPassword has Sequential password"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "ChooseLockPassword has Sequential password"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public executeTimeout(I)V
    .locals 5

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeoutRunnable deactivating password for container id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordStatusInActive(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->killTimer(I)V

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "deactivating password firing intentcom.samsung.redex.proxy.activity.show_dialog"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.redex.proxy.activity.show_dialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleUnmountTimer(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->killTimer(I)V

    goto :goto_0
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowBluetoothMode(ILandroid/content/ComponentName;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowBrowser(ILandroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowCamera(ILandroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowDesktopSync(ILandroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowInternetSharing(ILandroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowIrDA(ILandroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowStorageCard(ILandroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowTextMessaging(ILandroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAllowWifi(ILandroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(I)I

    move-result v0

    return v0
.end method

.method public getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    invoke-virtual {v0, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    invoke-virtual {v0, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getPasswordPolicy()Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaximumCharOccurrencesCount(Ljava/lang/String;)I
    .locals 10

    sget-object v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v9, "getMaximumCharacterOccurrencesCount()"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object v0, v2

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-char v1, v0, v5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ge v7, v3, :cond_0

    move v7, v3

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return v7
.end method

.method public getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    .locals 4

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumFailedPasswordsForDisable...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .locals 4

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumFailedPasswordsForWipe...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 5

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "getMaximumTimeToLock()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaximumTimeToLock is getting called from container with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millisecs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    :goto_0
    return-wide v2

    :cond_0
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "getMaximumTimeToLock Failed "

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "getMaximumTimeToLock: returning default value: 30 minutes"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0x1b7740

    goto :goto_0
.end method

.method public getMinPasswordComplexChars(ILandroid/content/ComponentName;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J
    .locals 6

    const-wide/16 v2, 0x0

    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "getPasswordEnabledContainerLockTimeout()"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v4, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordEnabledContainerLockTimeout is getting called from container with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millisecs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    :goto_0
    return-wide v2

    :cond_0
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "getPasswordEnabledContainerLockTimeout Failed "

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "getPasswordEnabledContainerLockTimeout: returning default value: 0 minutes"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPasswordExpiration(ILandroid/content/ComponentName;)J
    .locals 2

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationDate(ILandroid/content/ComponentName;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .locals 2

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 2

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "getPasswordHistory DOES EXISTS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "getPasswordHistory does NOT exists"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMaximumLength(II)I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 4

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLength(): containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v2, "getPasswordMinimumLength(): mEcppStorageProvider is NULL"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .locals 2

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .locals 2

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 2

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v0

    const/high16 v1, 0x5

    if-ge v0, v1, :cond_0

    if-nez p2, :cond_0

    const/high16 v0, 0x5

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSequenceLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v10, "getSequenceLength()"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    if-le v9, v8, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v9, v3, -0x1

    if-ge v8, v9, :cond_3

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v2, v9, v0

    if-nez v1, :cond_2

    move v7, v2

    :cond_2
    if-ne v7, v2, :cond_3

    const/4 v9, -0x1

    if-lt v2, v9, :cond_3

    const/4 v9, 0x1

    if-gt v2, v9, :cond_3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    if-ge v5, v1, :cond_0

    move v5, v1

    goto :goto_0

    :cond_4
    if-lez v5, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    return v5
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isActivePasswordSufficient(IZ)Z
    .locals 9

    const/high16 v8, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordStateInfoCache(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordStateInfoFromDB(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "isActivePasswordSufficient() : Cache not found!!"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordQuality()I

    move-result v5

    if-ge v5, v1, :cond_2

    if-ne v1, v8, :cond_0

    :cond_2
    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordLength()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_0

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->isPasswordSimple()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "isActivePasswordSufficient() : simple password is not allowed"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_7

    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "isActivePasswordSufficient called from MDM"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordForbidden(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "forbidden password in use"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getCharSeqLength()I

    move-result v5

    if-le v5, v0, :cond_5

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "Character Sequence length exceeded"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getDigitSeqLength()I

    move-result v5

    if-le v5, v0, :cond_6

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "Digit Sequence length exceeded"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getCharMaxOccurrencesCount()I

    move-result v5

    if-le v5, v0, :cond_7

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "Maximum Character occurence exceeded"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-eq v1, v8, :cond_8

    move v4, v3

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordUppercase()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordLowercase()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordLetters()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordNumeric()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordSymbols()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getPasswordNonLetter()I

    move-result v5

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v6

    if-lt v5, v6, :cond_9

    :goto_1
    move v4, v3

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto :goto_1
.end method

.method public isPasswordContainsValidChars(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-le v0, v2, :cond_0

    const/16 v2, 0x7f

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isPasswordForbidden(ILjava/lang/String;)Z
    .locals 7

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "r"

    invoke-direct {p0, v5, v6}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getCurrentPasswordHash(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    :cond_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    return v4

    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "forbiddenStringArray is NULL"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->isPasswordVisisbilityEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized killTimer(I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "containerid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v6, 0x15c4

    const/high16 v7, 0x4800

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "containerid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v6, 0x15c4

    const/high16 v7, 0x4800

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method protected declared-synchronized killUnmountTimer(I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "containerid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v6, 0x15c4

    const/high16 v7, 0x4800

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onChangePasswordSuccess(I)V
    .locals 8

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "onChangePasswordSuccess() changepassword succeeded sending ACTION_PASSWORD_SUCCEEDED to admins"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_1

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "onChangePasswordSuccess() mActiveAdminList is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "android.app.action.ACTION_PASSWORD_CHANGED"

    invoke-direct {p0, p1, v2, v6}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->sendAdminCommandLocked(ILandroid/app/admin/DeviceAdminInfo;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public passwordHasExpired(I)Z
    .locals 13

    const-wide/16 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-nez v6, :cond_0

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "passwordHasExpired error: mStateManager is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v8

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationDate(I)J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v4

    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "passwordHasExpired(): checking if password has expired: passwordExpirationTimeout = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", passwordExpirationDate = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", (now >= passwordExpirationDate) = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    cmp-long v6, v0, v2

    if-ltz v6, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v6, v4, v11

    if-lez v6, :cond_2

    cmp-long v6, v2, v11

    if-lez v6, :cond_2

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v8, "passwordHasExpired(): password has expired"

    invoke-static {v6, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v7, "passwordHasExpired(): password still valid"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeActiveAdmin(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeActiveAdmin(): remove admin from Eccp DB succed: admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeActiveAdmin(): remove admin from Eccp DB failed: admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeContainer(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->cancelPasswordExpirationAlarm(I)V

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->removeContainerCredentialFiles(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeContainer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "removeContainer(): remove container from Eccp DB succed"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v1, "removeContainer(): remove container from Eccp DB failed"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt(I)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): failedPasswordAttempts max  --1"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v3

    invoke-virtual {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v2

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v5

    sget-object v6, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v6}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): getting failedPasswordAttempts from DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(II)Z

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(Landroid/content/Context;II)Z

    if-lez v3, :cond_1

    if-lt v1, v3, :cond_1

    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): failedPasswordAttempts max than maximumFailedPasswordsForWipe!!: WIPING(Removing container)"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): getting failedPasswordAttempts from mStateManager"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(I)I

    move-result v1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    if-lt v1, v2, :cond_2

    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): failedPasswordAttempts max than maximumFailedPasswordsForDisable!!: DISABLING container"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-gtz v3, :cond_3

    if-gtz v2, :cond_3

    const/16 v5, 0xa

    if-lt v1, v5, :cond_3

    sget-object v5, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v6, "reportFailedPasswordAttempt(): failedPasswordAttempts is more than 10 and no policy set Container will get locked. And only admin can remove the lock"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v5, "reportFailedPasswordAttempt(): failedPasswordAttempts max  --2"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(I)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "reportSuccessfulPasswordAttempt(): resetting failedPasswordAttempts to 0"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(II)Z

    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(Landroid/content/Context;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "reportSuccessfulPasswordAttempt(): resetting --11"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetPassword(ILjava/lang/String;I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getKnoxPasswordPolicy(I)Lcom/sec/enterprise/knox/ContainerPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/ContainerPasswordPolicy;->enforcePwdChange()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public satisfyFIPSPassword()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected declared-synchronized scheduleTimer(Landroid/content/Context;IZ)V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "containerid"

    invoke-virtual {v1, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v10, 0x15c4

    const/high16 v11, 0x4800

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerVerifyOnlyOnChangeMode(I)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v9, 0x1

    if-ne p3, v9, :cond_1

    const-wide/16 v5, 0x1

    :goto_1
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-gez v9, :cond_2

    :try_start_1
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleTimer(): cached timeout not updated: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Updating it with the MDM DB version"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {p0, p2, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v5

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9, p2, v5, v6}, Lcom/sec/knox/container/manager/StateManager;->setMaximumTimeToLock(IJ)Z

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleTimer(): force restart: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setting am scheduleTimer() timeout value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x3

    add-long v10, v2, v5

    invoke-virtual {v0, v9, v10, v11, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_1
    :try_start_2
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9, p2}, Lcom/sec/knox/container/manager/StateManager;->getMaximumTimeToLock(I)J

    move-result-wide v5

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleTimer(): cached timeout is updated: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method protected declared-synchronized scheduleTimerOnUserInteraction(Landroid/content/Context;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v3, "State is active reseting timer"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimer(Landroid/content/Context;IZ)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized scheduleUnmountTimer(I)V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const-string v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "containerid"

    invoke-virtual {v1, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/16 v10, 0x15c5

    const/high16 v11, 0x4800

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v9, 0x0

    invoke-virtual {p0, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v5

    sget-object v9, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheduleUnmountTimer(): timeoutMm: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_0

    const/4 v9, 0x3

    add-long v10, v2, v5

    invoke-virtual {v0, v9, v10, v11, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public setAllowBluetoothMode(ILandroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowBluetoothMode(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setAllowBrowser(ILandroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowBrowser(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowCamera(ILandroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowCamera(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowDesktopSync(ILandroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowDesktopSync(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowInternetSharing(ILandroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowInternetSharing(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowIrDA(ILandroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowIrDA(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowStorageCard(ILandroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowStorageCard(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowTextMessaging(ILandroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowTextMessaging(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setAllowWifi(ILandroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setAllowWifi(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public setExpirationAlarmCheck(I)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationDate(I)J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v24, v15, v20

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    if-nez v19, :cond_1

    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v29, "setExpirationAlarmCheck() mActiveAdminList is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v23

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v0, v4, :cond_4

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    if-nez v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v13

    if-eqz v13, :cond_2

    const/16 v28, 0x6

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v28

    if-eqz v28, :cond_2

    const-wide/16 v28, 0x0

    cmp-long v28, v11, v28

    if-lez v28, :cond_2

    const-wide/16 v28, 0x0

    cmp-long v28, v15, v28

    if-lez v28, :cond_2

    const-wide/32 v28, 0x19bfcc00

    sub-long v28, v15, v28

    cmp-long v28, v20, v28

    if-ltz v28, :cond_2

    if-eqz v23, :cond_2

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    if-eqz v28, :cond_2

    const-string v28, "android.app.action.ACTION_PASSWORD_EXPIRING"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v13, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->sendAdminCommandLocked(ILandroid/app/admin/DeviceAdminInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v14

    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception occurred at setExpirationAlarmCheck(()"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-wide/16 v28, 0x0

    cmp-long v28, v15, v28

    if-nez v28, :cond_6

    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string v29, "No expirations are currently configured:  Cancel alarm"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    :goto_3
    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "setExpirationAlarmCheckLocked alarmTime "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " expiration "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " now "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " timeToExpire "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "alarm"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    new-instance v18, Landroid/content/Intent;

    const-string v28, "enterprise.container.INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v28, "containerid"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x15c3

    const/high16 v30, 0x4800

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v18

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v28, 0x0

    cmp-long v28, v8, v28

    if-eqz v28, :cond_5

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_6
    const-wide/16 v28, 0x0

    cmp-long v28, v24, v28

    if-gtz v28, :cond_7

    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "The password has already expired:  fire intent now. timeToExpire"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v8, v20

    goto/16 :goto_3

    :cond_7
    const-wide/32 v28, 0x5265c00

    rem-long v6, v24, v28

    const-wide/16 v28, 0x0

    cmp-long v28, v6, v28

    if-nez v28, :cond_8

    const-wide/32 v6, 0x5265c00

    :cond_8
    add-long v8, v20, v6

    sget-object v28, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Selecting the next alarm time:  Roll forward to the next 24 hour multiple before alarmInterval "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception v28

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28
.end method

.method public setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaximumFailedPasswordsForDisable ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaximumFailedPasswordsForWipe ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    .locals 7

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMaximumTimeToLock Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1}, Lcom/sec/knox/container/manager/StateManager;->getMaximumTimeToLock(I)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1, v0, v1}, Lcom/sec/knox/container/manager/StateManager;->setMaximumTimeToLock(IJ)Z

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimer(Landroid/content/Context;IZ)V

    :cond_0
    return-void
.end method

.method public setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    return-void
.end method

.method public setPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;J)V
    .locals 7

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPasswordEnabledContainerLockTimeout Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;J)V

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordEnabledContainerLockTimeout(I)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1, v0, v1}, Lcom/sec/knox/container/manager/StateManager;->setPasswordEnabledContainerLockTimeout(IJ)Z

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimer(Landroid/content/Context;IZ)V

    :cond_0
    return-void
.end method

.method public setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V
    .locals 11

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    sget-object v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setPasswordExpirationTimeout() timeout = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2, p3, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v8, p3, v6

    if-lez v8, :cond_1

    add-long v2, v0, p3

    :goto_0
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2, v2, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordExpirationDate(ILandroid/content/ComponentName;J)V

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide p3

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v4

    cmp-long v8, p3, v4

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1, p3, p4}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationTimeout(IJ)Z

    cmp-long v8, p3, v6

    if-lez v8, :cond_2

    add-long v2, v0, p3

    :goto_1
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationDate(IJ)Z

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    :cond_0
    return-void

    :cond_1
    move-wide v2, v6

    goto :goto_0

    :cond_2
    move-wide v2, v6

    goto :goto_1
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeOldestPasswordIfRequired(II)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPasswordMinimumLength(): IS NULL"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordQuality(ILandroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityEnabled(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordVisibilityEnabled(IZ)V

    :cond_0
    return-void
.end method

.method public setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method public storeUserCredentials(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storePassword(ILjava/lang/String;)V

    return-void
.end method

.method public updatePassword(ILjava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {p0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getCurrentPasswordHash(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storePassword(ILjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setOldPasswordToHistory(I[B)V

    return-void
.end method

.method public updatePasswordExpirationTimeout(ILandroid/content/ComponentName;)V
    .locals 11

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v4, v2, v6

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mEcppStorageProvider:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-virtual {v8, p1, p2, v4, v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setPasswordExpirationDate(ILandroid/content/ComponentName;J)V

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getPasswordExpirationTimeout(I)J

    move-result-wide v0

    cmp-long v8, v6, v0

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1, v4, v5}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationDate(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v8, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updatePasswordExpirationTimeout(): No admin entry in DB OR no timeout specified for admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verifyPassword(ILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifyPassword() Password is Null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->containerPasswordFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    invoke-direct {p0, v2, v3, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyStoredData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
