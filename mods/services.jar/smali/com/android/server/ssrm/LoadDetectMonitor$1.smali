.class Lcom/android/server/ssrm/LoadDetectMonitor$1;
.super Ljava/lang/Object;
.source "LoadDetectMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/LoadDetectMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/LoadDetectMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/LoadDetectMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/LoadDetectMonitor$1;->this$0:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor$1;->this$0:Lcom/android/server/ssrm/LoadDetectMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/LoadDetectMonitor;->nativeLoadDetectTask()V

    iget-object v0, p0, Lcom/android/server/ssrm/LoadDetectMonitor$1;->this$0:Lcom/android/server/ssrm/LoadDetectMonitor;

    iget-object v0, v0, Lcom/android/server/ssrm/LoadDetectMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
