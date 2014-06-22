.class Lcom/android/internal/policy/impl/GlobalActions$99$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$99;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$99;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$99;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$99$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$99;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    sget v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$99$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$99;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$99;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v3}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    sget v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pkill"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-TERM"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "-f"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "system_server"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$99$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$99;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$99;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_1
.end method
