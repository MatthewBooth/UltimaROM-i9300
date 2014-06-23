.class public Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;
.super Ljava/lang/Object;
.source "InformativeScreenServiceWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/IInformativeScreenService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Lcom/android/internal/policy/IInformativeScreenService;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/IInformativeScreenService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InformativeScreenServiceWrapper"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    invoke-interface {v0}, Lcom/android/internal/policy/IInformativeScreenService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onBootCompleted()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    invoke-interface {v1}, Lcom/android/internal/policy/IInformativeScreenService;->onBootCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IInformativeScreenService;->onScreenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IInformativeScreenService;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->mService:Lcom/android/internal/policy/IInformativeScreenService;

    invoke-interface {v1}, Lcom/android/internal/policy/IInformativeScreenService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
