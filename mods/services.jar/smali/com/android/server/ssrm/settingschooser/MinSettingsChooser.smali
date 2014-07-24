.class public Lcom/android/server/ssrm/settingschooser/MinSettingsChooser;
.super Lcom/android/server/ssrm/settings/SettingsChooser;
.source "MinSettingsChooser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/settings/SettingsChooser",
        "<",
        "Ljava/lang/Integer;",
        ">;"
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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object v3, p1

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->returnOption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/ssrm/settings/Setting;->returnOption()Ljava/lang/String;

    move-result-object v1

    const-string v5, "forced"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "forced"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, p1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string v5, "forced"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "forced"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v3, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_3

    move-object v3, p2

    goto :goto_0

    :cond_3
    if-lez v4, :cond_0

    move-object v3, p1

    goto :goto_0
.end method
