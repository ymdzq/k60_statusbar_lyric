.class synthetic Lcom/xiaomi/passport/accountmanager/MiAccountManager$2;
.super Ljava/lang/Object;
.source "MiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/accountmanager/MiAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaomi$passport$accountmanager$MiAccountManager$AccountAuthenticator:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 227
    invoke-static {}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->values()[Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$2;->$SwitchMap$com$xiaomi$passport$accountmanager$MiAccountManager$AccountAuthenticator:[I

    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->SYSTEM:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$2;->$SwitchMap$com$xiaomi$passport$accountmanager$MiAccountManager$AccountAuthenticator:[I

    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->LOCAL:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
