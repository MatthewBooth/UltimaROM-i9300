.class Lcom/android/server/glancecard/GlanceCardManagerService$1;
.super Lcom/android/internal/app/IUsageStatsWatcher$Stub;
.source "GlanceCardManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/glancecard/GlanceCardManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/glancecard/GlanceCardManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/glancecard/GlanceCardManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/glancecard/GlanceCardManagerService$1;->this$0:Lcom/android/server/glancecard/GlanceCardManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/glancecard/GlanceCardManagerService$1;->this$0:Lcom/android/server/glancecard/GlanceCardManagerService;

    #getter for: Lcom/android/server/glancecard/GlanceCardManagerService;->mCurrentComponent:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/glancecard/GlanceCardManagerService;->access$000(Lcom/android/server/glancecard/GlanceCardManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/glancecard/GlanceCardManagerService$1;->this$0:Lcom/android/server/glancecard/GlanceCardManagerService;

    #getter for: Lcom/android/server/glancecard/GlanceCardManagerService;->mCurrentComponent:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/glancecard/GlanceCardManagerService;->access$000(Lcom/android/server/glancecard/GlanceCardManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/glancecard/GlanceCardManagerService$1;->this$0:Lcom/android/server/glancecard/GlanceCardManagerService;

    #calls: Lcom/android/server/glancecard/GlanceCardManagerService;->checkGlanceSettingIsEnabled()Z
    invoke-static {v0}, Lcom/android/server/glancecard/GlanceCardManagerService;->access$100(Lcom/android/server/glancecard/GlanceCardManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/glancecard/GlanceCardManagerService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatsWatcher hide current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/glancecard/GlanceCardManagerService$1;->this$0:Lcom/android/server/glancecard/GlanceCardManagerService;

    #getter for: Lcom/android/server/glancecard/GlanceCardManagerService;->mCurrentComponent:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/glancecard/GlanceCardManagerService;->access$000(Lcom/android/server/glancecard/GlanceCardManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/glancecard/GlanceCardManagerService$1;->this$0:Lcom/android/server/glancecard/GlanceCardManagerService;

    const/4 v1, 0x6

    const v2, 0x7fffffff

    #calls: Lcom/android/server/glancecard/GlanceCardManagerService;->sendCardsAndCommand(Landroid/content/ComponentName;II)V
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/glancecard/GlanceCardManagerService;->access$300(Lcom/android/server/glancecard/GlanceCardManagerService;Landroid/content/ComponentName;II)V

    :cond_0
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
