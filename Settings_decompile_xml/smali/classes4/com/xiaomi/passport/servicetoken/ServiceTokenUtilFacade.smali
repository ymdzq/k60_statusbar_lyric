.class public final Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;
.super Ljava/lang/Object;
.source "ServiceTokenUtilFacade.java"


# static fields
.field private static final sInstance:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->sInstance:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->sInstance:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;

    return-object v0
.end method


# virtual methods
.method public buildAMServiceTokenUtil(Lcom/xiaomi/passport/servicetoken/IAMUtil;)Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;
    .locals 0

    .line 17
    new-instance p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;-><init>(Lcom/xiaomi/passport/servicetoken/IAMUtil;)V

    return-object p0
.end method

.method public buildAMUtil()Lcom/xiaomi/passport/servicetoken/IAMUtil;
    .locals 1

    .line 21
    new-instance p0, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/AMKeys;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;-><init>(Lcom/xiaomi/passport/servicetoken/AMKeys;)V

    return-object p0
.end method

.method public buildMiuiServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;
    .locals 0

    .line 13
    new-instance p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;-><init>()V

    return-object p0
.end method
