.class public Lcom/android/server/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ClipboardService$PerUserClipboard;,
        Lcom/android/server/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"

.field private static final is3LMAllowed:Z


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerID:I

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v4, "clipboard"

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/ClipboardService$1;

    invoke-direct {v4, p0}, Lcom/android/server/ClipboardService$1;-><init>(Lcom/android/server/ClipboardService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    return-void

    :catch_0
    move-exception v0

    const-string v3, "clipboard"

    const-string v4, "AM dead"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/ClipboardService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ClipboardService;->removeClipboard(I)V

    return-void
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .locals 12

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v6, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v9

    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calling uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not own package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catchall_0
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_2
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .locals 5

    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, p2, v3, p1, v4}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private final clearActiveOwnersLocked()V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v6, :cond_5

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_0

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_0

    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ClipboardService;->getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;
    .locals 3

    iget-object v2, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/ClipboardService;I)V

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .locals 3

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removeClipboard(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    :cond_0
    return-void
.end method

.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    monitor-exit p0

    :goto_0
    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .locals 7

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit p0

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :goto_1
    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    monitor-exit p0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    monitor-exit p0

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_5

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    :cond_5
    monitor-exit p0

    goto :goto_0

    :cond_6
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v4, :cond_7

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v4, v7, v8, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit p0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    monitor-exit p0

    move v4, v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v6

    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    monitor-exit p0

    move v4, v5

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    move v4, v6

    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :cond_6
    move v4, v5

    goto :goto_3

    :cond_7
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_8

    move v4, v6

    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_4

    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto/16 :goto_0
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    monitor-exit p0

    :goto_0
    return v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    iget-object v4, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    monitor-exit p0

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_5

    move v2, v3

    :cond_5
    monitor-exit p0

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v4, :cond_7

    move v2, v3

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .locals 15

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v11, 0x0

    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    if-gtz v11, :cond_3

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "No items"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    :cond_2
    const/4 v11, 0x0

    :try_start_1
    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v11, 0x0

    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1e

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v1, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_4

    monitor-exit p0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    invoke-direct {p0}, Lcom/android/server/ClipboardService;->clearActiveOwnersLocked()V

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    if-eqz v9, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/ClipData;->checkEquals(Landroid/content/ClipData;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    const v12, 0x1040b3e

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    :cond_5
    monitor-exit p0

    goto :goto_0

    :cond_6
    iget v11, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v11, :cond_8

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    iget v11, p0, Lcom/android/server/ClipboardService;->mContainerID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_b

    :try_start_2
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v8, :cond_9

    :try_start_3
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ClipboardService$ListenerInfo;

    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1d

    iget v13, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    iget-object v14, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v11}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    :try_start_4
    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_9
    :try_start_5
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_d

    :try_start_6
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ClipboardService$ListenerInfo;

    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1d

    iget v13, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    iget-object v14, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v11}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catchall_1
    move-exception v11

    :try_start_7
    iget-object v12, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v12, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    :cond_b
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v8

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v8, :cond_e

    :try_start_8
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ClipboardService$ListenerInfo;

    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1d

    iget v13, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    iget-object v14, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v11}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_c
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :catchall_2
    move-exception v11

    :try_start_9
    iget-object v12, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    :cond_d
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_9
    monitor-exit p0

    goto/16 :goto_0

    :cond_e
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    :catch_0
    move-exception v11

    goto :goto_8

    :catch_1
    move-exception v11

    goto :goto_6

    :catch_2
    move-exception v11

    goto/16 :goto_4
.end method
