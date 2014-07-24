.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
.super Ljava/lang/Object;
.source "EnterpriseSSOPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SSOInterfaceList1"
.end annotation


# instance fields
.field public ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
