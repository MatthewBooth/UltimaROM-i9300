.class public Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;
.super Lcom/android/server/ssrm/settings/SettingsChooser;
.source "LCDBrightnessSettingsChooser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/settings/SettingsChooser",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ssrm/settings/SettingsChooser;-><init>()V

    iput-object p1, p0, Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;->mPowerManager:Landroid/os/PowerManager;

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

    const/4 v4, -0x1

    move-object v1, p1

    invoke-virtual {p2}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_1

    move-object v1, p2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    move-object v1, p2

    goto :goto_0

    :cond_2
    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_4

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    move-object v1, p1

    goto :goto_0

    :cond_4
    move-object v1, p2

    goto :goto_0
.end method
