.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseSSOPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "inside mBReciever onReceive : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "android.intent.extra.user_handle"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_REMOVED UserHandle : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800()Ljava/util/Map;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800()Ljava/util/Map;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800()Ljava/util/Map;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " after removed mSSOInterfaceMap= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800()Ljava/util/Map;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->removeClintEntry(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    goto :goto_0

    :cond_3
    const-string v18, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$000()Z

    move-result v18

    if-eqz v18, :cond_4

    const-string v18, "EnterpriseSSOPolicyService"

    const-string v19, "ACTION_USER_SWITCHED "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v18, "2.0"

    const-string/jumbo v19, "version"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const-string v18, "android.intent.extra.user_handle"

    const/16 v19, -0x2710

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_SWITCHED - userHandle is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$600(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$600(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    new-instance v13, Ljava/util/StringTokenizer;

    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-direct {v13, v10, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_6
    if-eqz v15, :cond_7

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_SWITCHED - uID is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$600(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$600(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v13, Ljava/util/StringTokenizer;

    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-direct {v13, v10, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_SWITCHED - clientUid is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_SWITCHED - ContainerId is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    const-string v18, "EnterpriseSSOPolicyService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_USER_SWITCHED - sso is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$900()Ljava/util/Map;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$900()Ljava/util/Map;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    invoke-virtual {v11}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getSSOInterface()Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v18

    if-eqz v18, :cond_9

    invoke-virtual {v11}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getContainerId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    invoke-virtual {v11}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const-string v18, "EnterpriseSSOPolicyService"

    const-string v19, "ACTION_USER_SWITCHED - SSO Service is already bound: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)I
    invoke-static {v0, v14, v1, v12}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;IILjava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)I
    invoke-static {v0, v14, v1, v12}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;IILjava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    const-string v18, "android.intent.extra.user_handle"

    const/16 v19, -0x2710

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->isSSOServiceInstalled(I)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I
    invoke-static {v0, v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I

    goto/16 :goto_0
.end method
