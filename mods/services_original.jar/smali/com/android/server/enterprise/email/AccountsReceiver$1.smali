.class Lcom/android/server/enterprise/email/AccountsReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/AccountsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v11, 0x0

    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v12, "user_handle_id"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Container id"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "android.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    invoke-virtual {v1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "status"

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v12, "user_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "account_id"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v12, "eas"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v8, Landroid/content/Intent;

    const-string v12, "edm.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "email_id"

    invoke-virtual {v8, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "result"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "account_id"

    invoke-virtual {v8, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v12, "server_host"

    const-string v13, "server_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_2

    const-string v12, "containerid"

    invoke-virtual {v8, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v12, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    #getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$100(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v14, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v12, v8, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v7

    if-eqz v7, :cond_1

    if-nez v10, :cond_1

    const-wide/16 v12, -0x1

    cmp-long v12, v5, v12

    if-eqz v12, :cond_1

    new-instance v12, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;

    iget-object v13, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-direct {v12, v13, v7, v5, v6}, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;-><init>(Lcom/android/server/enterprise/email/AccountsReceiver;Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V

    invoke-virtual {v12}, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->start()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v12, "containerid"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mReceiver - EX:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v8, Landroid/content/Intent;

    const-string v12, "edm.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "email_id"

    invoke-virtual {v8, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "result"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "account_id"

    invoke-virtual {v8, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v12, "protocol"

    invoke-virtual {v8, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "receive_host"

    const-string v13, "receive_host"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_4

    const-string v12, "containerid"

    invoke-virtual {v8, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    iget-object v12, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    #getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$100(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v14, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v12, v8, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v12, "containerid"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    const-string v12, "android.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    invoke-virtual {v1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "status"

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v12, "user_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "account_id"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v12, "eas"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    new-instance v8, Landroid/content/Intent;

    const-string v12, "edm.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "email_id"

    invoke-virtual {v8, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "result"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "account_id"

    invoke-virtual {v8, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v12, "server_host"

    const-string v13, "server_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_6

    const-string v12, "containerid"

    invoke-virtual {v8, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    iget-object v12, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    #getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$100(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v14, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v12, v8, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v12, "containerid"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    new-instance v8, Landroid/content/Intent;

    const-string v12, "edm.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "email_id"

    invoke-virtual {v8, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "result"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "account_id"

    invoke-virtual {v8, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v12, "protocol"

    invoke-virtual {v8, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "receive_host"

    const-string v13, "receive_host"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_8

    const-string v12, "containerid"

    invoke-virtual {v8, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_4
    iget-object v12, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    #getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$100(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v14, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v12, v8, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v12, "containerid"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
