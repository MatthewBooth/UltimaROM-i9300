.class public Lcom/android/server/ssrm/SortingMachine;
.super Ljava/lang/Object;
.source "SortingMachine.java"


# static fields
.field public static final CATEGORY_BROWSER:I = 0x0

.field public static final CATEGORY_GHEAVY_CONTENT:I = 0x2

.field public static final CATEGORY_HEAVY_CONTENT:I = 0x1

.field public static final CATEGORY_MAX:I = 0x4

.field public static final CATEGORY_PRELOAD:I = 0x3

.field private static final DB_FULL_PATH:Ljava/lang/String; = "/data/system/ssrm_secure.db"

.field private static HARDCODED_PRELOAD_PACKAGES:[Ljava/lang/String;

.field private static sInstance:Lcom/android/server/ssrm/SortingMachine;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBootComplete:Z

.field private final mContext:Landroid/content/Context;

.field private final mCpuCoreHelper:Landroid/os/DVFSHelper;

.field private final mCpuHelper:Landroid/os/DVFSHelper;

.field private mId:Ljava/lang/String;

.field private final mTables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVmHeapSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.knoxlauncher"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.android.app.servicemodeapp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.system"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.packageinstaller"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.samsung.preloadapp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.google.android.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.android.app.popupuireceiver"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.google.android.gsf.login"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sec.android.app.taskmanager"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.samsung.mobilecare"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->HARDCODED_PRELOAD_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSRMv2:SortingMachine"

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/SortingMachine;->mVmHeapSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/SortingMachine;->mBootComplete:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge v10, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-nez v0, :cond_1

    new-instance v6, Lcom/android/server/ssrm/AESEncryption;

    invoke-direct {v6}, Lcom/android/server/ssrm/AESEncryption;-><init>()V

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/ssrm/AESEncryption;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "7373726d5f746573745f6b6579"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    :cond_2
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    const-string v2, "SSRM_PKG_OPT"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const/4 v2, 0x0

    aget v2, v12, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_3
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    const-string v2, "SSRM_PKG_OPT2"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v7, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_secure.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/ssrm/SortingMachine;->scanAndCreateDb()V

    :cond_5
    :try_start_0
    const-string v0, "dalvik.vm.heapsize"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    const-string v0, "m"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    array-length v0, v13

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    const/4 v0, 0x0

    aget-object v0, v13, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/SortingMachine;->mVmHeapSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ssrm/SortingMachine;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/SortingMachine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    return-object v0
.end method

.method private getNonPreloadApplications(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v8, 0x20

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x80

    :try_start_0
    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getPackageList(I)Ljava/lang/String;
    .locals 7

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isEmailApp(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.email"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/ssrm/SortingMachine;->onReceiveImpl(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private registerBrowserPackages()V
    .locals 8

    iget-object v6, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "http://"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v6, 0x200

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reviewNonPreloadApplications(Ljava/util/ArrayList;Ljava/util/Hashtable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v7, 0x40

    :try_start_0
    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->hashCode()I

    move-result v1

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->stringCheckFromPms(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    :cond_1
    invoke-virtual {p2, v3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private scanAndCreateDb()V
    .locals 10

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/SortingMachine;->getNonPreloadApplications(Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    invoke-direct {p0, v0, v5}, Lcom/android/server/ssrm/SortingMachine;->reviewNonPreloadApplications(Ljava/util/ArrayList;Ljava/util/Hashtable;)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->writeAppListToDb()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v6, "SSRMv2:SortingMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scanAndCreateDb:: elapsed time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v1, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bootComplete()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/SortingMachine;->mBootComplete:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/SortingMachine;->mBootComplete:Z

    invoke-direct {p0}, Lcom/android/server/ssrm/SortingMachine;->registerBrowserPackages()V

    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->registerPreloadPackages()V

    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->readAppListFromDb()V

    goto :goto_0
.end method

.method public isAppInCategory(ILjava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge p1, v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isBrowserApp(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isHeavyApp(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPreloadApp(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public onReceiveImpl(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SSRMv2:SortingMachine"

    const-string v6, "onReceiveImpl:: ACTION_PACKAGE_ADDED"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/ssrm/SortingMachine;->registerBrowserPackages()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SSRMv2:SortingMachine"

    const-string v6, "onReceiveImpl:: ACTION_PACKAGE_REMOVED"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->writeAppListToDb()V

    goto :goto_0
.end method

.method parseDex(Ljava/io/ByteArrayOutputStream;)Lcom/android/server/ssrm/Dex;
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    new-instance v1, Lcom/android/server/ssrm/Dex;

    invoke-direct {v1, v3}, Lcom/android/server/ssrm/Dex;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "SSRMv2:SortingMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->readHeaderFileSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SSRMv2:SortingMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "string ids size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->readHeaderStringIdsSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SSRMv2:SortingMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "string ids offset : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->readHeaderStringIdsOffset()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/ssrm/Dex;->parseStringItems()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    const-string v4, "SSRMv2:SortingMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseDex:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method

.method readAppListFromDb()V
    .locals 21

    new-instance v19, Ljava/io/File;

    const-string v20, "/data/system/ssrm_secure.db"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    move-result-object v15

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->getWritableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v19

    if-eqz v19, :cond_5

    :try_start_0
    const-string v19, "SELECT * FROM t ;"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v7

    move-object v11, v10

    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "category"

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v19, "package_list"

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v19, "heavy_app"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    :goto_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v7

    move-object v11, v10

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v19, "gheavy_app"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v7, v8

    move-object v10, v11

    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_5
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Hashtable;

    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v2, v18

    array-length v14, v2

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_7

    aget-object v17, v2, v13

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :catch_0
    move-exception v6

    :goto_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Hashtable;

    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v2, v18

    array-length v14, v2

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v14, :cond_0

    aget-object v17, v2, v13

    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :catch_1
    move-exception v6

    move-object v7, v8

    move-object v10, v11

    goto :goto_4

    :cond_9
    move-object v7, v8

    move-object v10, v11

    goto/16 :goto_1
.end method

.method registerPreloadPackages()V
    .locals 15

    iget-object v12, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Hashtable;

    iget-object v12, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v12, 0x20

    invoke-virtual {v7, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x80

    :try_start_0
    invoke-virtual {v7, v8, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_0

    invoke-virtual {v11, v8, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v12, "SSRMv2:SortingMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "e = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/ssrm/SortingMachine;->HARDCODED_PRELOAD_PACKAGES:[Ljava/lang/String;

    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v10, v1, v3

    invoke-virtual {v11, v10, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/16 v10, 0x2710

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "SSRMv2:SortingMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apkPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v5, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "dev.ssrm.analysis"

    const-string v6, "none"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v5, "dynamic"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sput-boolean v8, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z

    sput-boolean v9, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z

    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/server/ssrm/SortingMachine;->mVmHeapSize:I

    const/16 v6, 0x80

    if-lt v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/SortingMachine;->reviewPackageForStaticAnalysis(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->release()V

    iget-object v5, p0, Lcom/android/server/ssrm/SortingMachine;->mCpuCoreHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->release()V

    :cond_3
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/SortingMachine;->reviewPackageForDynamicAnalysis(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v5, "SSRMv2:SortingMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Elapsed time to optimize DEX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_2

    const-string/jumbo v5, "static"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sput-boolean v9, Lcom/android/server/ssrm/Feature;->STATIC_ANALYSIS:Z

    sput-boolean v8, Lcom/android/server/ssrm/Feature;->DYNAMIC_ANALYSIS:Z

    goto :goto_1
.end method

.method public reviewPackageForDynamicAnalysis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SSRMv2:SortingMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apkPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reviewPackageForStaticAnalysis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v10, 0x40

    invoke-virtual {v8, p2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/content/pm/Signature;->hashCode()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->stringCheckFromPms(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    :cond_0
    const/4 v6, 0x1

    :cond_1
    const/4 v10, 0x5

    if-ne v9, v10, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    if-eqz v5, :cond_4

    const-string v10, "SSRMv2:SortingMachine"

    const-string v11, "@ptimization is done."

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, p2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->writeAppListToDb()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string v10, "SSRMv2:SortingMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    const-string v10, "SSRMv2:SortingMachine"

    const-string v11, "@ptimization is done."

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    invoke-virtual {v3, p2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const-string v10, "SSRMv2:SortingMachine"

    const-string v11, "Optimization is done."

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method writeAppListToDb()V
    .locals 12

    const/4 v11, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/SortingMachine;->getPackageList(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/SortingMachine;->getPackageList(I)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/io/File;

    const-string v9, "/data/system/ssrm_org.db"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    :cond_0
    iget-object v9, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/ssrm/SsrmDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "category"

    const-string v10, "heavy_app"

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "package_list"

    invoke-virtual {v6, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "t"

    invoke-virtual {v0, v9, v11, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "category"

    const-string v10, "gheavy_app"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "package_list"

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "t"

    invoke-virtual {v0, v9, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :try_start_0
    iget-object v9, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ssrm/SortingMachine;->mId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->generateSecureDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    :cond_2
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
