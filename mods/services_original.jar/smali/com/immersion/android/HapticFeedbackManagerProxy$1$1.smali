.class Lcom/immersion/android/HapticFeedbackManagerProxy$1$1;
.super Ljava/lang/Object;
.source "HapticFeedbackManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/immersion/android/HapticFeedbackManagerProxy$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/immersion/android/HapticFeedbackManagerProxy$1;


# direct methods
.method constructor <init>(Lcom/immersion/android/HapticFeedbackManagerProxy$1;)V
    .locals 0

    iput-object p1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy$1$1;->this$0:Lcom/immersion/android/HapticFeedbackManagerProxy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/immersion/android/HapticFeedbackManagerProxy;->access$000()Lcom/immersion/android/HapticFeedbackManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy$1$1;->this$0:Lcom/immersion/android/HapticFeedbackManagerProxy$1;

    iget-object v1, v1, Lcom/immersion/android/HapticFeedbackManagerProxy$1;->val$theContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/immersion/android/HapticFeedbackManagerProxy$1$1;->this$0:Lcom/immersion/android/HapticFeedbackManagerProxy$1;

    iget-object v2, v2, Lcom/immersion/android/HapticFeedbackManagerProxy$1;->val$looper:Landroid/os/Looper;

    #calls: Lcom/immersion/android/HapticFeedbackManagerProxy;->initialize(Landroid/content/Context;Landroid/os/Looper;)V
    invoke-static {v0, v1, v2}, Lcom/immersion/android/HapticFeedbackManagerProxy;->access$100(Lcom/immersion/android/HapticFeedbackManagerProxy;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method
