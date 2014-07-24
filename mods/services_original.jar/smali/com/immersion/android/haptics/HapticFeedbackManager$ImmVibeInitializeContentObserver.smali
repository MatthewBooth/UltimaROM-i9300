.class public Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/android/haptics/HapticFeedbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImmVibeInitializeContentObserver"
.end annotation


# instance fields
.field protected mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

.field final synthetic this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;


# direct methods
.method public constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V
    .locals 2

    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$000(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$000(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    iput-object p2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$400(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_initialized"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    #setter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z
    invoke-static {v2, v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$302(Lcom/immersion/android/haptics/HapticFeedbackManager;Z)Z

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$500(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/os/Vibrator;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$400(Lcom/immersion/android/haptics/HapticFeedbackManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    #setter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v2, v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$502(Lcom/immersion/android/haptics/HapticFeedbackManager;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    :cond_1
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z
    invoke-static {v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$300(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z
    invoke-static {v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$200(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #calls: Lcom/immersion/android/haptics/HapticFeedbackManager;->immVibeInitialize()V
    invoke-static {v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$600(Lcom/immersion/android/haptics/HapticFeedbackManager;)V

    :cond_2
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. onChange() --> Immvibe is initialized mBootedAndInitialized : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mBootedAndInitialized:Z
    invoke-static {v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$300(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mActiveTheme:Lcom/immersion/android/haptics/HapticFeedbackTheme;
    invoke-static {v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$700(Lcom/immersion/android/haptics/HapticFeedbackManager;)Lcom/immersion/android/haptics/HapticFeedbackTheme;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCanUseTouchSenseAPI:Z
    invoke-static {v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$200(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v1}, Lcom/immersion/android/haptics/HapticFeedbackManager;->loadActiveTheme()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$ImmVibeInitializeContentObserver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    #getter for: Lcom/immersion/android/haptics/HapticFeedbackManager;->mCalledFromProxy:Z
    invoke-static {v3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->access$100(Lcom/immersion/android/haptics/HapticFeedbackManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Exception caught in onChange()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
