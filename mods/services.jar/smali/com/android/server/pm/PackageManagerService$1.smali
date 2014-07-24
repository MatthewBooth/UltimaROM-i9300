.class final Lcom/android/server/pm/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/pm/PackageManagerService$VerifierPackage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/pm/PackageManagerService$VerifierPackage;Lcom/android/server/pm/PackageManagerService$VerifierPackage;)I
    .locals 5

    iget-wide v0, p1, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->firstInstallTime:J

    iget-wide v2, p2, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->firstInstallTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    check-cast p2, Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$1;->compare(Lcom/android/server/pm/PackageManagerService$VerifierPackage;Lcom/android/server/pm/PackageManagerService$VerifierPackage;)I

    move-result v0

    return v0
.end method
