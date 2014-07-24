.class Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$7;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "*** InformativeScreen connected (yay!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    invoke-static {p2}, Lcom/android/internal/policy/IInformativeScreenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IInformativeScreenService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;-><init>(Lcom/android/internal/policy/IInformativeScreenService;)V

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;)Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->onSystemReady()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->onBootCompleted()V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "*** InformativeScreen disconnected (boo!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;)Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    return-void
.end method
