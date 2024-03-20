.class public final Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
.super Ljava/lang/Object;
.source "ServiceTokenResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cUserId:Ljava/lang/String;

.field private errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field private errorMessage:Ljava/lang/String;

.field private errorStackTrace:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private peeked:Z

.field private ph:Ljava/lang/String;

.field private security:Ljava/lang/String;

.field private serviceToken:Ljava/lang/String;

.field private final sid:Ljava/lang/String;

.field private slh:Ljava/lang/String;

.field private stsCookies:Ljava/lang/String;

.field private useV1Parcel:Z

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 172
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->sid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->sid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->serviceToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->cUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->peeked:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->useV1Parcel:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->stsCookies:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->security:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Landroid/content/Intent;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorStackTrace:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->slh:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->ph:Ljava/lang/String;

    return-object p0
.end method

.method public static copyFrom(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 2

    .line 241
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    .line 242
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->serviceToken(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->stsCookies:Ljava/lang/String;

    .line 243
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->stsCookies(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    .line 244
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->security(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 245
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorCode(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    .line 246
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorMessage(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    .line 247
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorStackTrace(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->intent:Landroid/content/Intent;

    .line 248
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->intent(Landroid/content/Intent;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->slh:Ljava/lang/String;

    .line 249
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->slh(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->ph:Ljava/lang/String;

    .line 250
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->ph(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    .line 251
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->cUserId(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->peeked:Z

    .line 252
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->peeked(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    .line 253
    invoke-static {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->access$1400(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->useV1Parcel(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->userId:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->userId(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    .line 258
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$1;)V

    return-object v0
.end method

.method public cUserId(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->cUserId:Ljava/lang/String;

    return-object p0
.end method

.method public errorCode(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object p0
.end method

.method public errorMessage(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public errorStackTrace(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorStackTrace:Ljava/lang/String;

    return-object p0
.end method

.method public intent(Landroid/content/Intent;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public peeked(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->peeked:Z

    return-object p0
.end method

.method public ph(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->ph:Ljava/lang/String;

    return-object p0
.end method

.method public security(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->security:Ljava/lang/String;

    return-object p0
.end method

.method public serviceToken(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->serviceToken:Ljava/lang/String;

    return-object p0
.end method

.method public slh(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->slh:Ljava/lang/String;

    return-object p0
.end method

.method public stsCookies(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->stsCookies:Ljava/lang/String;

    return-object p0
.end method

.method public useV1Parcel(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->useV1Parcel:Z

    return-object p0
.end method

.method public userId(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method
