.class public Lcom/android/server/ssrm/settings/SettingsChooserMax;
.super Lcom/android/server/ssrm/settings/SettingsChooser;
.source "SettingsChooserMax.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/ssrm/settings/SettingsChooser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ssrm/settings/SettingsChooser;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseSetting(Lcom/android/server/ssrm/settings/Setting;Lcom/android/server/ssrm/settings/Setting;)Lcom/android/server/ssrm/settings/Setting;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;)",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-lez v1, :cond_0

    move-object p1, p2

    goto :goto_0
.end method
