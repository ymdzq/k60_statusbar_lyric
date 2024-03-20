.class public Lcom/android/settings/network/telephony/DomesticRoamUtils;
.super Ljava/lang/Object;
.source "DomesticRoamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DomesticRoamUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-class v0, Lcom/android/settings/network/telephony/DomesticRoamUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineOperatorNames(Landroid/content/Context;Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;)Ljava/lang/String;
    .locals 9

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils$1;->$SwitchMap$com$android$settings$network$telephony$DomesticRoamUtils$OPERATOR_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const-string v2, ""

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    const-string p1, "combineOperatorNames: home invalid case"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 270
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v8, Lcom/android/settings/R$string;->china_telecom:I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v8, Lcom/android/settings/R$string;->china_broadcast:I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v8, Lcom/android/settings/R$string;->china_union:I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 261
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v8, Lcom/android/settings/R$string;->china_mobile:I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v8, Lcom/android/settings/R$string;->separator:I

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v7, :cond_9

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    goto :goto_1

    .line 293
    :cond_5
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    const-string p1, "combineOperatorNames: visit invalid case"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 290
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->china_telecom:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 287
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->china_broadcast:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->china_union:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 281
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->china_mobile:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :goto_1
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "combineOperatorNames: outputBuilder = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHomeOperatorType(Landroid/content/Context;I)Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;
    .locals 1

    .line 155
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    sget-boolean p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 160
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    const-string p1, "getHomeOperatorType: invalid sub"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->OTHERS:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object p0

    .line 164
    :cond_1
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 165
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->getOperatorType(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    move-result-object p0

    return-object p0

    .line 170
    :cond_2
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->OTHERS:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object p0
.end method

.method public static getMPLMNOperatorName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 60
    sget-boolean v0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMPLMNOperatorName: context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " idMPLMN = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_1

    return-object v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 72
    sget-object p1, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->OTHERS:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "46061"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "46060"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "46051"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "46050"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "46032"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "46031"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "46022"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "46021"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    move-object p2, p1

    move-object v1, p2

    goto :goto_1

    .line 104
    :pswitch_0
    sget-object p2, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_UNION:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 105
    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_BROADCAST:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    goto :goto_1

    .line 100
    :pswitch_1
    sget-object p2, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_TELECOM:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 101
    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_BROADCAST:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    goto :goto_1

    .line 80
    :pswitch_2
    sget-object p2, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_BROADCAST:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 81
    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_TELECOM:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    goto :goto_1

    .line 76
    :pswitch_3
    sget-object p2, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_MOBILE:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 77
    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_TELECOM:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    goto :goto_1

    .line 96
    :pswitch_4
    sget-object p2, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_BROADCAST:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 97
    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_UNION:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    goto :goto_1

    .line 92
    :pswitch_5
    sget-object p2, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_MOBILE:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 93
    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_UNION:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    goto :goto_1

    .line 88
    :pswitch_6
    sget-object p2, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_UNION:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 89
    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_MOBILE:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    goto :goto_1

    .line 84
    :pswitch_7
    sget-object p2, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_TELECOM:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 85
    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_MOBILE:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    .line 111
    :goto_1
    sget-object v2, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMPLMNOperatorName: homeOperator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mplmnOperator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, p1, :cond_b

    if-eq v1, p1, :cond_b

    if-ne p2, v1, :cond_a

    goto :goto_2

    .line 119
    :cond_a
    invoke-static {p0, p2, v1}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->combineOperatorNames(Landroid/content/Context;Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_2
    const-string p0, "getMPLMNOperatorName: not domestic roam status, return empty"

    .line 116
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2f60cad -> :sswitch_7
        0x2f60cae -> :sswitch_6
        0x2f60ccc -> :sswitch_5
        0x2f60ccd -> :sswitch_4
        0x2f60d09 -> :sswitch_3
        0x2f60d0a -> :sswitch_2
        0x2f60d28 -> :sswitch_1
        0x2f60d29 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getOperatorType(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;
    .locals 4

    .line 193
    sget-boolean v0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 194
    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorType: operatorId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->isValidDomesticOperatorId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    .line 199
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    const-string p1, "getOperatorType: invalid domestic operator id"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->OTHERS:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object p0

    .line 204
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->china_mobile_ids:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_MOBILE:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object p0

    .line 209
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->china_union_ids:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_UNION:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object p0

    .line 214
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->china_telecom_ids:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_TELECOM:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object p0

    .line 219
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->china_broadcast_ids:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 220
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 221
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->CHINA_BROADCAST:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object p0

    .line 223
    :cond_6
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->OTHERS:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object p0
.end method

.method public static getRegisteredOperatorName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .line 41
    sget-boolean v0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegisteredOperatorName: context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 46
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->getHomeOperatorType(Landroid/content/Context;I)Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    move-result-object v0

    .line 47
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->getVisitOperatorType(Landroid/content/Context;I)Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    move-result-object p1

    .line 48
    sget-object v1, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegisteredOperatorName: homeOperator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " visitOperator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v2, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->OTHERS:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    if-eq v0, v2, :cond_2

    if-eq p1, v2, :cond_2

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p0, v0, p1}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->combineOperatorNames(Landroid/content/Context;Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "getRegisteredOperatorName: not domestic roam status, return empty"

    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method private static getVisitOperatorType(Landroid/content/Context;I)Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;
    .locals 1

    .line 174
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    sget-boolean p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 179
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    const-string p1, "getVisitOperatorType: invalid sub"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->OTHERS:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object p0

    .line 183
    :cond_1
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 184
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->getOperatorType(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    move-result-object p0

    return-object p0

    .line 189
    :cond_2
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;->OTHERS:Lcom/android/settings/network/telephony/DomesticRoamUtils$OPERATOR_TYPE;

    return-object p0
.end method

.method public static isFeatureEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_domestic_roam_customization:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 34
    sget-boolean v0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFeatureEnabled: isCustomizeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method private static isValidDomesticOperatorId(Ljava/lang/String;)Z
    .locals 4

    .line 228
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 229
    sget-boolean p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 230
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    const-string v0, "isValidDomesticOperatorId: operatorId is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 236
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    .line 238
    sget-boolean p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 239
    sget-object p0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidDomesticOperatorId: idLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x3

    .line 245
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "460"

    .line 246
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 247
    sget-boolean v0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 248
    sget-object v0, Lcom/android/settings/network/telephony/DomesticRoamUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidDomesticOperatorId: mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
