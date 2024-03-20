.class public Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;
.super Ljava/lang/Object;
.source "HashedDeviceIdUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalConfig"
.end annotation


# static fields
.field public static DEFAULT_DEVICE_ID_POLICY:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

.field private static final sInstance:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;


# instance fields
.field private policy:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->RUNTIME_DEVICE_ID_ONLY:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    sput-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->DEFAULT_DEVICE_ID_POLICY:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    .line 58
    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->sInstance:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->DEFAULT_DEVICE_ID_POLICY:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->policy:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;)Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->policy:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;
    .locals 1

    .line 61
    sget-object v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->sInstance:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;

    return-object v0
.end method


# virtual methods
.method public getUnifiedDeviceIdFetcher()Lcom/xiaomi/accountsdk/hasheddeviceidlib/IUnifiedDeviceIdFetcher;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setPolicy(Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->policy:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    return-void
.end method
