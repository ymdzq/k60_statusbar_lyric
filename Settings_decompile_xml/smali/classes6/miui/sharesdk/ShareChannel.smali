.class public final enum Lmiui/sharesdk/ShareChannel;
.super Ljava/lang/Enum;
.source "ShareChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/sharesdk/ShareChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_CONTACT:Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_FAMILY:Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_QR_CODE:Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_SEARCH:Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_SUGGESTION:Lmiui/sharesdk/ShareChannel;

.field public static final enum CHANNEL_WECHAT:Lmiui/sharesdk/ShareChannel;


# instance fields
.field public final serverTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lmiui/sharesdk/ShareChannel;

    const/4 v1, 0x0

    const-string v2, "FamilyShare"

    const-string v3, "CHANNEL_FAMILY"

    invoke-direct {v0, v3, v1, v2}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_FAMILY:Lmiui/sharesdk/ShareChannel;

    .line 10
    new-instance v1, Lmiui/sharesdk/ShareChannel;

    const/4 v2, 0x1

    const-string v3, "Suggestion"

    const-string v4, "CHANNEL_SUGGESTION"

    invoke-direct {v1, v4, v2, v3}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lmiui/sharesdk/ShareChannel;->CHANNEL_SUGGESTION:Lmiui/sharesdk/ShareChannel;

    .line 13
    new-instance v2, Lmiui/sharesdk/ShareChannel;

    const/4 v3, 0x2

    const-string v4, "Contact"

    const-string v5, "CHANNEL_CONTACT"

    invoke-direct {v2, v5, v3, v4}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lmiui/sharesdk/ShareChannel;->CHANNEL_CONTACT:Lmiui/sharesdk/ShareChannel;

    .line 16
    new-instance v3, Lmiui/sharesdk/ShareChannel;

    const/4 v4, 0x3

    const-string v5, "WeChat"

    const-string v6, "CHANNEL_WECHAT"

    invoke-direct {v3, v6, v4, v5}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lmiui/sharesdk/ShareChannel;->CHANNEL_WECHAT:Lmiui/sharesdk/ShareChannel;

    .line 19
    new-instance v4, Lmiui/sharesdk/ShareChannel;

    const/4 v5, 0x4

    const-string v6, "QrCode"

    const-string v7, "CHANNEL_QR_CODE"

    invoke-direct {v4, v7, v5, v6}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lmiui/sharesdk/ShareChannel;->CHANNEL_QR_CODE:Lmiui/sharesdk/ShareChannel;

    .line 22
    new-instance v5, Lmiui/sharesdk/ShareChannel;

    const/4 v6, 0x5

    const-string v7, "Mid"

    const-string v8, "CHANNEL_SEARCH"

    invoke-direct {v5, v8, v6, v7}, Lmiui/sharesdk/ShareChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lmiui/sharesdk/ShareChannel;->CHANNEL_SEARCH:Lmiui/sharesdk/ShareChannel;

    .line 5
    filled-new-array/range {v0 .. v5}, [Lmiui/sharesdk/ShareChannel;

    move-result-object v0

    sput-object v0, Lmiui/sharesdk/ShareChannel;->$VALUES:[Lmiui/sharesdk/ShareChannel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    return-void
.end method

.method public static getShareChannelByServerTag(Ljava/lang/String;)Lmiui/sharesdk/ShareChannel;
    .locals 2

    .line 34
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_FAMILY:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_SUGGESTION:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_CONTACT:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 40
    :cond_2
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_WECHAT:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 42
    :cond_3
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_QR_CODE:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 44
    :cond_4
    sget-object v0, Lmiui/sharesdk/ShareChannel;->CHANNEL_SEARCH:Lmiui/sharesdk/ShareChannel;

    iget-object v1, v0, Lmiui/sharesdk/ShareChannel;->serverTag:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/sharesdk/ShareChannel;
    .locals 1

    .line 5
    const-class v0, Lmiui/sharesdk/ShareChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/sharesdk/ShareChannel;

    return-object p0
.end method

.method public static values()[Lmiui/sharesdk/ShareChannel;
    .locals 1

    .line 5
    sget-object v0, Lmiui/sharesdk/ShareChannel;->$VALUES:[Lmiui/sharesdk/ShareChannel;

    invoke-virtual {v0}, [Lmiui/sharesdk/ShareChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/sharesdk/ShareChannel;

    return-object v0
.end method
