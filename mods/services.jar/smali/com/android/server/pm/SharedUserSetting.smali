.class final Lcom/android/server/pm/SharedUserSetting;
.super Lcom/android/server/pm/GrantedPermissions;
.source "SharedUserSetting.java"


# instance fields
.field final name:Ljava/lang/String;

.field final packages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final signatures:Lcom/android/server/pm/PackageSignatures;

.field uidFlags:I

.field userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/pm/GrantedPermissions;-><init>(I)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput p2, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    iget v1, p1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/GrantedPermissions;->setFlags(I)V

    :cond_0
    return-void
.end method

.method removePackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    iget v4, p1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    iget v0, p0, Lcom/android/server/pm/SharedUserSetting;->uidFlags:I

    iget-object v3, p0, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget v3, v2, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/GrantedPermissions;->setFlags(I)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedUserSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
