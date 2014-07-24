.class public Lcom/android/server/enterprise/RestrictionToastManager;
.super Ljava/lang/Object;
.source "RestrictionToastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/RestrictionToastManager$1;,
        Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;
    }
.end annotation


# static fields
.field private static final MSG_REMOVE_ID:I = 0x1

.field private static final MSG_REMOVE_TIMEOUT:I = 0xdac

.field private static final TAG:Ljava/lang/String; = "RestrictionToastManager"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static final mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;-><init>(Lcom/android/server/enterprise/RestrictionToastManager$1;)V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mHandler:Landroid/os/Handler;

    sput-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static show(I)V
    .locals 4

    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "RestrictionToastManager"

    const-string v3, "Resource Id not found: will not display any restriction message toast"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized show(Ljava/lang/String;)V
    .locals 9

    const-class v6, Lcom/android/server/enterprise/RestrictionToastManager;

    monitor-enter v6

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    :cond_1
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v5, "edm.intent.action.ACTION_EDM_RESTRICTION_TOAST"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "message"

    invoke-virtual {v1, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v5, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "RestrictionToastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added message to recently displayed queue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/enterprise/RestrictionToastManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-static {v5, v7, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v5, Lcom/android/server/enterprise/RestrictionToastManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0xdac

    invoke-virtual {v5, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
