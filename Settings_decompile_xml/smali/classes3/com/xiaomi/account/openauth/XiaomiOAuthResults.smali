.class public Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
.super Ljava/lang/Object;
.source "XiaomiOAuthResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;,
        Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;
    }
.end annotation


# instance fields
.field private final contentBundle:Landroid/os/Bundle;

.field private final errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

.field private final successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->contentBundle:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    .line 14
    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->contentBundle:Landroid/os/Bundle;

    .line 19
    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntOrStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getIntCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 152
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntOrStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 154
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "XiaomiOAuthResults"

    const-string p1, "error, return 0 instead:"

    .line 156
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static getIntOrStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 163
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_4

    aget-object v0, p1, p2

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 174
    :cond_2
    instance-of p0, v0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    .line 175
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 177
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 148
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "extra_error_code"

    const-string v1, "error"

    .line 208
    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-static {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->access$300(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;-><init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;)V

    return-object v0

    .line 212
    :cond_1
    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-static {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->access$400(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;-><init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;)V

    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->accessToken:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    if-eqz p0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 196
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "should not be here."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
