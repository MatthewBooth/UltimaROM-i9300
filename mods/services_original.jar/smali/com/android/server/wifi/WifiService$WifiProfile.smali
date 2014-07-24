.class Lcom/android/server/wifi/WifiService$WifiProfile;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProfile"
.end annotation


# static fields
.field private static final fileDefaultNamedata:Ljava/lang/String; = "/system/etc/wifi/default_ap.conf"

.field private static final fileGeneralNwInfo:Ljava/lang/String; = "/data/misc/wifi/generalinfo_nw.conf"

.field private static final fileNamedata:Ljava/lang/String; = "/data/misc/wifi/default_ap.conf"

.field private static final filePrevNetworkName:Ljava/lang/String; = "/data/misc/wifi/prev_networkname.conf"


# instance fields
.field private fileDefaultPath:Ljava/io/File;

.field private filePath:Ljava/io/File;

.field private flagForDefaultAp:Z

.field private flagForGeneralNwInfo:Z

.field private flagForPrevNetworkName:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1802([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1902([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2002([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForPrevNetworkName:Z

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiService$WifiProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    return-void
.end method

.method private checkNetworkName()V
    .locals 13

    const-string v7, ""

    const-string v6, ""

    const-string v5, ""

    new-instance v8, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v8}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    const-string v10, ""

    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    const-string v10, ""

    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMCCMNC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v4, v10, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGeneralNwInfo[j].getMCCMNC() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMatchedNetworkName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2200()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_a

    const/4 v9, 0x0

    :goto_1
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_a

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    const-string v6, "WPA-EAP IEEE8021X"

    :cond_5
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_c

    const-string v5, "SIM"

    :cond_6
    :goto_2
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMatchedPrevNetworkName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1600()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v6, ""

    const-string v5, ""

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$1502(Z)Z

    :cond_9
    const-string v10, ""

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1600()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    :cond_a
    :goto_3
    return-void

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_6

    const-string v5, "AKA"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v10, "WifiService"

    const-string v11, "checkNetworkName - NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 17

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "WifiService"

    const-string v15, "getGeneralNwInfoFromFile()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    const-string v1, ""

    const-string v2, ""

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v14, "mccmnc=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v14, "networkname=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v2

    goto/16 :goto_0

    :catch_0
    move-exception v4

    :goto_1
    :try_start_2
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v13, 0x0

    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_2
    return-object v13

    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v6, :cond_4

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    throw v14

    :cond_5
    if-eqz v7, :cond_6

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    const-string v14, ","

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v10, v9

    new-array v13, v10, [Lcom/android/server/wifi/WifiService$ApInfo;

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v10, :cond_8

    :try_start_6
    new-instance v14, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v15, v9, v5

    aget-object v16, v12, v5

    invoke-direct/range {v14 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v13, v5

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GeneralNwInfo["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    move-object v6, v7

    goto :goto_2

    :catch_1
    move-exception v4

    const-string v14, "WifiService"

    const-string v15, "getGeneralNwInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object v6, v7

    goto :goto_2

    :catch_2
    move-exception v4

    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/4 v13, 0x0

    goto :goto_2

    :catch_3
    move-exception v4

    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_4
    move-exception v4

    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object v6, v7

    goto/16 :goto_2

    :catchall_1
    move-exception v14

    move-object v6, v7

    goto/16 :goto_3

    :catch_5
    move-exception v4

    move-object v6, v7

    goto/16 :goto_1
.end method

.method private getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 14

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "WifiService"

    const-string v12, "getPrevNetworkNameFromFile()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForPrevNetworkName:Z

    const-string v0, ""

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v11, "networkname=\""

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x22

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    :try_start_2
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    move-object v9, v10

    :goto_2
    return-object v9

    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    throw v11

    :cond_4
    if-eqz v5, :cond_5

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v6, v8

    new-array v9, v6, [Lcom/android/server/wifi/WifiService$ApInfo;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v6, :cond_7

    :try_start_6
    new-instance v11, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v12, v8, v3

    invoke-direct {v11, v12}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v3

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PrevNetworkName["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v9, v3

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v11, "WifiService"

    const-string v12, "getPrevNetworkNameFromFile: No ApInfo - NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    move-object v9, v10

    goto :goto_2

    :catch_2
    move-exception v2

    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object v9, v10

    goto :goto_2

    :catch_3
    move-exception v2

    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_4
    move-exception v2

    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    move-object v9, v10

    goto/16 :goto_2

    :catchall_1
    move-exception v11

    move-object v4, v5

    goto/16 :goto_3

    :catch_5
    move-exception v2

    move-object v4, v5

    goto/16 :goto_1
.end method

.method private getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 33

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiService"

    const-string v3, "getVendorApInfoFromFile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const/16 v19, 0x0

    :try_start_0
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    const-string/jumbo v2, "ssid=\""

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    const-string v2, "key_mgmt="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v2, "wep_key0="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_4
    const-string v2, "priority="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :cond_5
    const-string v2, "eap="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_6
    const-string v2, "networkname=\""

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v13

    goto/16 :goto_0

    :catch_0
    move-exception v15

    :goto_1
    :try_start_2
    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v26, 0x0

    if-eqz v19, :cond_7

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_7
    :goto_2
    return-object v26

    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v19, :cond_8

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    throw v2

    :cond_9
    if-eqz v20, :cond_a

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_a
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const-string v2, ","

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v30

    array-length v2, v0

    move-object/from16 v0, v28

    array-length v3, v0

    if-eq v2, v3, :cond_b

    const-string v2, "WifiService"

    const-string v3, "Parse error default ap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    move-object/from16 v19, v20

    goto :goto_2

    :cond_b
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Lcom/android/server/wifi/WifiService$ApInfo;

    move-object/from16 v26, v0

    :try_start_6
    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v25, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v30, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    const-string v2, ""

    aget-object v3, v25, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ""

    aget-object v3, v17, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v23, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v3, v30, v18

    aget-object v4, v28, v18

    aget-object v5, v25, v18

    aget-object v6, v17, v18

    aget-object v7, v23, v18

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v26, v18

    :cond_c
    :goto_5
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultAp["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret[].getEap() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    :cond_e
    const-string v2, ""

    aget-object v3, v25, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, ""

    aget-object v3, v17, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v23, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v3, v30, v18

    aget-object v4, v28, v18

    aget-object v5, v25, v18

    aget-object v6, v17, v18

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v26, v18
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v15

    const-string v2, "WifiService"

    const-string v3, "getVendorApInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    move-object/from16 v19, v20

    goto/16 :goto_2

    :cond_f
    move-object/from16 v19, v20

    goto/16 :goto_2

    :cond_10
    :try_start_7
    const-string v2, "WifiService"

    const-string v3, "No ApInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    const/16 v26, 0x0

    move-object/from16 v19, v20

    goto/16 :goto_2

    :catch_2
    move-exception v15

    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/16 v26, 0x0

    goto/16 :goto_2

    :catch_3
    move-exception v15

    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_4
    move-exception v15

    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    move-object/from16 v19, v20

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    move-object/from16 v19, v20

    goto/16 :goto_3

    :catch_5
    move-exception v15

    move-object/from16 v19, v20

    goto/16 :goto_1
.end method

.method private makePrevNetworkName()V
    .locals 14

    const/4 v13, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    const-string v7, ""

    const-string v5, ""

    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "makePrevNetworkName mMCCMNC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v4, v10, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGeneralNwInfo[].getMCCMNC() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPrevNetworkName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v10, "network={\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "    networkname="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v10, "}\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "String mNetworkNameProfile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$902(Ljava/io/File;)Ljava/io/File;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$900()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$900()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_5
    :try_start_2
    new-instance v8, Ljava/io/File;

    const-string v10, "/data/misc/wifi"

    const-string v11, "prev_networkname.conf"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod 664 /data/misc/wifi/prev_networkname.conf"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v3, v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v2, v3

    :goto_4
    invoke-static {v13}, Lcom/android/server/wifi/WifiService;->access$2102(Z)Z

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v10, "WifiService"

    const-string v11, "makePrevNetworkName - NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v10, "WifiService"

    const-string v11, "makePrevNetworkName -NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v10, "WifiService"

    const-string v11, "PrevNetworkName File Create Not Found "

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_5
    :try_start_8
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PrevNetworkName create file failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    const-string v10, "WifiService"

    const-string v11, "PrevNetworkName IOException"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v10

    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v10
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :catchall_1
    move-exception v10

    move-object v2, v3

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v2, v3

    goto :goto_5
.end method


# virtual methods
.method public addChangedWifiProfile()V
    .locals 8

    iget-object v6, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_4

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1600()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2200()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "WifiService"

    const-string v7, "addChangedWifiProfile()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/4 v6, 0x2

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    const-string v6, "WPA-EAP IEEE8021X"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const-string v6, "SIM"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_1
    :goto_1
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$1202(Z)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v6, "AKA"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v6, "WifiService"

    const-string v7, "addChangedWifiProfile - NullPointerException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public addWifiVendorProfile()V
    .locals 7

    iget-object v5, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_4

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiService"

    const-string v6, "addWifiVendorProfile()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/4 v5, 0x2

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    const-string v5, "WPA-EAP IEEE8021X"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    :cond_1
    const-string v5, "SIM"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_2
    :goto_1
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$1202(Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v5, "AKA"

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "WifiService"

    const-string v6, "addWifiVendorProfile - NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public getGeneralNwInfo()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1902([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrevNetworkName()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForPrevNetworkName:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2002([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->makePrevNetworkName()V

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getVendorApInfo()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->fileDefaultPath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1802([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public removeChangedWifiProfile()V
    .locals 10

    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v8, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    const-string v5, ""

    const-string v4, ""

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1600()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2200()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v7, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_5

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const-string v5, "WPA-EAP IEEE8021X"

    :cond_2
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    const-string v4, "SIM"

    :cond_3
    :goto_2
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "WifiService"

    const-string v9, "remove proper wifi profile"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiService;->removeNetwork(I)Z

    const-string v5, ""

    const-string v4, ""

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$1202(Z)Z

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$1702(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v8, "WifiService"

    const-string v9, "removeChangedWifiProfile - NullPointerException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    :try_start_1
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_3

    const-string v4, "AKA"
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method
