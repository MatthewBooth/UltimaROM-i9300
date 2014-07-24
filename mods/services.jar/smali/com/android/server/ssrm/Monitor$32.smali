.class Lcom/android/server/ssrm/Monitor$32;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Lcom/android/server/ssrm/Monitor$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->registerCommands()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mBrowserDashCount:I

.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$32;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/Monitor$32;->mBrowserDashCount:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onBrowserDashModeForAll(Z)V

    const-string v0, "HeavyUserScenario"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/server/ssrm/Monitor$32;->mBrowserDashCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/Monitor$32;->mBrowserDashCount:I

    iget v0, p0, Lcom/android/server/ssrm/Monitor$32;->mBrowserDashCount:I

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ssrm/Monitor$32$1;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$32$1;-><init>(Lcom/android/server/ssrm/Monitor$32;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onBrowserDashModeForAll(Z)V

    const-string v0, "HeavyUserScenario"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    iput v1, p0, Lcom/android/server/ssrm/Monitor$32;->mBrowserDashCount:I

    goto :goto_0
.end method
