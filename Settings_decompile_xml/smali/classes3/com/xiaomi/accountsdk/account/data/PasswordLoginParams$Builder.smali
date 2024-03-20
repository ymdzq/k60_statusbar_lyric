.class public Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
.super Ljava/lang/Object;
.source "PasswordLoginParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private captCode:Ljava/lang/String;

.field private captIck:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private hashedEnvFactors:[Ljava/lang/String;

.field private metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field private needProcessNotification:Z

.field private password:Ljava/lang/String;

.field private returnStsUrl:Z

.field private serviceId:Ljava/lang/String;

.field private ticketToken:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private verifyToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->returnStsUrl:Z

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->needProcessNotification:Z

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->returnStsUrl:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->needProcessNotification:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)[Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->hashedEnvFactors:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->countryCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->password:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->verifyToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->captCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->captIck:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->ticketToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;
    .locals 2

    .line 98
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$1;)V

    return-object v0
.end method

.method public setCaptCode(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->captCode:Ljava/lang/String;

    return-object p0
.end method

.method public setCaptIck(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->captIck:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setHashedEnvFactors([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->hashedEnvFactors:[Ljava/lang/String;

    return-object p0
.end method

.method public setIsReturnStsUrl(Z)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->returnStsUrl:Z

    return-object p0
.end method

.method public setMetaLoginData(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    return-object p0
.end method

.method public setNeedProcessNotification(Z)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->needProcessNotification:Z

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->password:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method
