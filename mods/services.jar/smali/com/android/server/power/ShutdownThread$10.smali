.class Lcom/android/server/power/ShutdownThread$10;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$10;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$10;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    const-string v20, "ShutdownThread"

    const-string v21, "!@Start shutdown radios"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v20, "sys.deviceOffReq"

    const-string v21, "1"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v20, "sys.radio.shutdown"

    const-string/jumbo v21, "true"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const-string v20, "nfc"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v12

    const-string v20, "phone"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v14

    const-string v20, "bluetooth_manager"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    const-string v20, "connectivity"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v5

    const/4 v15, 0x0

    const/4 v4, 0x1

    const/16 v16, 0x1

    :try_start_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v20

    if-eqz v20, :cond_2

    const-string v20, "phone_msim"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v11

    if-eqz v11, :cond_7

    const/4 v9, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_7

    if-eqz v16, :cond_1

    invoke-interface {v11, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v20

    if-nez v20, :cond_1

    const/16 v16, 0x1

    :goto_1
    invoke-interface {v11, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "ShutdownThread"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Turning off radio on Subscription :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v11, v0, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    :cond_2
    if-eqz v14, :cond_3

    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v20

    if-nez v20, :cond_f

    :cond_3
    const/16 v16, 0x1

    :goto_2
    if-eqz v5, :cond_4

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v20

    if-eqz v20, :cond_5

    :cond_4
    if-eqz v14, :cond_5

    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v20

    if-nez v20, :cond_6

    :cond_5
    const/16 v16, 0x1

    :cond_6
    if-nez v16, :cond_10

    const-string v20, "ShutdownThread"

    const-string v21, "Turning off radio..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    if-eqz v15, :cond_8

    :try_start_1
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v20

    if-nez v20, :cond_11

    :cond_8
    const/16 v17, 0x1

    :goto_4
    if-nez v17, :cond_9

    const-string v20, "ShutdownThread"

    const-string v21, "Turning off radio2..."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v15, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    :cond_a
    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_b

    const-string v20, "ShutdownThread"

    const-string v21, "Disabling WiFi..."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->shutdown()Z

    :cond_b
    const-string v20, "ShutdownThread"

    const-string v21, "Waiting for NFC, Bluetooth, Wi-Fi and Radio..."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_c

    :try_start_2
    invoke-interface {v12}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    :cond_c
    const/4 v13, 0x1

    :goto_7
    if-nez v13, :cond_d

    const-string v20, "ShutdownThread"

    const-string v21, "Turning off NFC..."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_d
    :goto_8
    :try_start_3
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_1e

    if-nez v4, :cond_e

    :try_start_4
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v20

    if-nez v20, :cond_14

    const/4 v4, 0x1

    :goto_a
    if-eqz v4, :cond_e

    const-string v20, "ShutdownThread"

    const-string v21, "Bluetooth turned off."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-nez v16, :cond_18

    :try_start_5
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v20

    if-eqz v20, :cond_16

    const-string v20, "phone_msim"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v11

    const/4 v9, 0x0

    :goto_b
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_17

    if-eqz v16, :cond_15

    invoke-interface {v11, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v20

    if-nez v20, :cond_15

    const/16 v16, 0x1

    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_10
    :try_start_6
    const-string v20, "ShutdownThread"

    const-string v21, "radio already turned off"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v8

    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/16 v16, 0x1

    goto/16 :goto_3

    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_4

    :catch_1
    move-exception v8

    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/16 v17, 0x1

    goto/16 :goto_5

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_7

    :catch_2
    move-exception v8

    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during NFC shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v13, 0x1

    goto/16 :goto_8

    :catch_3
    move-exception v8

    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during bluetooth permanent log dump"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_9

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_a

    :catch_4
    move-exception v8

    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v4, 0x1

    goto/16 :goto_a

    :cond_15
    const/16 v16, 0x0

    goto :goto_c

    :cond_16
    :try_start_7
    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v20

    if-nez v20, :cond_1f

    const/16 v16, 0x1

    :cond_17
    :goto_d
    const-string v6, ""

    const-string v20, "ril.modem.board"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v20, "XMM"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_21

    if-nez v16, :cond_18

    const-string v18, ""

    const-string v20, "ril.deviceOffRes"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_20

    const-string v20, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    const-string v20, "ShutdownThread"

    const-string v21, "!@PhoneOff req resp"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    const-string v20, "ShutdownThread"

    const-string v21, "Radio turned off."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_e
    const-string v20, "ShutdownThread"

    const-string v21, "Skip wait for modem state off."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    if-nez v17, :cond_19

    :try_start_8
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v20

    if-nez v20, :cond_22

    const/16 v17, 0x1

    :goto_f
    if-eqz v17, :cond_19

    const-string v20, "ShutdownThread"

    const-string v21, "Radio2 turned off."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_23

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_23

    :cond_1b
    const/4 v2, 0x1

    :cond_1c
    :goto_10
    if-nez v13, :cond_1d

    :try_start_9
    invoke-interface {v12}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_24

    const/4 v13, 0x1

    :goto_11
    if-eqz v13, :cond_1d

    const-string v20, "ShutdownThread"

    const-string v21, "NFC turned off."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-eqz v16, :cond_25

    if-eqz v17, :cond_25

    if-eqz v4, :cond_25

    if-eqz v13, :cond_25

    if-eqz v2, :cond_25

    if-eqz v10, :cond_25

    const-string v20, "ShutdownThread"

    const-string v21, "NFC, Radio, Bluetooth and WiFi shutdown complete."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$done:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    aput-boolean v22, v20, v21

    :cond_1e
    return-void

    :cond_1f
    const/16 v16, 0x0

    goto/16 :goto_d

    :catch_5
    move-exception v8

    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/16 v16, 0x1

    goto/16 :goto_d

    :cond_20
    const/16 v16, 0x0

    const-string v20, "ShutdownThread"

    const-string v21, "ril.deviceOffRes is not set"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_21
    if-eqz v16, :cond_18

    const-string v20, "ShutdownThread"

    const-string v21, "Radio turned off."

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_f

    :catch_6
    move-exception v8

    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/16 v17, 0x1

    goto/16 :goto_f

    :cond_23
    const/4 v2, 0x0

    goto :goto_10

    :cond_24
    const/4 v13, 0x0

    goto :goto_11

    :catch_7
    move-exception v8

    const-string v20, "ShutdownThread"

    const-string v21, "RemoteException during NFC shutdown"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v13, 0x1

    goto :goto_11

    :cond_25
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RadioOff:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", BluetoothOff:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", NFC Off:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", WiFiOff:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v20, "ShutdownThread"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "ShutdownThread"

    const-string v21, "!@before sleep"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v20, 0x1f4

    :try_start_a
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_8

    :goto_12
    const-string v20, "ShutdownThread"

    const-string v21, "!@after sleep"

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "ShutdownThread"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "!@[Phone off retry:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " radio="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " radio2="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bluetooth="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " nfc="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " modem="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catch_8
    move-exception v7

    const-string v20, "ShutdownThread"

    const-string v21, "InterruptedException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_12
.end method
