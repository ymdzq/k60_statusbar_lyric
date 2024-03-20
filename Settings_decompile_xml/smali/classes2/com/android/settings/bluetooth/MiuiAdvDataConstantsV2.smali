.class public Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;
.super Ljava/lang/Object;
.source "MiuiAdvDataConstantsV2.java"


# static fields
.field public static ACCOUNT_KEY_HEADER:[B

.field public static ALICE_PRIVATE_DATA:[B

.field public static ALICE_PUBLIC_DATA:[B

.field public static BOB_PRIVATE_DATA:[B

.field public static ENABLE_CCCD:[B

.field public static final HEX_CHAR:[C

.field static final ID_CODE_MIOT:[B

.field static final ID_CODE_XIAO_MI:[B

.field public static PAIRING_REQUEST:[B

.field public static PAIRING_REQUEST_HEADER:[B

.field public static PASSKEY:[B

.field public static PRIVATE_HEADER_1:[B

.field public static PRIVATE_HEADER_2:[B

.field public static REMOTE_PUBLIC_KEY:[B

.field public static REMOTE_PUBLIC_KEY_RAW:[B

.field static final UUID_CCCD:Landroid/os/ParcelUuid;

.field static final UUID_CHAR_ACCOUNTKEY:Landroid/os/ParcelUuid;

.field static final UUID_CHAR_CCCD:Landroid/os/ParcelUuid;

.field static final UUID_CHAR_KEYBASEDPAIRING:Landroid/os/ParcelUuid;

.field static final UUID_CHAR_MODELID:Landroid/os/ParcelUuid;

.field static final UUID_CHAR_PASSKEY:Landroid/os/ParcelUuid;

.field static final UUID_FIRMWARE_REVISION:Landroid/os/ParcelUuid;

.field static final UUID_SERVICE_FAST_PAIR:Landroid/os/ParcelUuid;

.field public static X509_HEADER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/16 v2, 0x4d

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 28
    sput-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->ID_CODE_XIAO_MI:[B

    new-array v1, v0, [B

    const/16 v2, 0x16

    aput-byte v2, v1, v3

    .line 31
    sput-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->ID_CODE_MIOT:[B

    const-string v1, "0000fd2d-0000-1000-8000-00805f9b34fb"

    .line 35
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->UUID_SERVICE_FAST_PAIR:Landroid/os/ParcelUuid;

    const-string v1, "0000ff10-0000-1000-8000-00805f9b34fb"

    .line 188
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->UUID_CHAR_MODELID:Landroid/os/ParcelUuid;

    const-string v1, "0000ff11-0000-1000-8000-00805f9b34fb"

    .line 191
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->UUID_CHAR_KEYBASEDPAIRING:Landroid/os/ParcelUuid;

    const-string v1, "00002902-0000-1000-8000-00805f9b34fb"

    .line 194
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    sput-object v2, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->UUID_CHAR_CCCD:Landroid/os/ParcelUuid;

    const-string v2, "0000ff12-0000-1000-8000-00805f9b34fb"

    .line 197
    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    sput-object v2, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->UUID_CHAR_PASSKEY:Landroid/os/ParcelUuid;

    const-string v2, "0000ff13-0000-1000-8000-00805f9b34fb"

    .line 200
    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    sput-object v2, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->UUID_CHAR_ACCOUNTKEY:Landroid/os/ParcelUuid;

    const-string v2, "00002a26-0000-1000-8000-00805f9b34fb"

    .line 202
    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    sput-object v2, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->UUID_FIRMWARE_REVISION:Landroid/os/ParcelUuid;

    .line 205
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->UUID_CCCD:Landroid/os/ParcelUuid;

    const/16 v1, 0x10

    new-array v2, v1, [C

    .line 206
    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->HEX_CHAR:[C

    new-array v2, v1, [B

    .line 214
    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PAIRING_REQUEST:[B

    new-array v1, v1, [B

    .line 222
    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PASSKEY:[B

    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 229
    fill-array-data v2, :array_3

    sput-object v2, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PAIRING_REQUEST_HEADER:[B

    new-array v0, v0, [B

    const/4 v2, 0x4

    aput-byte v2, v0, v3

    .line 234
    sput-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->ACCOUNT_KEY_HEADER:[B

    const/16 v0, 0x5b

    new-array v0, v0, [B

    .line 238
    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->REMOTE_PUBLIC_KEY:[B

    const/16 v0, 0x24

    new-array v0, v0, [B

    .line 252
    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PRIVATE_HEADER_1:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 260
    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->PRIVATE_HEADER_2:[B

    const/16 v0, 0x1b

    new-array v0, v0, [B

    .line 265
    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->X509_HEADER:[B

    const/16 v0, 0x20

    new-array v2, v0, [B

    .line 272
    fill-array-data v2, :array_8

    sput-object v2, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->BOB_PRIVATE_DATA:[B

    const/16 v2, 0x40

    new-array v3, v2, [B

    .line 279
    fill-array-data v3, :array_9

    sput-object v3, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->REMOTE_PUBLIC_KEY_RAW:[B

    new-array v0, v0, [B

    .line 289
    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->ALICE_PRIVATE_DATA:[B

    new-array v0, v2, [B

    .line 296
    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->ALICE_PUBLIC_DATA:[B

    new-array v0, v1, [B

    .line 308
    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->ENABLE_CCCD:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x3ct
        -0x3dt
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x30t
        0x20t
        0x10t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x3ct
        -0x3dt
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x30t
        0x59t
        0x30t
        0x13t
        0x6t
        0x7t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
        0x3t
        0x42t
        0x0t
        0x4t
        -0x9t
        -0x2ct
        -0x6at
        -0x5at
        0x2et
        -0x36t
        0x41t
        0x63t
        0x51t
        0x54t
        0xat
        -0x5dt
        0x43t
        -0x44t
        0x69t
        0xat
        0x61t
        0x9t
        -0xbt
        0x51t
        0x50t
        0x6t
        0x66t
        -0x48t
        0x3bt
        0x12t
        0x51t
        -0x5t
        -0x7ct
        -0x6t
        0x28t
        0x60t
        0x79t
        0x5et
        -0x43t
        0x63t
        -0x2dt
        -0x48t
        -0x7dt
        0x6ft
        0x44t
        -0x57t
        -0x5dt
        -0x1et
        -0x75t
        -0x4dt
        0x40t
        0x17t
        -0x20t
        0x15t
        -0xbt
        -0x69t
        -0x6dt
        0x5t
        -0x28t
        0x49t
        -0x3t
        -0x8t
        -0x22t
        0x10t
        0x12t
        0x3bt
        0x61t
        -0x2et
    .end array-data

    :array_5
    .array-data 1
        0x30t
        -0x7ft
        -0x79t
        0x2t
        0x1t
        0x0t
        0x30t
        0x13t
        0x6t
        0x7t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
        0x4t
        0x6dt
        0x30t
        0x6bt
        0x2t
        0x1t
        0x1t
        0x4t
        0x20t
    .end array-data

    :array_6
    .array-data 1
        -0x5ft
        0x44t
        0x3t
        0x42t
        0x0t
        0x4t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x30t
        0x59t
        0x30t
        0x13t
        0x6t
        0x7t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
        0x3t
        0x42t
        0x0t
        0x4t
    .end array-data

    :array_8
    .array-data 1
        0x2t
        -0x4ct
        0x37t
        -0x50t
        -0x13t
        -0x2at
        -0x45t
        -0x2ct
        0x29t
        0x6t
        0x4at
        0x4et
        0x52t
        -0x61t
        -0x35t
        -0xft
        -0x3ct
        -0x73t
        0xdt
        0x62t
        0x49t
        0x24t
        -0x2bt
        -0x6et
        0x27t
        0x4bt
        0x7et
        -0x28t
        0x11t
        -0x6dt
        -0x29t
        0x63t
    .end array-data

    :array_9
    .array-data 1
        -0x9t
        -0x2ct
        -0x6at
        -0x5at
        0x2et
        -0x36t
        0x41t
        0x63t
        0x51t
        0x54t
        0xat
        -0x5dt
        0x43t
        -0x44t
        0x69t
        0xat
        0x61t
        0x9t
        -0xbt
        0x51t
        0x50t
        0x6t
        0x66t
        -0x48t
        0x3bt
        0x12t
        0x51t
        -0x5t
        -0x7ct
        -0x6t
        0x28t
        0x60t
        0x79t
        0x5et
        -0x43t
        0x63t
        -0x2dt
        -0x48t
        -0x7dt
        0x6ft
        0x44t
        -0x57t
        -0x5dt
        -0x1et
        -0x75t
        -0x4dt
        0x40t
        0x17t
        -0x20t
        0x15t
        -0xbt
        -0x69t
        -0x6dt
        0x5t
        -0x28t
        0x49t
        -0x3t
        -0x8t
        -0x22t
        0x10t
        0x12t
        0x3bt
        0x61t
        -0x2et
    .end array-data

    :array_a
    .array-data 1
        -0x29t
        0x5et
        0x54t
        -0x39t
        0x7dt
        0x76t
        0x24t
        -0x77t
        -0x1bt
        0x7ct
        -0x6t
        -0x6et
        0x37t
        0x43t
        -0xft
        0x67t
        0x77t
        -0x5ct
        0x28t
        0x3dt
        -0x67t
        -0x80t
        0xbt
        -0x54t
        0x55t
        0x58t
        0x48t
        0x38t
        -0x6dt
        -0x1bt
        -0x50t
        0x6dt
    .end array-data

    :array_b
    .array-data 1
        0x36t
        -0x54t
        0x68t
        0x2ct
        0x50t
        -0x7et
        0x15t
        0x66t
        -0x71t
        -0x42t
        -0x2t
        0x24t
        0x7dt
        0x1t
        -0x2bt
        -0x15t
        -0x6at
        -0x1at
        0x31t
        -0x72t
        -0x7bt
        0x5bt
        0x2dt
        0x64t
        -0x4bt
        0x19t
        0x5dt
        0x38t
        -0x12t
        0x7et
        0x37t
        -0x42t
        0x18t
        0x38t
        -0x40t
        -0x47t
        0x48t
        -0x3dt
        -0x9t
        0x55t
        0x20t
        -0x20t
        0x7et
        0x70t
        -0x10t
        0x72t
        -0x6ft
        0x41t
        -0x66t
        -0x32t
        0x2dt
        0x28t
        0x14t
        0x3ct
        0x5at
        -0x25t
        0x2dt
        -0x43t
        -0x68t
        -0x12t
        0x3ct
        -0x72t
        0x4ft
        -0x41t
    .end array-data

    :array_c
    .array-data 1
        0x2t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printBytes(Ljava/lang/String;[B)V
    .locals 5

    if-nez p1, :cond_0

    .line 315
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "is null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    .line 320
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "(byte)0x%02X, "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
