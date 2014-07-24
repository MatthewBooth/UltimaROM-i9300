.class public Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;
.super Ljava/lang/Object;
.source "PreferenceStorage.java"


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mMode:I

.field private mXMLfile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPrefs(Ljava/lang/String;F)F
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefs(Ljava/lang/String;I)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefs(Ljava/lang/String;J)J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefs(Ljava/lang/String;Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPrefs(Ljava/lang/String;F)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPrefs(Ljava/lang/String;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPrefs(Ljava/lang/String;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPrefs(Ljava/lang/String;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
