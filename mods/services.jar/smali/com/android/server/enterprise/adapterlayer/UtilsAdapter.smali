.class public Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;
.super Ljava/lang/Object;
.source "UtilsAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    return-void
.end method

.method public static updateAccountManagerCache(I)V
    .locals 3

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    :cond_0
    return-void
.end method
