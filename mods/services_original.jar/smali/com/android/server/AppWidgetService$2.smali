.class Lcom/android/server/AppWidgetService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "android.intent.extra.user_handle"

    const/16 v6, -0x2710

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #calls: Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;
    invoke-static {v5, v4}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/AppWidgetServiceImpl;->sendInitialBroadcasts()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "AppWidgetService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect user handle supplied in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #getter for: Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/AppWidgetService;->access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #getter for: Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/AppWidgetService;->access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/AppWidgetServiceImpl;->onConfigurationChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #getter for: Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/AppWidgetService;->access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #getter for: Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/AppWidgetService;->access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl;

    invoke-virtual {v3, p2}, Lcom/android/server/AppWidgetServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #getter for: Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/AppWidgetService;->access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetServiceImpl;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Lcom/android/server/AppWidgetServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    goto :goto_0
.end method
