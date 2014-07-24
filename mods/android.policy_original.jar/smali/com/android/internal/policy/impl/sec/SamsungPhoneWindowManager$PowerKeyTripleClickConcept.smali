.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerKeyTripleClickConcept"
.end annotation


# static fields
.field private static final TAG_PKDC:Ljava/lang/String; = "PowerKeyTripleClick"


# instance fields
.field private final DEBUG:Z

.field private mCheckPowerKeyTripleClick:Ljava/lang/Runnable;

.field private mPowerKeyActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->DEBUG:Z

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mCheckPowerKeyTripleClick:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->addAction(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->isTripleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->reset()V

    return-void
.end method

.method private addAction(I)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mCheckPowerKeyTripleClick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isTripleClick()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
