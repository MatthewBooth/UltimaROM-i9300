.class public Lcom/android/server/TranscloudMonitorService;
.super Ljava/lang/Object;
.source "TranscloudMonitorService.java"


# static fields
.field private static final SIGNATURES:[Landroid/content/pm/Signature; = null

.field private static final TAG:Ljava/lang/String; = "Transcloud"

.field protected static final TRANSCLOUD_DEFAULT_SYSTEM_VERSION:I = 0x1

.field protected static final TRANSCLOUD_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.service.transcloud"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;

.field private transcloud:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "3082028d308201f6a003020102020451d6e699300d06092a864886f70d0101050500308189310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373311e301c060355040b13154d6f62696c6520436f6d6d756e69636174696f6e733119301706035504030c10522644205465616d202d204b6f7265613020170d3133303730353135333033335a180f33303132313130353135333033335a308189310b3009060355040613024b523111300f060355040813084779656f6e676769310e300c060355040713055375776f6e311c301a060355040a131353616d73756e6720456c656374726f6e696373311e301c060355040b13154d6f62696c6520436f6d6d756e69636174696f6e733119301706035504030c10522644205465616d202d204b6f72656130819f300d06092a864886f70d010101050003818d0030818902818100a6e89d098ec79db8b54f962d66f1dace845df86bd14dbe05d544340f7f664ed07b8ea12f1647f2c5c1123bd09def349ffcf627a118d2ba6aaefc98521483e6d27f13487b7a675f6357a82da65da9e057808057617a1c74813954d8863267a3cad97455b19373c9ca48c48044f4e610e7750c24bd63601117e76e7344183c72d70203010001300d06092a864886f70d01010505000381810081743a7e1b1b844668dd5f1432e0b2556229e42a96acfdd656cabeffcb3071b7fe2826d615ec9334ea384c9ccf80f2336c39c751fbead8094b0b7da3bac48762f359f23c92e7c9a78e9fc790850aceb8318db48b53e1214ff0ed6b0b94a137622ced7d21190a6696cd4655900673fa7ff1e5214f06f68ca63be0b5d6ca99d74f"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/TranscloudMonitorService;->SIGNATURES:[Landroid/content/pm/Signature;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TranscloudMonitorService;->transcloud:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/TranscloudMonitorService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/TranscloudMonitorService;->mMainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/TranscloudMonitorService;->checkTranscloudManagerService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/TranscloudMonitorService;->addTranscloudManagerService()Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Transcloud"

    const-string v1, "addService failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/TranscloudMonitorService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/TranscloudMonitorService;->addTranscloudManagerService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/TranscloudMonitorService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/TranscloudMonitorService;->systemReadyTranscloudManagerService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/TranscloudMonitorService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TranscloudMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addTranscloudManagerService()Z
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "Transcloud"

    const-string v7, "add TranscloudManagerService..."

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/server/TranscloudMonitorService;->mContext:Landroid/content/Context;

    const-string v7, "com.samsung.android.service.transcloud"

    const/4 v8, 0x3

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v4, "com.samsung.android.service.transcloud.system.TranscloudManagerService"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-class v8, Landroid/os/Handler;

    aput-object v8, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/TranscloudMonitorService;->mContext:Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/TranscloudMonitorService;->mMainHandler:Landroid/os/Handler;

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    iput-object v4, p0, Lcom/android/server/TranscloudMonitorService;->transcloud:Landroid/os/IBinder;

    const-string/jumbo v4, "transcloud"

    iget-object v7, p0, Lcom/android/server/TranscloudMonitorService;->transcloud:Landroid/os/IBinder;

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    :goto_0
    return v4

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/android/server/TranscloudMonitorService;->registerTranscloudInstallObserver()V

    const-string v4, "Transcloud"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure add TranscloudManagerService"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v6

    goto :goto_0
.end method

.method private checkTranscloudManagerService()Z
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/TranscloudMonitorService;->isTranscloudInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v3, "Transcloud"

    const-string v4, "Failure starting TranscloudManagerService - transcloud not installed."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/TranscloudMonitorService;->registerTranscloudInstallObserver()V

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/TranscloudMonitorService;->isSignatureMatch()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v3, "Transcloud"

    const-string v4, "Failure starting TranscloudManagerService - signature miss match."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/TranscloudMonitorService;->registerTranscloudInstallObserver()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isSignatureMatch()Z
    .locals 12

    const-string v9, "eng"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v7, 0x1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/TranscloudMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.samsung.android.service.transcloud"

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_0

    move-object v0, v8

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    const/4 v2, 0x0

    :goto_2
    sget-object v9, Lcom/android/server/TranscloudMonitorService;->SIGNATURES:[Landroid/content/pm/Signature;

    array-length v9, v9

    if-ge v2, v9, :cond_2

    sget-object v9, Lcom/android/server/TranscloudMonitorService;->SIGNATURES:[Landroid/content/pm/Signature;

    aget-object v9, v9, v2

    invoke-virtual {v9, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_3

    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v9, "Transcloud"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t find transcloud package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isTranscloudInstalled()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/TranscloudMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.service.transcloud"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerTranscloudInstallObserver()V
    .locals 3

    const-string v1, "Transcloud"

    const-string v2, "register transcloud install observer..."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TranscloudMonitorService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/TranscloudMonitorService$1;

    invoke-direct {v2, p0}, Lcom/android/server/TranscloudMonitorService$1;-><init>(Lcom/android/server/TranscloudMonitorService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private systemReadyTranscloudManagerService()Z
    .locals 13

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "Transcloud"

    const-string/jumbo v9, "systemReady TranscloudManagerService..."

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v8, p0, Lcom/android/server/TranscloudMonitorService;->transcloud:Landroid/os/IBinder;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/TranscloudMonitorService;->mContext:Landroid/content/Context;

    const-string v9, "com.samsung.android.service.transcloud"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v8, "com.samsung.android.service.transcloud.system.TranscloudManagerService"

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v8, "com.samsung.android.service.transcloud.ITranscloudManager$Stub"

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v8, "Transcloud"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "managerServiceClazz:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Transcloud"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "managerClazz:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Transcloud"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "transcloud:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/TranscloudMonitorService;->transcloud:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "asInterface"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/os/IBinder;

    aput-object v11, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/TranscloudMonitorService;->transcloud:Landroid/os/IBinder;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v8, "Transcloud"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serviceClazz:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "systemReady"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v6

    :cond_0
    const-string v6, "Transcloud"

    const-string v8, "Failure making transcloud manager service systemReady - transcloud is null"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/android/server/TranscloudMonitorService;->registerTranscloudInstallObserver()V

    const-string v6, "Transcloud"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure starting TranscloudManagerService"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    goto :goto_0
.end method


# virtual methods
.method public systemRunning()V
    .locals 3

    const-string v1, "Transcloud"

    const-string/jumbo v2, "systemRunning TranscloudManagerService..."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/TranscloudMonitorService;->systemReadyTranscloudManagerService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Transcloud"

    const-string/jumbo v2, "systemRunning ok.."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "Transcloud"

    const-string/jumbo v2, "systemRunning failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
