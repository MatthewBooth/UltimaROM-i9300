.class Lcom/android/server/am/AppPermissionManagedDialog$2;
.super Landroid/os/Handler;
.source "AppPermissionManagedDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionManagedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPermissionManagedDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPermissionManagedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$800(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$100(Lcom/android/server/am/AppPermissionManagedDialog;)I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1200(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #calls: Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessageByApp()V
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1300(Lcom/android/server/am/AppPermissionManagedDialog;)V

    goto :goto_0

    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.capabilitymanager"

    const-string v3, "com.sec.android.app.cm.ui.CMApplicationListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$100(Lcom/android/server/am/AppPermissionManagedDialog;)I

    move-result v2

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :cond_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1200(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$1000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$2;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method
