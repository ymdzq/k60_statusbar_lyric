.class public final Lcom/android/settings/wifi/operatorutils/OperatorFactory;
.super Ljava/lang/Object;
.source "OperatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/operatorutils/OperatorFactory$ThailandOp;,
        Lcom/android/settings/wifi/operatorutils/OperatorFactory$EuropeOp;,
        Lcom/android/settings/wifi/operatorutils/OperatorFactory$SingaporeOp;,
        Lcom/android/settings/wifi/operatorutils/OperatorFactory$VodafoneOp;,
        Lcom/android/settings/wifi/operatorutils/OperatorFactory$JapanOp;,
        Lcom/android/settings/wifi/operatorutils/OperatorFactory$SouthKoreaOp;,
        Lcom/android/settings/wifi/operatorutils/OperatorFactory$TelefonicaOp;,
        Lcom/android/settings/wifi/operatorutils/OperatorFactory$MexicoOp;
    }
.end annotation


# static fields
.field private static final REGION:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/operatorutils/OperatorFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    const-string v0, "TH"

    const-string v1, "DE"

    const-string v2, "PL"

    const-string v3, "GR"

    const-string v4, "CZ"

    const-string v5, "SK"

    const-string v6, "HU"

    const-string v7, "RO"

    const-string v8, "AT"

    const-string v9, "HR"

    const-string v10, "NL"

    const-string v11, "SG"

    const-string v12, "TW"

    const-string v13, "JP"

    const-string v14, "KR"

    const-string v15, "ES"

    .line 17
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/operatorutils/OperatorFactory;->REGION:[Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/operatorutils/Operator;
    .locals 1

    .line 82
    sget-object v0, Lcom/android/settings/wifi/operatorutils/OperatorFactory;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 84
    :goto_0
    sput-object p0, Lcom/android/settings/wifi/operatorutils/OperatorFactory;->mContext:Landroid/content/Context;

    .line 86
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory;->getWhichInstance()I

    move-result p0

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory$MexicoOp;->-$$Nest$sfgetINSTANCE()Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/MexicoOperator;

    move-result-object p0

    return-object p0

    .line 101
    :cond_3
    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory$TelefonicaOp;->-$$Nest$sfgetINSTANCE()Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/TelefonicaOperator;

    move-result-object p0

    return-object p0

    .line 99
    :cond_4
    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory$SouthKoreaOp;->-$$Nest$sfgetINSTANCE()Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;

    move-result-object p0

    return-object p0

    .line 97
    :cond_5
    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory$JapanOp;->-$$Nest$sfgetINSTANCE()Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/JapanOperator;

    move-result-object p0

    return-object p0

    .line 95
    :cond_6
    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory$VodafoneOp;->-$$Nest$sfgetINSTANCE()Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/VodafoneOperator;

    move-result-object p0

    return-object p0

    .line 93
    :cond_7
    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory$SingaporeOp;->-$$Nest$sfgetINSTANCE()Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SingaporeOperator;

    move-result-object p0

    return-object p0

    .line 91
    :cond_8
    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory$EuropeOp;->-$$Nest$sfgetINSTANCE()Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/EuropeOperator;

    move-result-object p0

    return-object p0

    .line 89
    :cond_9
    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory$ThailandOp;->-$$Nest$sfgetINSTANCE()Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/ThailandOperator;

    move-result-object p0

    return-object p0
.end method

.method private static getWhichInstance()I
    .locals 3

    .line 110
    sget-object v0, Lcom/android/settings/wifi/operatorutils/OperatorFactory;->REGION:[Ljava/lang/String;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/16 v2, 0xa

    if-gt v0, v2, :cond_2

    const-string v0, "es_vodafone"

    .line 114
    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory$VodafoneOp;->-$$Nest$sfgetREGION()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    return v1

    :cond_2
    const/16 v1, 0xb

    if-ne v1, v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/16 v1, 0xd

    if-ne v1, v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const/16 v1, 0xe

    if-ne v1, v0, :cond_5

    const/4 v0, 0x6

    return v0

    :cond_5
    const/16 v1, 0xf

    if-ne v1, v0, :cond_6

    const/4 v0, 0x7

    return v0

    :cond_6
    const-string v0, "mx_at"

    .line 126
    invoke-static {}, Lcom/android/settings/wifi/operatorutils/OperatorFactory$MexicoOp;->-$$Nest$sfgetREGION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    return v0

    :cond_7
    const/4 v0, -0x1

    return v0
.end method
