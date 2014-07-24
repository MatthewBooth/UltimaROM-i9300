.class public Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;
.super Lcom/android/server/ssrm/settings/SettingsChooser;
.source "PriorityFirstSettingsChooser.java"


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
.field private isReleased:Z

.field private isTriggered:Z

.field private isUnchanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/settings/SettingsChooser;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isReleased:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isUnchanged:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isTriggered:Z

    return-void
.end method


# virtual methods
.method public chooseSetting(Lcom/android/server/ssrm/settings/Setting;Lcom/android/server/ssrm/settings/Setting;)Lcom/android/server/ssrm/settings/Setting;
    .locals 5
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

    const/4 v4, 0x1

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->returnOption()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nothing"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "triggered"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v4, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isTriggered:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isReleased:Z

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isUnchanged:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isReleased:Z

    if-nez v2, :cond_2

    move-object v1, p2

    :cond_2
    move-object v2, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "unchanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v4, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isUnchanged:Z

    goto :goto_1

    :cond_4
    const-string v2, "released"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isReleased:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isUnchanged:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;->isTriggered:Z

    goto :goto_1
.end method
