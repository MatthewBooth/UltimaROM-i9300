.class public interface abstract Lcom/android/server/ssrm/settings/Condition$Listener;
.super Ljava/lang/Object;
.source "Condition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onConditionSignaled(Lcom/android/server/ssrm/settings/Condition;Lcom/android/server/ssrm/settings/SortedArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Condition;",
            "Lcom/android/server/ssrm/settings/SortedArrayList",
            "<",
            "Lcom/android/server/ssrm/settings/Level;",
            ">;Z)V"
        }
    .end annotation
.end method
