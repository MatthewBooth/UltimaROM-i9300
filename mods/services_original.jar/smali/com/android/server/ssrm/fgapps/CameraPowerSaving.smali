.class public Lcom/android/server/ssrm/fgapps/CameraPowerSaving;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "CameraPowerSaving.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ID_BLACKBOX:I

.field final ID_VTCALL:I

.field final TAG:Ljava/lang/String;

.field mBlackboxList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mChatOnVtCall:Z

.field mPhoneVtCall:Z

.field mVideocallList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    const-string v0, "SSRMv2:CameraPowerSaving"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mBlackboxList:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mVideocallList:Ljava/util/Hashtable;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mPhoneVtCall:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mChatOnVtCall:Z

    const-string v0, "SSRMv2:CameraPowerSaving"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    const-string/jumbo v0, "sys.cameramode.blackbox"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSystemPropertiesParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_BLACKBOX:I

    const-string/jumbo v0, "sys.cameramode.vtcall"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSystemPropertiesParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_VTCALL:I

    const-string v0, "com.locnall.KimGiSa"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    const-string v0, "com.mnsoft.lgunavi"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    const-string v0, "com.thinkware.inaviair"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    const-string v0, "kr.mappers.AtlanSmart"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    const-string v0, "kt.navi"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    const-string v0, "com.ONS.Mapple"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    const-string v0, "com.nhn.android.nmap"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    const-string v0, "kr.co.d2.kistirnd"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    const-string v0, "com.hovans.autoguard"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    const-string v0, "com.pokevian.optimus"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    const-string v0, "com.kt.ollehmap"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addBlackboxPackage(Ljava/lang/String;)V

    const-string v0, "com.google.android.talk"

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->addVideocallPackage(Ljava/lang/String;)V

    return-void
.end method

.method private addBlackboxPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mBlackboxList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addVideocallPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mVideocallList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isBlackboxPackage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mBlackboxList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isVideocallPackage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mVideocallList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "ChatOnV_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mChatOnVtCall:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Phone_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mPhoneVtCall:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0
.end method

.method updateParameterByScenario()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->isBlackboxPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "blackbox"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BlackBox"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "l001mtm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->isVideocallPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_BLACKBOX:I

    const-string v4, "1"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSystemProperties(ILjava/lang/String;)V

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mPhoneVtCall:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->mChatOnVtCall:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;->ID_VTCALL:I

    const-string v4, "1"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSystemProperties(ILjava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
