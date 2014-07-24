.class Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstallPolicy"
.end annotation


# instance fields
.field final allowCategory:Ljava/lang/String;

.field final category:I

.field final isContainerApp:Z

.field noAuditPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pkgPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final policyPerms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final seinfo:Ljava/lang/String;

.field trustedPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    iput-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->trustedPackageNameList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->noAuditPackageNameList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    return-void
.end method

.method constructor <init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    iput-object p5, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->trustedPackageNameList:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->noAuditPackageNameList:Ljava/util/ArrayList;

    iput-boolean p6, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    return-void
.end method


# virtual methods
.method getSEinfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    goto :goto_0
.end method

.method passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    const-string v1, ",\n"

    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "allow-all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
