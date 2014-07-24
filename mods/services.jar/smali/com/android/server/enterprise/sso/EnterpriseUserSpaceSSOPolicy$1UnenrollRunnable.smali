.class Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;
.super Ljava/lang/Object;
.source "EnterpriseUserSpaceSSOPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->onPreAdminRemoval(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnenrollRunnable"
.end annotation


# instance fields
.field private ContainerId:Ljava/lang/String;

.field private item:Ljava/lang/String;

.field private sso:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

.field private uid:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->uid:I

    iput-object p3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->ContainerId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->sso:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->item:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    new-instance v1, Landroid/app/enterprise/ContextInfo;

    iget v2, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->uid:I

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->ContainerId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->sso:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->unenrollInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    #getter for: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$000(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->this$0:Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    #calls: Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->writeListToFile()V
    invoke-static {v0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$100(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->ContainerId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$200()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$200()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->ContainerId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$200()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->ContainerId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " after removed mSSOInterfaceMap= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$200()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->access$300()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
