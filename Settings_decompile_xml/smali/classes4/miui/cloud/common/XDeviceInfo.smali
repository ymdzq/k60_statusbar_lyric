.class public Lmiui/cloud/common/XDeviceInfo;
.super Ljava/lang/Object;
.source "XDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;,
        Lmiui/cloud/common/XDeviceInfo$KeyStoreType;,
        Lmiui/cloud/common/XDeviceInfo$PhoneType;
    }
.end annotation


# static fields
.field private static final EMPTY_DEVICE_ID_CACHE_TIME_MILLIS:J = 0x2bf20L

.field private static final QUERTY_TIME_OUT:I = 0xea60

.field private static sInstance:Lmiui/cloud/common/XDeviceInfo; = null

.field private static sKeyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType; = null

.field private static sLastEmptyDeviceIdTime:J = -0x1L


# instance fields
.field public final IMEI:Ljava/lang/String;

.field public final MAC:Ljava/lang/String;

.field public final SN:Ljava/lang/String;

.field public final deviceId:Ljava/lang/String;

.field public final keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

.field public final model:Ljava/lang/String;

.field public final type:Lmiui/cloud/common/XDeviceInfo$PhoneType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 220
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "leo"

    .line 221
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "andromeda"

    .line 222
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "begonia"

    .line 223
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "davinciin"

    .line 224
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "raphaelin"

    .line 225
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "begoniain"

    .line 226
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "hennessy"

    .line 227
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "olivelite"

    .line 228
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "olivewood"

    .line 229
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "libra"

    .line 230
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "aqua"

    .line 231
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "gemini"

    .line 232
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "gold"

    .line 233
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "vela"

    .line 234
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "kenzo"

    .line 235
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "grus"

    .line 236
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "tucana"

    .line 237
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ido"

    .line 238
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "hydrogen"

    .line 239
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "helium"

    .line 240
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "kate"

    .line 241
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "land"

    .line 242
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "lavender"

    .line 243
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "markw"

    .line 244
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "nikel"

    .line 245
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "omega"

    .line 246
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cepheus"

    .line 247
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "capricorn"

    .line 248
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "laurus"

    .line 249
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "prada"

    .line 250
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "lithium"

    .line 251
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "scorpio"

    .line 252
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "natrium"

    .line 253
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "rolex"

    .line 254
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "mido"

    .line 255
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "santoni"

    .line 256
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ginkgo"

    .line 257
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "sagit"

    .line 258
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "centaur"

    .line 259
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "oxygen"

    .line 260
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "tiffany"

    .line 261
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ulysse"

    .line 262
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ugglite"

    .line 263
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "chiron"

    .line 264
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ugg"

    .line 265
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "jason"

    .line 266
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "riva"

    .line 267
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "crux"

    .line 268
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "vince"

    .line 269
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "rosy"

    .line 270
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "meri"

    .line 271
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "davinci"

    .line 272
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "pine"

    .line 273
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "whyred"

    .line 274
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "dipper"

    .line 275
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "onc"

    .line 276
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "polaris"

    .line 277
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "pyxis"

    .line 278
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ysl"

    .line 279
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "wayne"

    .line 280
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "nitrogen"

    .line 281
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "sirius"

    .line 282
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "sakura"

    .line 283
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "sakura_india"

    .line 284
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "beryllium"

    .line 285
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "violet"

    .line 286
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "raphael"

    .line 287
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cactus"

    .line 288
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cereus"

    .line 289
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "lotus"

    .line 290
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "willow"

    .line 291
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "clover"

    .line 292
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ursa"

    .line 293
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "olive"

    .line 294
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "tulip"

    .line 295
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "draco"

    .line 296
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "platina"

    .line 297
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "perseus"

    .line 298
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "equuleus"

    .line 299
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->TZ:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    goto :goto_0

    :cond_0
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->NONE:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    :goto_0
    sput-object v0, Lmiui/cloud/common/XDeviceInfo;->sKeyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lmiui/cloud/common/XDeviceInfo;Z)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iget-object v0, p2, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    iput-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 136
    invoke-static {p1, p3}, Lmiui/cloud/common/XDeviceInfo;->blockingGetNakedDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    move-object p3, p1

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    .line 139
    sget-object p3, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    if-ne v0, p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->IMEI:Ljava/lang/String;

    .line 141
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    .line 142
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    .line 143
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    .line 144
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PAD:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    goto :goto_0

    :cond_0
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    :goto_0
    iput-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 121
    invoke-static {p1, p2}, Lmiui/cloud/common/XDeviceInfo;->blockingGetNakedDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    goto :goto_1

    .line 123
    :cond_1
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    .line 124
    sget-object v1, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const-string p2, ""

    :goto_2
    iput-object p2, p0, Lmiui/cloud/common/XDeviceInfo;->IMEI:Ljava/lang/String;

    .line 126
    sget-object p2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object p2, p0, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    .line 127
    invoke-direct {p0, p1}, Lmiui/cloud/common/XDeviceInfo;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    .line 128
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    .line 129
    invoke-static {}, Lmiui/cloud/common/XDeviceInfo;->getKeyStoreTypeUnblocking()Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-void
