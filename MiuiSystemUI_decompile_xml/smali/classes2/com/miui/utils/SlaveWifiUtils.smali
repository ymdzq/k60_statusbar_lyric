.class public final Lcom/miui/utils/SlaveWifiUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final VENDOR_SPECIFIC_INFO_IOS:[B

.field public static volatile mInstance:Lcom/miui/utils/SlaveWifiUtils;


# instance fields
.field public final mAmlSlaveWifiManager:Ljava/lang/Object;

.field public final mIsMainline:Z

.field public final mIsSupportDualWifi:Z

.field public final mSlaveWifiManager:Ljava/lang/Object;

.field public final method_disconnectSlaveWifi:Ljava/lang/reflect/Method;

.field public final method_getSlaveWifiCurrentNetwork:Ljava/lang/reflect/Method;

.field public final method_getWifiSlaveConnectionInfo:Ljava/lang/reflect/Method;

.field public final method_isSlaveWifiEnabled:Ljava/lang/reflect/Method;

.field public final method_supportDualWifi:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Lcom/miui/utils/SlaveWifiUtils;->VENDOR_SPECIFIC_INFO_IOS:[B

    .line 9
    return-void

    .line 11
    :array_0
    .array-data 1
        0x0t
        0x17t
        -0xet
        0x6t
        0x1t
        0x1t
        0x3t
        0x1t
    .end array-data
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    const-string v0, ""

    .line 2
    const-string v1, "SERVICE_NAME"

    .line 4
    const-string v2, "SlaveWifiUtils"

    .line 6
    const-string v3, "SlaveWifiUtils: supportDualWifi is false. isMainLine="

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v4, 0x0

    .line 13
    iput-object v4, p0, Lcom/miui/utils/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    .line 14
    iput-object v4, p0, Lcom/miui/utils/SlaveWifiUtils;->mAmlSlaveWifiManager:Ljava/lang/Object;

    .line 16
    iput-object v4, p0, Lcom/miui/utils/SlaveWifiUtils;->method_getWifiSlaveConnectionInfo:Ljava/lang/reflect/Method;

    .line 18
    iput-object v4, p0, Lcom/miui/utils/SlaveWifiUtils;->method_getSlaveWifiCurrentNetwork:Ljava/lang/reflect/Method;

    .line 20
    iput-object v4, p0, Lcom/miui/utils/SlaveWifiUtils;->method_disconnectSlaveWifi:Ljava/lang/reflect/Method;

    .line 22
    iput-object v4, p0, Lcom/miui/utils/SlaveWifiUtils;->method_isSlaveWifiEnabled:Ljava/lang/reflect/Method;

    .line 24
    iput-object v4, p0, Lcom/miui/utils/SlaveWifiUtils;->method_supportDualWifi:Ljava/lang/reflect/Method;

    .line 26
    const/4 v5, 0x0

    .line 28
    iput-boolean v5, p0, Lcom/miui/utils/SlaveWifiUtils;->mIsMainline:Z

    .line 29
    :try_start_0
    const-string v6, "android.net.wifi.SlaveWifiManager"

    .line 31
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    move-result-object v6

    .line 36
    const-string v7, "android.net.wifi.AmlSlaveWifiManager"

    .line 37
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 39
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 42
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 43
    move-result-object v8

    .line 46
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v8

    .line 50
    check-cast v8, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    goto :goto_0

    .line 53
    :catch_0
    move-exception v8

    .line 54
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    move-object v8, v0

    .line 58
    :goto_0
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object v8

    .line 62
    iput-object v8, p0, Lcom/miui/utils/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    :try_start_3
    invoke-virtual {v7, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 65
    move-result-object v1

    .line 68
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 73
    move-object v0, v1

    .line 75
    goto :goto_1

    .line 76
    :catch_1
    move-exception v1

    .line 77
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/miui/utils/SlaveWifiUtils;->mAmlSlaveWifiManager:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    .line 87
    if-eqz p1, :cond_0

    .line 88
    move p1, v0

    .line 90
    goto :goto_2

    .line 91
    :cond_0
    move p1, v5

    .line 92
    :goto_2
    iput-boolean p1, p0, Lcom/miui/utils/SlaveWifiUtils;->mIsMainline:Z

    .line 93
    if-eqz p1, :cond_1

    .line 95
    move-object v6, v7

    .line 97
    :cond_1
    if-eqz p1, :cond_2

    .line 98
    const-string v1, "isSupportDualWifi"

    .line 100
    goto :goto_3

    .line 102
    :cond_2
    const-string/jumbo v1, "supportDualWifi"

    .line 103
    :goto_3
    invoke-virtual {v6, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    move-result-object v1

    .line 109
    iput-object v1, p0, Lcom/miui/utils/SlaveWifiUtils;->method_supportDualWifi:Ljava/lang/reflect/Method;

    .line 110
    invoke-virtual {p0}, Lcom/miui/utils/SlaveWifiUtils;->supportDualWifi()Z

    .line 112
    move-result v1

    .line 115
    iput-boolean v1, p0, Lcom/miui/utils/SlaveWifiUtils;->mIsSupportDualWifi:Z

    .line 116
    if-nez v1, :cond_3

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 131
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_3
    const-string p1, "getWifiSlaveConnectionInfo"

    .line 136
    invoke-virtual {v6, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 138
    move-result-object p1

    .line 141
    iput-object p1, p0, Lcom/miui/utils/SlaveWifiUtils;->method_getWifiSlaveConnectionInfo:Ljava/lang/reflect/Method;

    .line 142
    const-string p1, "getSlaveWifiCurrentNetwork"

    .line 144
    invoke-virtual {v6, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 146
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/miui/utils/SlaveWifiUtils;->method_getSlaveWifiCurrentNetwork:Ljava/lang/reflect/Method;

    .line 150
    const-string p1, "disconnectSlaveWifi"

    .line 152
    invoke-virtual {v6, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 154
    move-result-object p1

    .line 157
    iput-object p1, p0, Lcom/miui/utils/SlaveWifiUtils;->method_disconnectSlaveWifi:Ljava/lang/reflect/Method;

    .line 158
    const-string p1, "connectToSlaveAp"

    .line 160
    new-array v0, v0, [Ljava/lang/Class;

    .line 162
    const-class v1, Landroid/net/wifi/WifiConfiguration;

    .line 164
    aput-object v1, v0, v5

    .line 166
    invoke-virtual {v6, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 168
    const-string p1, "getSlaveWifiState"

    .line 171
    invoke-virtual {v6, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 173
    const-string p1, "isSlaveWifiEnabled"

    .line 176
    invoke-virtual {v6, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 178
    move-result-object p1

    .line 181
    iput-object p1, p0, Lcom/miui/utils/SlaveWifiUtils;->method_isSlaveWifiEnabled:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 182
    goto :goto_4

    .line 184
    :catch_2
    move-exception p0

    .line 185
    const-string/jumbo p1, "the device don\'t support dual wifi, return "

    .line 186
    invoke-static {p1, p0, v2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 189
    :goto_4
    return-void
    .line 192
.end method

.method public static isMeteredHint([Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    aget-object v3, p0, v2

    .line 7
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    .line 9
    move-result v4

    .line 12
    const/16 v5, 0xdd

    .line 13
    if-ne v4, v5, :cond_1

    .line 15
    const/16 v4, 0x8

    .line 17
    new-array v5, v4, [B

    .line 19
    :try_start_0
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    .line 21
    move-result-object v6

    .line 24
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    .line 25
    move-result v6

    .line 28
    if-le v4, v6, :cond_0

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    .line 32
    move-result-object v3

    .line 35
    invoke-virtual {v3, v5, v1, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    sget-object v3, Lcom/miui/utils/SlaveWifiUtils;->VENDOR_SPECIFIC_INFO_IOS:[B

    .line 39
    :try_start_1
    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 41
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    if-eqz v3, :cond_1

    .line 45
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :catch_0
    move-exception v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    return v1
    .line 56
.end method


# virtual methods
.method public final checkIsVaild()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/utils/SlaveWifiUtils;->mIsSupportDualWifi:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/utils/SlaveWifiUtils;->getSlaveWifiManager()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final getSlaveWifiManager()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/utils/SlaveWifiUtils;->mIsMainline:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/utils/SlaveWifiUtils;->mAmlSlaveWifiManager:Ljava/lang/Object;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/miui/utils/SlaveWifiUtils;->mSlaveWifiManager:Ljava/lang/Object;

    .line 9
    :goto_0
    return-object p0
    .line 11
.end method

.method public final getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 3

    .line 1
    const-string v0, "SlaveWifiUtils"

    .line 2
    invoke-virtual {p0}, Lcom/miui/utils/SlaveWifiUtils;->checkIsVaild()Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/utils/SlaveWifiUtils;->method_getWifiSlaveConnectionInfo:Ljava/lang/reflect/Method;

    .line 12
    invoke-virtual {p0}, Lcom/miui/utils/SlaveWifiUtils;->getSlaveWifiManager()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    move-object v2, p0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string v1, "getWifiSlaveConnectionInfo Exception:"

    .line 27
    invoke-static {v1, p0, v0}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 29
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "getWifiSlaveConnectionInfo:"

    .line 34
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-object v2
    .line 49
.end method

.method public final isSlaveWifiEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/utils/SlaveWifiUtils;->checkIsVaild()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/miui/utils/SlaveWifiUtils;->method_isSlaveWifiEnabled:Ljava/lang/reflect/Method;

    .line 12
    invoke-virtual {p0}, Lcom/miui/utils/SlaveWifiUtils;->getSlaveWifiManager()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    move-object v0, p0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string v1, "isSlaveWifiEnabled Exception:"

    .line 28
    const-string v2, "SlaveWifiUtils"

    .line 30
    invoke-static {v1, p0, v2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 32
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    move-result p0

    .line 38
    return p0
    .line 39
.end method

.method public final supportDualWifi()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/miui/utils/SlaveWifiUtils;->method_supportDualWifi:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {p0}, Lcom/miui/utils/SlaveWifiUtils;->getSlaveWifiManager()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    move-object v0, p0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string/jumbo v1, "supportDualWifi Exception:"

    .line 20
    const-string v2, "SlaveWifiUtils"

    .line 23
    invoke-static {v1, p0, v2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 25
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    move-result p0

    .line 31
    return p0
.end method
