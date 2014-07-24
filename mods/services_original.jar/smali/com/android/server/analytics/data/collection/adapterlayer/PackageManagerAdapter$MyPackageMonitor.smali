.class public abstract Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MyPackageMonitor"
.end annotation


# static fields
.field public static final PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final PACKAGE_TEMPORARY_CHANGE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public isPackageDisappearing(Ljava/lang/String;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isPackageModified(Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 0

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method