.end method

.method public static asyncGet(Landroid/content/Context;Lmiui/cloud/common/XCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;",
            ">;)V"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/cloud/common/XDeviceInfo$1;

    invoke-direct {v1, p1, p0}, Lmiui/cloud/common/XDeviceInfo$1;-><init>(Lmiui/cloud/common/XCallback;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static asyncGet(Landroid/content/Context;ZLmiui/cloud/common/XCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;",
            ">;)V"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/cloud/common/XDeviceInfo$2;

    invoke-direct {v1, p2, p0, p1}, Lmiui/cloud/common/XDeviceInfo$2;-><init>(Lmiui/cloud/common/XCallback;Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static declared-synchronized blockingGetNakedDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    const/4 v1, 0x0

    .line 190
    :try_start_0
    invoke-static {p0, v1}, Lmiui/cloud/common/XDeviceInfo;->blockingGetNakedDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blockingGetNakedDeviceId(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 9

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    .line 195
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 197
    sget-wide v3, Lmiui/cloud/common/XDeviceInfo;->sLastEmptyDeviceIdTime:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    sub-long v3, v1, v3

    const-wide/32 v7, 0x2bf20

    cmp-long v3, v3, v7

    if-gez v3, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v0

    return-object p0

    :cond_0
    const-wide/32 v3, 0xea60

    .line 204
    :try_start_1
    invoke-static {p0, v3, v4, p1}, Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x1

    :try_start_2
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Failed to get the device id."

    const/4 v3, 0x0

    aput-object p1, p0, v3

    .line 206
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 209
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    sput-wide v1, Lmiui/cloud/common/XDeviceInfo;->sLastEmptyDeviceIdTime:J

    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    monitor-exit v0

    return-object p0

    .line 214
    :cond_1
    :try_start_3
    sput-wide v5, Lmiui/cloud/common/XDeviceInfo;->sLastEmptyDeviceIdTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getKeyStoreTypeUnblocking()Lmiui/cloud/common/XDeviceInfo$KeyStoreType;
    .locals 1

    .line 309
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->TZ:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-object v0
.end method

.method private getMAC(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 154
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    .line 153
    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/NetworkInterface;

    .line 156
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wlan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 165
    :try_start_1
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_2

    goto :goto_0

    .line 173
    :cond_2
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 174
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    const-string v3, "%02X:"

    new-array v4, v2, [Ljava/lang/Object;

    .line 175
    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 177
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 178
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get MAC for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", continue. "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    aput-object p1, v3, v2

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Failed to get MAC. "

    .line 181
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    :cond_5
    const-string p0, "N/A"

    return-object p0
.end method

.method public static isSupportFido()Z
    .locals 2

    .line 320
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scorpio"

    .line 321
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;
    .locals 2

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    const/4 v1, 0x0

    .line 71
    :try_start_0
    invoke-static {p0, v1}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;Z)Lmiui/cloud/common/XDeviceInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized syncGet(Landroid/content/Context;Z)Lmiui/cloud/common/XDeviceInfo;
    .locals 3

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    .line 76
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    sget-object v1, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lmiui/cloud/common/XDeviceInfo;

    invoke-direct {v1, p0, p1}, Lmiui/cloud/common/XDeviceInfo;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;

    goto :goto_0

    .line 83
    :cond_0
    new-instance v2, Lmiui/cloud/common/XDeviceInfo;

    invoke-direct {v2, p0, v1, p1}, Lmiui/cloud/common/XDeviceInfo;-><init>(Landroid/content/Context;Lmiui/cloud/common/XDeviceInfo;Z)V

    sput-object v2, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;

    .line 86
    :goto_0
    sget-object p0, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 77
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "syncGet can not be called in the main thread. "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 113
    iget-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    iget-object v3, p0, Lmiui/cloud/common/XDeviceInfo;->IMEI:Ljava/lang/String;

    iget-object v4, p0, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    iget-object v5, p0, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    iget-object v6, p0, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    iget-object v7, p0, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "type: %s, deviceid: %s, IMEM: %s, SN: %s, MAC: %s, model: %s, keyStoreType: %s"

    .line 113
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
