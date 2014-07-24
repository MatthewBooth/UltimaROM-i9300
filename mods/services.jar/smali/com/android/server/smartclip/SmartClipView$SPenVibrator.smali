.class public Lcom/android/server/smartclip/SmartClipView$SPenVibrator;
.super Ljava/lang/Object;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SPenVibrator"
.end annotation


# instance fields
.field private mIvt:[B

.field private mVibrator:Landroid/os/SystemVibrator;

.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->mIvt:[B

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->mVibrator:Landroid/os/SystemVibrator;

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0xb2t
    .end array-data
.end method


# virtual methods
.method playVibrator()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->mVibrator:Landroid/os/SystemVibrator;

    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView;->access$300(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->mIvt:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    :cond_1
    return-void
.end method
