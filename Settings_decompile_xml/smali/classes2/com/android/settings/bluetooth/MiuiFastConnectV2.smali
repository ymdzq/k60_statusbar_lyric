.class public Lcom/android/settings/bluetooth/MiuiFastConnectV2;
.super Ljava/lang/Object;
.source "MiuiFastConnectV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;,
        Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;,
        Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;
    }
.end annotation


# static fields
.field public static final TWS03_DEVICE_ID_LIST:[Ljava/lang/String;

.field public static final TWS03_GL_DEVICE_ID_LIST:[Ljava/lang/String;

.field private static mMiuiFastConnectV2:Lcom/android/settings/bluetooth/MiuiFastConnectV2;


# instance fields
.field private DBG:Z

.field private final TAG:Ljava/lang/String;

.field private kp:Ljava/security/KeyPair;

.field private kpg:Ljava/security/KeyPairGenerator;

.field private mAES128Key:[B

.field private mAccountKey:[B

.field private mAccountKeyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mAccountKeyCloudScrambled:Ljava/lang/String;

.field private mAccountkeyCCCD:Landroid/bluetooth/BluetoothGattDescriptor;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceId:[B

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mHandler:Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;

.field private mHandlerLock:Ljava/lang/Object;

.field private mHashmapCloudInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyBasedCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mLocalPublicKey:Ljava/security/PublicKey;

.field private mLocalPublickeyByte:[B

.field private mMiuiOnLineBluetoothDevicePreference:Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;

.field private mPairing:Z

.field private mPairingChangeReceiver:Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;

.field private mPasskeyCCCD:Landroid/bluetooth/BluetoothGattDescriptor;

.field private mPasskeyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mRemoteDeviceBREDR:Landroid/bluetooth/BluetoothDevice;

.field private mRemoteDeviceLE:Landroid/bluetooth/BluetoothDevice;

.field private mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mSeekerPasskey:[B

.field private mServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private mkeybasedCCCD:Landroid/bluetooth/BluetoothGattDescriptor;


# direct methods
.method static bridge synthetic -$$Nest$fgetDBG(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAES128Key(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAES128Key:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccountKeyCloudScrambled(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountKeyCloudScrambled:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothGatt(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothLeScanner(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGattCallback(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandler:Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandlerLock(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyBasedCharacteristic(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mKeyBasedCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMiuiOnLineBluetoothDevicePreference(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mMiuiOnLineBluetoothDevicePreference:Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPairing(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPairing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteDeviceBREDR(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mRemoteDeviceBREDR:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanCallback(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/bluetooth/le/ScanCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekerPasskey(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mSeekerPasskey:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceList(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mServiceList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAccountKeyCharacteristic(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountKeyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccountkeyCCCD(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountkeyCCCD:Landroid/bluetooth/BluetoothGattDescriptor;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothGatt(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDeviceId(Lcom/android/settings/bluetooth/MiuiFastConnectV2;[B)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mDeviceId:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmKeyBasedCharacteristic(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mKeyBasedCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPasskeyCCCD(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPasskeyCCCD:Landroid/bluetooth/BluetoothGattDescriptor;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPasskeyCharacteristic(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPasskeyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRemoteDeviceLE(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mRemoteDeviceLE:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceList(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mServiceList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmkeybasedCCCD(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mkeybasedCCCD:Landroid/bluetooth/BluetoothGattDescriptor;

    return-void
.end method

.method static bridge synthetic -$$Nest$menableAccountkeyCCCD(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->enableAccountkeyCCCD()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menableKeybasedCCCD(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->enableKeybasedCCCD()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menablePasskeyCCCD(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->enablePasskeyCCCD()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitBluetooth(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->initBluetooth()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mkbpResponseHandle(Lcom/android/settings/bluetooth/MiuiFastConnectV2;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->kbpResponseHandle([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpairDone(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->pairDone()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformLEScan(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->performLEScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessageDelay(Lcom/android/settings/bluetooth/MiuiFastConnectV2;IJ)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->sendMessageDelay(IJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartKBPNegotiation(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->startKBPNegotiation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteAccountKey(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->writeAccountKey()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwritePassKey(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->writePassKey(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbytesToHexString([B)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 10

    const-string v0, "01011606"

    const-string v1, "01011803"

    const-string v2, "01011607"

    const-string v3, "01011703"

    const-string v4, "01011704"

    const-string v5, "0201010005"

    const-string v6, "0201010006"

    const-string v7, "0201010007"

    const-string v8, "020101000B"

    const-string v9, "020101000C"

    .line 171
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->TWS03_DEVICE_ID_LIST:[Ljava/lang/String;

    const-string v1, "01011700"

    const-string v2, "01011701"

    const-string v3, "01011702"

    const-string v4, "0201010008"

    const-string v5, "0201010009"

    const-string v6, "020101000A"

    .line 173
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->TWS03_GL_DEVICE_ID_LIST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;)V
    .locals 3

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MiuiFastConnectV2_Settings"

    .line 116
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->kpg:Ljava/security/KeyPairGenerator;

    .line 133
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->kp:Ljava/security/KeyPair;

    .line 135
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandlerLock:Ljava/lang/Object;

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHashmapCloudInfo:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 147
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPairing:Z

    .line 870
    new-instance v1, Lcom/android/settings/bluetooth/MiuiFastConnectV2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2$1;-><init>(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 176
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mMiuiOnLineBluetoothDevicePreference:Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;

    .line 179
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "FastConnectServiceHandlerSettings"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 181
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 182
    new-instance p2, Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;-><init>(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Landroid/os/Looper;Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler-IA;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandler:Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;

    const/16 p1, 0x64

    const-wide/16 v1, 0x0

    .line 183
    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->sendMessageDelay(IJ)Z

    .line 184
    new-instance p1, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;-><init>(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback-IA;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 185
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->registerReceiver()Z

    return-void
.end method

.method private accountKeyGenerator()[B
    .locals 1

    .line 603
    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [B

    .line 605
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 606
    sget-object p0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->ACCOUNT_KEY_HEADER:[B

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->byteMerger([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static byteMerger([B[B)[B
    .locals 3

    .line 596
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 597
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 694
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 696
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 697
    sget-object v6, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->HEX_CHAR:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 698
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 700
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private enableAccountkeyCCCD()Z
    .locals 5

    .line 460
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountkeyCCCD:Landroid/bluetooth/BluetoothGattDescriptor;

    sget-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->ENABLE_CCCD:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 461
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountkeyCCCD:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    .line 462
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    const-string v2, "MiuiFastConnectV2_Settings"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    write account key CCCD result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0x75

    const-wide/16 v3, 0x64

    .line 464
    invoke-direct {p0, v0, v3, v4}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->sendMessageDelay(IJ)Z

    .line 465
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "send MSG_ENABLE_ACCOUNTKEY_CCCD again!!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountKeyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 469
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable account key notification characteristic "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0x68

    const-wide/16 v2, 0x1f4

    .line 470
    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->sendMessageDelay(IJ)Z

    return v0
.end method

.method private enableKeybasedCCCD()Z
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mkeybasedCCCD:Landroid/bluetooth/BluetoothGattDescriptor;

    sget-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->ENABLE_CCCD:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 442
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mkeybasedCCCD:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    .line 443
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    const-string v2, "MiuiFastConnectV2_Settings"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    write key based CCCD result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mKeyBasedCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 446
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable keybased notification  characteristic "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private enablePasskeyCCCD()Z
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPasskeyCCCD:Landroid/bluetooth/BluetoothGattDescriptor;

    sget-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->ENABLE_CCCD:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 452
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPasskeyCCCD:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    .line 453
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    const-string v2, "MiuiFastConnectV2_Settings"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    write passkey CCCD result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPasskeyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 455
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable passkey notification characteristic "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private encrypt([B)[B
    .locals 2

    .line 687
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "encrypt: AES128Key is "

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAES128Key:[B

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->printBytes(Ljava/lang/String;[B)V

    .line 688
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAES128Key:[B

    invoke-static {p1, p0}, Lcom/android/settings/bluetooth/MiuiAES;->encrypt([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private getSalt(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string p0, "SHA1PRNG"

    .line 786
    invoke-static {p0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object p0

    .line 787
    new-array v0, p1, [B

    .line 788
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p1, :cond_0

    .line 790
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-byte v2, v0, p0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(I)V

    .line 791
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getScrambledAccountKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 363
    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    :try_start_0
    const-string p1, "SHA1"

    .line 365
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 366
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 368
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 370
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static hexStringToBytes(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 704
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 707
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    move v2, v0

    .line 709
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 710
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 711
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiFastConnectV2_Settings"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v0, [B

    return-object p0

    :cond_2
    :goto_1
    new-array p0, v0, [B

    return-object p0
.end method

.method private initBluetooth()V
    .locals 2

    .line 1030
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 1032
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string p0, "MiuiFastConnectV2_Settings"

    const-string v0, "Bluetooth is not support!"

    .line 1034
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1036
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1040
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private isForTWS03(Ljava/lang/String;)Z
    .locals 1

    .line 797
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 798
    :cond_0
    sget-object p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->TWS03_DEVICE_ID_LIST:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->TWS03_GL_DEVICE_ID_LIST:[Ljava/lang/String;

    .line 799
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private kbpResponseHandle([B)V
    .locals 6

    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 809
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAES128Key:[B

    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/MiuiAES;->decrypt([B[B)[B

    move-result-object p1

    .line 810
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "decrypted data is: "

    invoke-static {v2, p1}, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->printBytes(Ljava/lang/String;[B)V

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 811
    array-length v3, p1

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    aget-byte v4, p1, v3

    if-ne v4, v2, :cond_1

    .line 813
    aget-byte v4, p1, v2

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 814
    aget-byte v4, p1, v3

    aput-byte v4, v1, v2

    const/4 v4, 0x3

    .line 815
    aget-byte v5, p1, v4

    aput-byte v5, v1, v3

    const/4 v3, 0x4

    .line 816
    aget-byte v5, p1, v3

    aput-byte v5, v1, v4

    const/4 v4, 0x5

    .line 817
    aget-byte v5, p1, v4

    aput-byte v5, v1, v3

    .line 818
    aget-byte p1, p1, v0

    aput-byte p1, v1, v4

    .line 819
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz p1, :cond_1

    const-string p1, "addressBRDER is: "

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->printBytes(Ljava/lang/String;[B)V

    .line 822
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mRemoteDeviceBREDR:Landroid/bluetooth/BluetoothDevice;

    .line 823
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz p1, :cond_2

    const-string p1, "MiuiFastConnectV2_Settings"

    const-string v0, "createBond"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mDeviceId:[B

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 825
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->isForTWS03(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 826
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mRemoteDeviceBREDR:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    goto :goto_0

    .line 828
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mRemoteDeviceBREDR:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 830
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mRemoteDeviceBREDR:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->sentIgnorePairDialogIntentXFPS(Ljava/lang/String;)V

    .line 831
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPairing:Z

    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;)Lcom/android/settings/bluetooth/MiuiFastConnectV2;
    .locals 1

    .line 189
    new-instance v0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;)V

    sput-object v0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mMiuiFastConnectV2:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    return-object v0
.end method

.method private pairDone()V
    .locals 2

    .line 303
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MiuiFastConnectV2_Settings"

    const-string/jumbo v1, "pairDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPairing:Z

    return-void
.end method

.method private performLEScan()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1047
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    new-instance v2, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    sget-object v3, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->UUID_SERVICE_FAST_PAIR:Landroid/os/ParcelUuid;

    .line 1049
    invoke-virtual {v2, v3, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    .line 1050
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v2, 0x2

    .line 1052
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    .line 1054
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 1055
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v2, v1, v0, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 1056
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Perform le scan with filters: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiFastConnectV2_Settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private registerReceiver()Z
    .locals 3

    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "miui.bluetooth.ACTION_XFPS_PAIRING_REQUEST"

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    new-instance v1, Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;-><init>(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPairingChangeReceiver:Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;

    .line 297
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "MiuiFastConnectV2_Settings"

    const-string/jumbo v0, "registerReceiver  pairingChangeReceiver"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private sendMessageDelay(IJ)Z
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandler:Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;

    if-eqz v1, :cond_2

    .line 277
    invoke-virtual {v1, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandler:Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_1

    .line 281
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandler:Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    :cond_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "MiuiFastConnectV2_Settings"

    const-string/jumbo p1, "sendMessageDelay handler null"

    .line 284
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 287
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sentIgnorePairDialogIntentXFPS(Ljava/lang/String;)V
    .locals 4

    .line 835
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mRemoteDeviceBREDR:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "00:00:00:00:00:00"

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 838
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 839
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "should not be here : connectDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentAddress: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", peerAddress: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MiuiFastConnectV2_Settings"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "fast_connect_show_dialog"

    .line 845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 844
    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 847
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v1, "miui.bluetooth.FAST_CONNECT_DEVICE_BOND"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FAST_CONNECT_CURRENT_DEVICE"

    .line 848
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FAST_CONNECT_PEER_DEVICE"

    .line 849
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    const-string v1, "com.xiaomi.bluetooth"

    .line 850
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "XFPS_SUPPORTED"

    const/4 v1, 0x1

    .line 851
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.android.bluetooth"

    .line 852
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startKBPNegotiation()V
    .locals 9

    .line 491
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mRemoteDeviceLE:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    const-string v2, "MiuiFastConnectV2_Settings"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remote address string: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, ":"

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 494
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remote address strings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 496
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remote address bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_2
    array-length v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x2

    if-ne v0, v4, :cond_3

    .line 500
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PAIRING_REQUEST:[B

    aget-object v6, v1, v3

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->strToByte(Ljava/lang/String;)B

    move-result v6

    aput-byte v6, v0, v5

    .line 501
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PAIRING_REQUEST:[B

    aget-object v6, v1, v2

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->strToByte(Ljava/lang/String;)B

    move-result v6

    const/4 v7, 0x3

    aput-byte v6, v0, v7

    .line 502
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PAIRING_REQUEST:[B

    aget-object v6, v1, v5

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->strToByte(Ljava/lang/String;)B

    move-result v6

    const/4 v8, 0x4

    aput-byte v6, v0, v8

    .line 503
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PAIRING_REQUEST:[B

    aget-object v6, v1, v7

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->strToByte(Ljava/lang/String;)B

    move-result v6

    const/4 v7, 0x5

    aput-byte v6, v0, v7

    .line 504
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PAIRING_REQUEST:[B

    aget-object v6, v1, v8

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->strToByte(Ljava/lang/String;)B

    move-result v6

    aput-byte v6, v0, v4

    .line 505
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PAIRING_REQUEST:[B

    aget-object v1, v1, v7

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->strToByte(Ljava/lang/String;)B

    move-result v1

    const/4 v4, 0x7

    aput-byte v1, v0, v4

    .line 509
    :cond_3
    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->getSalt(I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 511
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 513
    :goto_0
    sget-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PAIRING_REQUEST:[B

    aget-byte v3, v0, v3

    const/16 v4, 0xe

    aput-byte v3, v1, v4

    const/16 v3, 0xf

    .line 514
    aget-byte v0, v0, v2

    aput-byte v0, v1, v3

    .line 516
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "pairingRequestData is: "

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->printBytes(Ljava/lang/String;[B)V

    .line 517
    :cond_4
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PAIRING_REQUEST:[B

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->encrypt([B)[B

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mLocalPublicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_5

    .line 519
    array-length v1, v0

    sget-object v2, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->ALICE_PUBLIC_DATA:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 520
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 521
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 522
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mLocalPublickeyByte:[B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 524
    :cond_5
    array-length v1, v0

    new-array v1, v1, [B

    .line 525
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 526
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 529
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 530
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "write data is: "

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->printBytes(Ljava/lang/String;[B)V

    .line 531
    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mKeyBasedCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 532
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mKeyBasedCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method

.method private strToByte(Ljava/lang/String;)B
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_4

    .line 756
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    mul-int/lit8 v1, v1, 0x10

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x30

    goto :goto_1

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-gt v2, v3, :cond_3

    :cond_2
    add-int/lit8 v2, v2, -0x41

    add-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_3
    move v2, p0

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    and-int/lit16 p0, v1, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private writeAccountKey()V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountKey:[B

    if-nez v0, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->accountKeyGenerator()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountKey:[B

    .line 860
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "write account key: "

    .line 861
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountKey:[B

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->printBytes(Ljava/lang/String;[B)V

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountKeyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountKey:[B

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->encrypt([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 864
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountKeyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method

.method private writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4

    .line 675
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "MiuiFastConnectV2_Settings"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->beginReliableWrite()Z

    move-result v0

    .line 680
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": beginReliableWrite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    .line 682
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "writeKeyBasedPairingCharacteristic: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p1

    :cond_3
    :goto_0
    const-string p0, "BluetoothAdapter not initialized"

    .line 676
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private writePassKey(Ljava/lang/String;)V
    .locals 4

    .line 476
    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mSeekerPasskey:[B

    .line 478
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "mpasskeySeeker: "

    .line 479
    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->printBytes(Ljava/lang/String;[B)V

    .line 480
    sget-object p1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PASSKEY:[B

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mSeekerPasskey:[B

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    aput-byte v2, p1, v3

    .line 481
    aget-byte v2, v0, v3

    const/4 v3, 0x2

    aput-byte v2, p1, v3

    .line 482
    aget-byte v0, v0, v3

    aput-byte v0, p1, v1

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPasskeyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PASSKEY:[B

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->encrypt([B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 485
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPasskeyCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .line 311
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MiuiFastConnectV2_Settings"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->pairDone()V

    .line 315
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPairingChangeReceiver:Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;

    if-eqz v2, :cond_1

    .line 316
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPairingChangeReceiver:Lcom/android/settings/bluetooth/MiuiFastConnectV2$PairingChangeReceiver;

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandler:Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;

    if-eqz v2, :cond_3

    .line 322
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 323
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandler:Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 325
    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 327
    :cond_2
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mHandler:Lcom/android/settings/bluetooth/MiuiFastConnectV2$ServiceMessageHandler;

    .line 329
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAccountKeyFromScanResult(Landroid/bluetooth/le/ScanResult;)[B
    .locals 2

    .line 381
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 386
    :cond_0
    sget-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->UUID_SERVICE_FAST_PAIR:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v1}, Landroid/bluetooth/le/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object p0

    .line 388
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 389
    array-length p1, p0

    const/16 v1, 0xe

    if-gt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    new-array p1, p1, [B

    const/4 v0, 0x6

    .line 394
    aget-byte v0, p0, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    const/4 v0, 0x7

    .line 395
    aget-byte v0, p0, v0

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    const/16 v0, 0x8

    .line 396
    aget-byte v0, p0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    const/16 v0, 0x9

    .line 397
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    const/16 v0, 0xa

    .line 398
    aget-byte p0, p0, v0

    const/4 v0, 0x0

    aput-byte p0, p1, v0

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getDeviceIdFromScanResult(Landroid/bluetooth/le/ScanResult;)[B
    .locals 3

    .line 408
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 413
    :cond_0
    sget-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->UUID_SERVICE_FAST_PAIR:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v1}, Landroid/bluetooth/le/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object p0

    .line 415
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 416
    array-length p1, p0

    const/16 v1, 0xe

    if-gt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    new-array p1, p1, [B

    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 421
    aget-byte v2, p0, v1

    aput-byte v2, p1, v0

    const/4 v0, 0x3

    .line 422
    aget-byte v2, p0, v0

    aput-byte v2, p1, v0

    const/4 v0, 0x1

    .line 423
    aget-byte v2, p0, v0

    aput-byte v2, p1, v1

    const/4 v2, 0x0

    .line 424
    aget-byte p0, p0, v2

    aput-byte p0, p1, v0

    aput-byte v1, p1, v2

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method getmPairing()Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mPairing:Z

    return p0
.end method

.method public startPair(Ljava/lang/String;)V
    .locals 2

    .line 432
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->getScrambledAccountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAccountKeyCloudScrambled:Ljava/lang/String;

    .line 433
    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->mAES128Key:[B

    const/4 p1, 0x1

    const-wide/16 v0, 0x0

    .line 434
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->sendMessageDelay(IJ)Z

    return-void
.end method
