.class public Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;
.super Ljava/lang/Object;
.source "XiaomiOAuthConstants.java"


# static fields
.field public static final OAUTH2_API_HOST:Ljava/lang/String;

.field public static final OAUTH2_API_URL_BASE:Ljava/lang/String;

.field public static final OAUTH2_HOST:Ljava/lang/String;

.field private static final USE_PREVIEW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/oauth_staging_preview"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->USE_PREVIEW:Z

    if-eqz v0, :cond_0

    const-string v1, "http://account.preview.n.xiaomi.net"

    goto :goto_0

    :cond_0
    const-string v1, "https://account.xiaomi.com"

    .line 14
    :goto_0
    sput-object v1, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_HOST:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "http://open.account.preview.n.xiaomi.net"

    goto :goto_1

    :cond_1
    const-string v1, "https://open.account.xiaomi.com"

    .line 16
    :goto_1
    sput-object v1, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_API_URL_BASE:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "open.account.preview.n.xiaomi.net"

    goto :goto_2

    :cond_2
    const-string v0, "open.account.xiaomi.com"

    .line 18
    :goto_2
    sput-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_API_HOST:Ljava/lang/String;

    return-void
.end method
