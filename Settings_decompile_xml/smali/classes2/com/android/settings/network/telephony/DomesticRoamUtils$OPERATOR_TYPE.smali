.class final enum Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;
.super Ljava/lang/Enum;
.source "DomesticRoamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/DomesticRoamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OPERATOR_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

.field public static final enum CHINA_BROADCAST:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

.field public static final enum CHINA_MOBILE:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

.field public static final enum CHINA_TELECOM:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

.field public static final enum CHINA_UNION:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

.field public static final enum OTHERS:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;
    .locals 5

    .line 22
    sget-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_MOBILE:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_UNION:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    sget-object v2, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_TELECOM:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    sget-object v3, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_BROADCAST:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    sget-object v4, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->OTHERS:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    const-string v1, "CHINA_MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_MOBILE:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 24
    new-instance v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    const-string v1, "CHINA_UNION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_UNION:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 25
    new-instance v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    const-string v1, "CHINA_TELECOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_TELECOM:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 26
    new-instance v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    const-string v1, "CHINA_BROADCAST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_BROADCAST:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 27
    new-instance v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    const-string v1, "OTHERS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->OTHERS:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 22
    invoke-static {}, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->$values()[Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->$VALUES:[Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;
    .locals 1

    .line 22
    const-class v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->$VALUES:[Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    invoke-virtual {v0}, [Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object v0
.end method
