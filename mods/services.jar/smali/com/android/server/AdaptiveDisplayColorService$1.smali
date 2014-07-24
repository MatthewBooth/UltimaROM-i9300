.class Lcom/android/server/AdaptiveDisplayColorService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$1;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService$1;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #getter for: Lcom/android/server/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/server/AdaptiveDisplayColorService;->access$1300(Lcom/android/server/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService$1;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #calls: Lcom/android/server/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$1400(Lcom/android/server/AdaptiveDisplayColorService;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 0

    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    return-void
.end method
