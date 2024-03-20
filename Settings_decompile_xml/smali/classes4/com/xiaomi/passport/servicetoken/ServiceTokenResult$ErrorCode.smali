.class public final enum Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
.super Ljava/lang/Enum;
.source "ServiceTokenResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum ERROR_APP_PERMISSION_FORBIDDEN:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum ERROR_AUTHENTICATOR_ERROR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum ERROR_IOERROR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum ERROR_NONE:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum ERROR_NO_ACCOUNT:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum ERROR_OLD_MIUI_ACCOUNT_MANAGER_PERMISSION_ISSUE:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum ERROR_REMOTE_EXCEPTION:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum ERROR_TIME_OUT:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum ERROR_UNKNOWN:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public static final enum ERROR_USER_INTERACTION_NEEDED:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 32
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 33
    new-instance v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v2, "ERROR_NONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 34
    new-instance v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v3, "ERROR_NO_ACCOUNT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_NO_ACCOUNT:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 35
    new-instance v3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v4, "ERROR_APP_PERMISSION_FORBIDDEN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_APP_PERMISSION_FORBIDDEN:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 36
    new-instance v4, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v5, "ERROR_IOERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_IOERROR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 37
    new-instance v5, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v6, "ERROR_OLD_MIUI_ACCOUNT_MANAGER_PERMISSION_ISSUE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_OLD_MIUI_ACCOUNT_MANAGER_PERMISSION_ISSUE:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 38
    new-instance v6, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v7, "ERROR_CANCELLED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 39
    new-instance v7, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v8, "ERROR_AUTHENTICATOR_ERROR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_AUTHENTICATOR_ERROR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 40
    new-instance v8, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v9, "ERROR_TIME_OUT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_TIME_OUT:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 41
    new-instance v9, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v10, "ERROR_REMOTE_EXCEPTION"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_REMOTE_EXCEPTION:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 42
    new-instance v10, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const-string v11, "ERROR_USER_INTERACTION_NEEDED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_USER_INTERACTION_NEEDED:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 31
    filled-new-array/range {v0 .. v10}, [Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->$VALUES:[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
    .locals 1

    .line 31
    const-class v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->$VALUES:[Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object v0
.end method
