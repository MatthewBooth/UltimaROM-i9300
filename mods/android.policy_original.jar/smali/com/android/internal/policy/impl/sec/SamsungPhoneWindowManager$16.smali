.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
