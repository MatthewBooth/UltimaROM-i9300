.class public final Lcom/android/server/ssrm/settings/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/settings/Condition$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mLevels:Lcom/android/server/ssrm/settings/SortedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/settings/SortedArrayList",
            "<",
            "Lcom/android/server/ssrm/settings/Level;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/server/ssrm/settings/Condition$Listener;

.field private final mName:Ljava/lang/String;

.field private mSignaled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SSRMv2:Condition"

    sput-object v0, Lcom/android/server/ssrm/settings/Condition;->TAG:Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/settings/Condition;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-direct {v0}, Lcom/android/server/ssrm/settings/SortedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/Condition;->mLevels:Lcom/android/server/ssrm/settings/SortedArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Condition should have not empty name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/server/ssrm/settings/Condition;->mName:Ljava/lang/String;

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/settings/Condition;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Lcom/android/server/ssrm/settings/Condition;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/ssrm/settings/Condition;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/Condition;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/ssrm/settings/Condition;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/android/server/ssrm/settings/Condition;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    return v0
.end method

.method levels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/Level;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Condition;->mLevels:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Condition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public registerLevel(Lcom/android/server/ssrm/settings/Level;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Condition;->mLevels:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Condition;->mLevels:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/SortedArrayList;->insertSorted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/server/ssrm/settings/Condition$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/settings/Condition;->mListener:Lcom/android/server/ssrm/settings/Condition$Listener;

    return-void
.end method

.method public signal(Z)V
    .locals 3

    sget-object v0, Lcom/android/server/ssrm/settings/Condition;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Condition["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/Condition;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] signal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/settings/Condition;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/ssrm/settings/Condition;->mSignaled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/ssrm/settings/Condition;->mSignaled:Z

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Condition;->mListener:Lcom/android/server/ssrm/settings/Condition$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Condition;->mLevels:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Condition;->mListener:Lcom/android/server/ssrm/settings/Condition$Listener;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/Condition;->mLevels:Lcom/android/server/ssrm/settings/SortedArrayList;

    iget-boolean v2, p0, Lcom/android/server/ssrm/settings/Condition;->mSignaled:Z

    invoke-interface {v0, p0, v1, v2}, Lcom/android/server/ssrm/settings/Condition$Listener;->onConditionSignaled(Lcom/android/server/ssrm/settings/Condition;Lcom/android/server/ssrm/settings/SortedArrayList;Z)V

    :cond_0
    return-void
.end method

.method public signaled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/settings/Condition;->mSignaled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ssrm/settings/Condition;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Lcom/android/server/ssrm/settings/Condition;->mSignaled:Z

    if-eqz v3, :cond_0

    const-string v3, " [on]"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Levels:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/Condition;->mLevels:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {v1}, Lcom/android/server/ssrm/settings/Level;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/settings/Util;->indentText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, " [off]"

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public unregisterLevel(Lcom/android/server/ssrm/settings/Level;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Condition;->mLevels:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/ssrm/settings/Condition;->mLevels:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/Condition;->mListener:Lcom/android/server/ssrm/settings/Condition$Listener;

    :cond_0
    return-void
.end method
