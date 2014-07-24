.class public abstract Lcom/android/server/ssrm/settings/SettingWriter;
.super Ljava/lang/Object;
.source "SettingWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCurrentSetting:Lcom/android/server/ssrm/settings/Setting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mModificationStarted:Z

.field protected final mName:Ljava/lang/String;

.field private mNewSetting:Lcom/android/server/ssrm/settings/Setting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/settings/SettingsChooser",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract applySetting(Lcom/android/server/ssrm/settings/Setting;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method protected abstract convertToValue(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public createSetting(Ljava/lang/Object;)Lcom/android/server/ssrm/settings/Setting;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/ssrm/settings/Setting;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/ssrm/settings/Setting;-><init>(Ljava/lang/Object;Lcom/android/server/ssrm/settings/SettingWriter;Ljava/lang/String;)V

    return-object v0
.end method

.method public createSettingFromString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Setting;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/ssrm/settings/Setting;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/SettingWriter;->convertToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2}, Lcom/android/server/ssrm/settings/Setting;-><init>(Ljava/lang/Object;Lcom/android/server/ssrm/settings/SettingWriter;Ljava/lang/String;)V

    return-object v0
.end method

.method name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected onExtraInitialized(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method final setCurrentSetting(Lcom/android/server/ssrm/settings/Setting;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mModificationStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/ssrm/settings/SettingsChooserPriorityFirst;

    invoke-direct {v0}, Lcom/android/server/ssrm/settings/SettingsChooserPriorityFirst;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;

    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ssrm/settings/SettingsChooser;->chooseSetting(Lcom/android/server/ssrm/settings/Setting;Lcom/android/server/ssrm/settings/Setting;)Lcom/android/server/ssrm/settings/Setting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    goto :goto_0
.end method

.method setExtraData(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/SettingWriter;->onExtraInitialized(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/SettingsChooser",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;

    return-void
.end method

.method startModification()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mModificationStarted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    return-void
.end method

.method stopModification()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mModificationStarted:Z

    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mCurrentSetting:Lcom/android/server/ssrm/settings/Setting;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/settings/Setting;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/settings/SettingWriter;->applySetting(Lcom/android/server/ssrm/settings/Setting;)V

    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    iput-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mCurrentSetting:Lcom/android/server/ssrm/settings/Setting;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastAppliedValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mCurrentSetting:Lcom/android/server/ssrm/settings/Setting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mCurrentSetting:Lcom/android/server/ssrm/settings/Setting;

    invoke-virtual {v1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chooser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "novalue"

    goto :goto_0
.end method
