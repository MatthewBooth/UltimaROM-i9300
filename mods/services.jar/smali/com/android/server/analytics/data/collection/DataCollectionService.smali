.class public Lcom/android/server/analytics/data/collection/DataCollectionService;
.super Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub;
.source "DataCollectionService.java"


# instance fields
.field private mCAD:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

.field private mContext:Landroid/content/Context;

.field private mLCM:Lcom/android/server/analytics/data/collection/LogCollectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/DataCollectionService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;

    invoke-direct {v0, p1}, Lcom/android/server/analytics/data/collection/LogCollectionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/DataCollectionService;->mLCM:Lcom/android/server/analytics/data/collection/LogCollectionManager;

    new-instance v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    invoke-direct {v0, p1}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/DataCollectionService;->mCAD:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    return-void
.end method


# virtual methods
.method public disableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/DataCollectionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_ANALYTICS"

    const-string v2, "Requires MDM_ANALYTICS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/DataCollectionService;->mLCM:Lcom/android/server/analytics/data/collection/LogCollectionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->disableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public enableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/DataCollectionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_ANALYTICS"

    const-string v2, "Requires MDM_ANALYTICS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/DataCollectionService;->mLCM:Lcom/android/server/analytics/data/collection/LogCollectionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->enableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V

    return-void
.end method
