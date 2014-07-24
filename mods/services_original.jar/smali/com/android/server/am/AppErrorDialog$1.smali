.class Lcom/android/server/am/AppErrorDialog$1;
.super Ljava/lang/Object;
.source "AppErrorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;

.field final synthetic val$dumpCmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog$1;->val$dumpCmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->val$dumpCmd:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    return-void
.end method
