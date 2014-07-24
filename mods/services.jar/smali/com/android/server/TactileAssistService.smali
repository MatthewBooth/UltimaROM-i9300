.class public Lcom/android/server/TactileAssistService;
.super Landroid/os/ITactileAssistService$Stub;
.source "TactileAssistService.java"


# static fields
.field private static final ERM:I = 0x0

.field private static final LRA:I = 0x2

.field private static final PZO:I = 0x4

.field private static final SERM:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TactileAssistService"

.field private static mContentResolver:Landroid/content/ContentResolver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTactileAssistSettings:Lcom/android/server/TactileAssistSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/os/ITactileAssistService$Stub;-><init>()V

    const-string v4, "TactileAssistService"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "TactileAssistService"

    const-string v5, "TactileAssist Service started"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_tactileassist_level"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_tactileassist_enable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_tactileassist_internal_enable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sput-object v4, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    :try_start_0
    const-string v4, "com.android.settings"

    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/TactileAssistService;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/server/TactileAssistService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/TactileAssistSettings;->getInstance(Landroid/content/Context;)Lcom/android/server/TactileAssistSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/TactileAssistService;->mTactileAssistSettings:Lcom/android/server/TactileAssistSettings;

    iget-object v4, p0, Lcom/android/server/TactileAssistService;->mTactileAssistSettings:Lcom/android/server/TactileAssistSettings;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/server/TactileAssistSettings;->storeTactileAssistSettings(IIIZ)V

    return-void

    :catch_0
    move-exception v0

    const-string v4, "TactileAssistService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TactileAssist Service NameNotFound Error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getActuators()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/TactileAssistService;->mTactileAssistSettings:Lcom/android/server/TactileAssistSettings;

    invoke-virtual {v0}, Lcom/android/server/TactileAssistSettings;->getActuators()[I

    move-result-object v0

    return-object v0
.end method

.method public setDensity(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, 0x0

    const/16 v3, 0xf

    if-gt p2, v3, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_density_lra"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v0

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_density_erm"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_density_serm"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_density_lra"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    :pswitch_4
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_density_pzo"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setEnable(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    sget-object v4, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "def_tactileassist_enable"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v3, "TactileAssistService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accessibility test : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setInternalEnable(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    sget-object v4, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "def_tactileassist_internal_enable"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setLevel(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x3

    if-gt p1, v3, :cond_0

    const/4 v3, 0x1

    if-ge p1, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_level"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public setSharpness(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, 0x0

    const/16 v3, 0xf

    if-gt p2, v3, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v0

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_sharpness_erm"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_sharpness_serm"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_sharpness_lra"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    :pswitch_4
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_sharpness_pzo"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setStrength(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v0, 0x0

    const/16 v3, 0xf

    if-gt p2, v3, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_strength_pzo"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v0

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_strength_erm"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_strength_serm"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_strength_lra"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    :pswitch_4
    sget-object v3, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_strength_pzo"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public storeAppList()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/server/TactileAssistService;->mTactileAssistSettings:Lcom/android/server/TactileAssistSettings;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/android/server/TactileAssistSettings;->storeTactileAssistSettings(IIIZ)V

    return v2
.end method
