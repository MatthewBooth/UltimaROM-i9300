.class Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoCapabilityReceiver"
.end annotation


# instance fields
.field private mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    if-nez v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    const/4 v5, -0x1

    if-le v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v2}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v3, :cond_0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    const v6, 0x104000a

    new-instance v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    const v6, 0x1040b66

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v5, "MultiPhoneWindow"

    const-string v6, "attached item in getType() is not an int type"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public register()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.VIDEOCAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
