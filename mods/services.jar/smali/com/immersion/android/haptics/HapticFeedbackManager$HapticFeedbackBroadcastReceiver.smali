.class public Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HapticFeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/android/haptics/HapticFeedbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HapticFeedbackBroadcastReceiver"
.end annotation


# instance fields
.field protected mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

.field final synthetic this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;


# direct methods
.method public constructor <init>(Lcom/immersion/android/haptics/HapticFeedbackManager;Lcom/immersion/android/haptics/HapticFeedbackManager;)V
    .locals 1

    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->this$0:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    iput-object p2, p0, Lcom/immersion/android/haptics/HapticFeedbackManager$HapticFeedbackBroadcastReceiver;->mHfm:Lcom/immersion/android/haptics/HapticFeedbackManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
