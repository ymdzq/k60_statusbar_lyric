.class public Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.super Ljava/lang/Object;
.source "ServiceTokenResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;,
        Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_STRING_MASK_SHOW_SECURITY:I = 0x2

.field public static final TO_STRING_MASK_SHOW_SERVICETOKEN:I = 0x1


# instance fields
.field public final cUserId:Ljava/lang/String;

.field public final errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public final errorMessage:Ljava/lang/String;

.field public final errorStackTrace:Ljava/lang/String;

.field public final intent:Landroid/content/Intent;

.field public final peeked:Z

.field public final ph:Ljava/lang/String;

.field public final security:Ljava/lang/String;

.field public final serviceToken:Ljava/lang/String;

.field public final sid:Ljava/lang/String;

.field public final slh:Ljava/lang/String;

.field public final stsCookies:Ljava/lang/String;

.field private final useV1Parcel:Z

.field public final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 342
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$1;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V2#"

    .line 296
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 297
    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    .line 299
    iput-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->stsCookies:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    move-object v0, v3

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->values()[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    .line 305
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->intent:Landroid/content/Intent;

    .line 306
    iput-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->slh:Ljava/lang/String;

    .line 307
    iput-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->ph:Ljava/lang/String;

    .line 308
    iput-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 309
    iput-boolean p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->peeked:Z

    .line 310
    iput-boolean p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->useV1Parcel:Z

    .line 311
    iput-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->userId:Ljava/lang/String;

    goto/16 :goto_2

    .line 313
    :cond_1
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "sid"

    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    const-string v0, "serviceToken"

    .line 315
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    const-string v0, "stsCookies"

    .line 316
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->stsCookies:Ljava/lang/String;

    const-string v0, "security"

    .line 317
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    const-string v0, "errorCode"

    .line 318
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 319
    :cond_2
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->values()[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    move-result-object v1

    aget-object v3, v1, v0

    :goto_1
    iput-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v0, "errorMessage"

    .line 320
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    const-string v0, "stackTrace"

    .line 321
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    const-string v0, "intent"

    .line 322
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->intent:Landroid/content/Intent;

    const-string v0, "slh"

    .line 323
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->slh:Ljava/lang/String;

    const-string v0, "ph"

    .line 324
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->ph:Ljava/lang/String;

    const-string v0, "cUserId"

    .line 325
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    const-string v0, "peeked"

    .line 326
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->peeked:Z

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->useV1Parcel:Z

    const-string v0, "userId"

    .line 328
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->userId:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$000(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$100(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$200(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->stsCookies:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$300(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$400(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$500(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 67
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$600(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->intent:Landroid/content/Intent;

    .line 68
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$700(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$800(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->slh:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$900(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->ph:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$1000(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$1100(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->peeked:Z

    .line 73
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$1200(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->useV1Parcel:Z

    .line 74
    invoke-static {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->access$1300(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->userId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->useV1Parcel:Z

    return p0
.end method

.method private writeToParcelV1(Landroid/os/Parcel;I)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 113
    :cond_0
    instance-of v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 115
    :cond_1
    check-cast p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 117
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->userId:Ljava/lang/String;

    if-eq v1, v3, :cond_2

    return v2

    .line 118
    :cond_2
    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->peeked:Z

    iget-boolean v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->peeked:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 119
    :cond_3
    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->useV1Parcel:Z

    iget-boolean v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->useV1Parcel:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    if-eqz v1, :cond_6

    :goto_0
    return v2

    .line 121
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_7
    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    if-eqz v1, :cond_8

    :goto_1
    return v2

    .line 123
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_9
    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    if-eqz v1, :cond_a

    :goto_2
    return v2

    .line 125
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eq v1, v3, :cond_b

    return v2

    .line 126
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3

    :cond_c
    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_d

    :goto_3
    return v2

    .line 128
    :cond_d
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_4

    :cond_e
    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    if-eqz v1, :cond_f

    :goto_4
    return v2

    .line 130
    :cond_f
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_10

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_5

    :cond_10
    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_11

    :goto_5
    return v2

    .line 131
    :cond_11
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->slh:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->slh:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_6

    :cond_12
    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->slh:Ljava/lang/String;

    if-eqz v1, :cond_13

    :goto_6
    return v2

    .line 132
    :cond_13
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->ph:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v3, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->ph:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_7

    :cond_14
    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->ph:Ljava/lang/String;

    if-eqz v1, :cond_15

    :goto_7
    return v2

    .line 133
    :cond_15
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    if-eqz p0, :cond_16

    iget-object p1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8

    :cond_16
    iget-object p0, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    if-nez p0, :cond_17

    goto :goto_8

    :cond_17
    move v0, v2

    :goto_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 140
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 141
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 142
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 144
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 145
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->slh:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 147
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->ph:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 148
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 149
    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->peeked:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 150
    iget-boolean v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->useV1Parcel:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 151
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->userId:Ljava/lang/String;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_a
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 87
    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string p1, "serviceTokenMasked"

    :goto_2
    if-eqz v2, :cond_3

    .line 88
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v0, "securityMasked"

    .line 89
    :goto_3
    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->userId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->userId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-gt v2, v4, :cond_4

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->userId:Ljava/lang/String;

    invoke-static {v4, v1, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "****"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    .line 91
    :goto_5
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "ServiceTokenResult{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "userId="

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, ", sid=\'"

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, ", serviceToken=\'"

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, ", stsCookies=\'"

    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->stsCookies:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/utils/HttpCookies;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, ", security=\'"

    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, ", errorCode="

    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, ", errorMessage=\'"

    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, ", errorStackTrace=\'"

    .line 99
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, ", intent="

    .line 100
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, ", slh=\'"

    .line 101
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->slh:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, ", ph=\'"

    .line 102
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->ph:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, ", cUserId=\'"

    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, ", peeked="

    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->peeked:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, ", useV1Parcel="

    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->useV1Parcel:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 p0, 0x7d

    .line 106
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 269
    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->useV1Parcel:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->writeToParcelV1(Landroid/os/Parcel;I)V

    return-void

    .line 273
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "sid"

    .line 274
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serviceToken"

    .line 275
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stsCookies"

    .line 276
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->stsCookies:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "security"

    .line 277
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    const-string v1, "errorCode"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorMessage"

    .line 279
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stackTrace"

    .line 280
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "intent"

    .line 281
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->intent:Landroid/content/Intent;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "slh"

    .line 282
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->slh:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ph"

    .line 283
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->ph:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cUserId"

    .line 284
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "peeked"

    .line 285
    iget-boolean v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->peeked:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "userId"

    .line 286
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->userId:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "V2#"

    .line 288
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
