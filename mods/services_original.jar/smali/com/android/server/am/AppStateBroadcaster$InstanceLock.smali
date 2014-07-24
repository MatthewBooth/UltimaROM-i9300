.class public Lcom/android/server/am/AppStateBroadcaster$InstanceLock;
.super Ljava/lang/Object;
.source "AppStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceLock"
.end annotation


# static fields
.field private static mRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/AppStateBroadcaster$InstanceLock;->mRefCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/am/AppStateBroadcaster;->access$000()Lcom/android/server/am/AppStateBroadcaster;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/AppStateBroadcaster;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/AppStateBroadcaster;-><init>(Landroid/content/Context;Lcom/android/server/am/AppStateBroadcaster$1;)V

    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcaster;->access$002(Lcom/android/server/am/AppStateBroadcaster;)Lcom/android/server/am/AppStateBroadcaster;

    :cond_0
    sget v0, Lcom/android/server/am/AppStateBroadcaster$InstanceLock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/AppStateBroadcaster$InstanceLock;->mRefCount:I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    sget v0, Lcom/android/server/am/AppStateBroadcaster$InstanceLock;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/am/AppStateBroadcaster$InstanceLock;->mRefCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcaster;->access$002(Lcom/android/server/am/AppStateBroadcaster;)Lcom/android/server/am/AppStateBroadcaster;

    :cond_0
    return-void
.end method
