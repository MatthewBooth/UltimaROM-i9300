.class Lcom/android/server/pm/PackageScanState;
.super Ljava/lang/Object;
.source "PackageScanState.java"


# static fields
.field private static final is3LMAllowed:Z


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private final mTempPackage:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageScanState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iput-object p2, p0, Lcom/android/server/pm/PackageScanState;->mTempPackage:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTempPackage()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
