.class Lcom/android/server/connectivity/EnterpriseVpn$Connection;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/EnterpriseVpn$Connection;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->mService:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->mService:Landroid/os/IBinder;

    return-void
.end method
