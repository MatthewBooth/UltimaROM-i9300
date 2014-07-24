.class Lcom/android/internal/policy/impl/GlobalActions$29;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->isSimReady()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$29;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$202(Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$29;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$2002(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
