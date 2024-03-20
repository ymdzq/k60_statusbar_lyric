.class final enum Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;
.super Ljava/lang/Enum;
.source "MiuiUserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiUserCredentialsSettings$Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

.field public static final enum CA_CERTIFICATE:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

.field public static final enum USER_CERTIFICATE:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

.field public static final enum USER_PRIVATE_KEY:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

.field public static final enum USER_SECRET_KEY:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;


# instance fields
.field final prefix:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;
    .locals 4

    .line 363
    sget-object v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    sget-object v1, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    sget-object v2, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->USER_PRIVATE_KEY:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    sget-object v3, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->USER_SECRET_KEY:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 364
    new-instance v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    const/4 v1, 0x0

    const-string v2, "CACERT_"

    const-string v3, "CA_CERTIFICATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    .line 365
    new-instance v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    const/4 v1, 0x1

    const-string v2, "USRCERT_"

    const-string v3, "USER_CERTIFICATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    .line 366
    new-instance v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    const/4 v1, 0x2

    const-string v2, "USRPKEY_"

    const-string v3, "USER_PRIVATE_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->USER_PRIVATE_KEY:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    .line 367
    new-instance v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    const/4 v1, 0x3

    const-string v2, "USRSKEY_"

    const-string v3, "USER_SECRET_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->USER_SECRET_KEY:Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    .line 363
    invoke-static {}, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->$values()[Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->$VALUES:[Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

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

    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 372
    iput-object p3, p0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->prefix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;
    .locals 1

    .line 363
    const-class v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;
    .locals 1

    .line 363
    sget-object v0, Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->$VALUES:[Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    invoke-virtual {v0}, [Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/MiuiUserCredentialsSettings$Credential$Type;

    return-object v0
.end method
