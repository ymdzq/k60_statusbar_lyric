.class public Lcom/android/settings/network/ResetNetworkOperationBuilder;
.super Ljava/lang/Object;
.source "ResetNetworkOperationBuilder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResetSequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$80qSrroUqATIC1ij-7-y0YLgv9g(Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$resetWifiManager$2(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H-ecLEk3oV2vdwNrjwUIifg7U-4(Landroid/net/VpnManager;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$resetVpnManager$1(Landroid/net/VpnManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Heh0OLOOLFfa0tFsQVfWOST_J9M(Landroid/bluetooth/BluetoothManager;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$resetBluetoothManager$8(Landroid/bluetooth/BluetoothManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NLa7pJ_TJ-5jXMSYV3JEEkGxSTs(Lcom/android/settings/network/ResetNetworkOperationBuilder;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$resetWifiP2pManager$4(Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OYjIbVgTZr4oUUk77xN75R9wLpU(Lcom/android/settings/network/ResetNetworkOperationBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$build$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$TkT9tNpkjeZ5EKV-U8x-_YQ1Py4(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$build$10(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U3VBL_J3vPx7dgLu_-4b-R-8-i0(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$attachSystemServiceWork$12(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xncxg1Ac_2_PA2hKgy6Cz6u7JHo(Lcom/android/settings/network/ResetNetworkOperationBuilder;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$resetApn$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bkNGpeo3-8yJe8lVVRDdNOIqFYs(Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$resetConnectivityManager$0(Landroid/net/ConnectivityManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dvxjYbp8Qv55HB34IE1ikDDsJqY(Lcom/android/settings/network/ResetNetworkOperationBuilder;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$resetEsim$5(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDMDPSaYWS1GJsWT1syKbVAp7_4(Ljava/util/concurrent/atomic/AtomicReference;Landroid/net/NetworkPolicyManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$resetTelephonyAndNetworkPolicyManager$7(Ljava/util/concurrent/atomic/AtomicReference;Landroid/net/NetworkPolicyManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$unxRk9kNBSzO3HvqnMejHwm2uBQ(Landroid/net/wifi/AmlMiuiWifiManager;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$resetWifiManager$3(Landroid/net/wifi/AmlMiuiWifiManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zPPVYWQLumkSJp58kncQKebE3gM(ILjava/util/concurrent/atomic/AtomicReference;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->lambda$resetTelephonyAndNetworkPolicyManager$6(ILjava/util/concurrent/atomic/AtomicReference;Landroid/telephony/TelephonyManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static synthetic lambda$attachSystemServiceWork$12(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 238
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", takes "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResetNetworkOpBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$build$10(Ljava/lang/Runnable;)V
    .locals 0

    .line 227
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$build$11()V
    .locals 1

    .line 227
    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$resetApn$9(I)V
    .locals 5

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "content://telephony/carriers/restore"

    .line 204
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 206
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subId/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    .line 212
    invoke-virtual {p0, v2, p1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", takes "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResetNetworkOpBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$resetBluetoothManager$8(Landroid/bluetooth/BluetoothManager;)V
    .locals 0

    .line 187
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->clearBluetooth()Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$resetConnectivityManager$0(Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->factoryReset()V

    return-void
.end method

.method private synthetic lambda$resetEsim$5(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 3

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 146
    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 148
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 152
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset eSIM, takes "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResetNetworkOpBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$resetTelephonyAndNetworkPolicyManager$6(ILjava/util/concurrent/atomic/AtomicReference;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 169
    invoke-virtual {p2, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->resetSettings()V

    return-void
.end method

.method private static synthetic lambda$resetTelephonyAndNetworkPolicyManager$7(Ljava/util/concurrent/atomic/AtomicReference;Landroid/net/NetworkPolicyManager;)V
    .locals 0

    .line 175
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$resetVpnManager$1(Landroid/net/VpnManager;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Landroid/net/VpnManager;->factoryReset()V

    return-void
.end method

.method private static synthetic lambda$resetWifiManager$2(Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->factoryReset()V

    return-void
.end method

.method private static synthetic lambda$resetWifiManager$3(Landroid/net/wifi/AmlMiuiWifiManager;)V
    .locals 0

    .line 101
    invoke-virtual {p0}, Landroid/net/wifi/AmlMiuiWifiManager;->factoryReset()V

    return-void
.end method

.method private synthetic lambda$resetWifiP2pManager$4(Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager;)V
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p2, p0, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->factoryReset(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    new-instance v1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda12;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda12;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build()Ljava/lang/Runnable;
    .locals 1

    .line 227
    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;)V

    return-object v0
.end method

.method public resetApn(I)Lcom/android/settings/network/ResetNetworkOperationBuilder;
    .locals 1

    .line 201
    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;I)V

    .line 218
    iget-object p1, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public resetBluetoothManager()Lcom/android/settings/network/ResetNetworkOperationBuilder;
    .locals 2

    .line 185
    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "bluetooth"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public resetConnectivityManager()Lcom/android/settings/network/ResetNetworkOperationBuilder;
    .locals 2

    .line 70
    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "connectivity"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public resetEsim(Ljava/lang/String;)Lcom/android/settings/network/ResetNetworkOperationBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->resetEsim(Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/settings/network/ResetNetworkOperationBuilder;

    return-object p0
.end method

.method public resetEsim(Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/settings/network/ResetNetworkOperationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/settings/network/ResetNetworkOperationBuilder;"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder;->mResetSequence:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public resetTelephonyAndNetworkPolicyManager(I)Lcom/android/settings/network/ResetNetworkOperationBuilder;
    .locals 2

    .line 166
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 167
    new-instance v1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda6;-><init>(ILjava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo p1, "phone"

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 173
    new-instance p1, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;

    invoke-direct {p1, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v0, "netpolicy"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public resetVpnManager()Lcom/android/settings/network/ResetNetworkOperationBuilder;
    .locals 2

    .line 82
    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda10;-><init>()V

    const-string/jumbo v1, "vpn_management"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public resetWifiManager()Lcom/android/settings/network/ResetNetworkOperationBuilder;
    .locals 2

    .line 94
    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda4;-><init>()V

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 99
    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "AmlMiuiWifiService"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public resetWifiP2pManager(Landroid/os/Looper;)Lcom/android/settings/network/ResetNetworkOperationBuilder;
    .locals 1

    .line 113
    new-instance v0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;Landroid/os/Looper;)V

    const-string/jumbo p1, "wifip2p"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->attachSystemServiceWork(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-object p0
.end method
