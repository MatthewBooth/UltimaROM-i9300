.class final Lcom/immersion/android/HapticFeedbackManagerProxy$1;
.super Ljava/lang/Object;
.source "HapticFeedbackManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/immersion/android/HapticFeedbackManagerProxy;->create(Landroid/content/Context;)Lcom/immersion/android/HapticFeedbackManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$looper:Landroid/os/Looper;

.field final synthetic val$theContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/immersion/android/HapticFeedbackManagerProxy$1;->val$theContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/immersion/android/HapticFeedbackManagerProxy$1;->val$looper:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/immersion/android/HapticFeedbackManagerProxy$1$1;

    invoke-direct {v1, p0}, Lcom/immersion/android/HapticFeedbackManagerProxy$1$1;-><init>(Lcom/immersion/android/HapticFeedbackManagerProxy$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
