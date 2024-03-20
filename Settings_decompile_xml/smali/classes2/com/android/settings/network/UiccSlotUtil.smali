.class public Lcom/android/settings/network/UiccSlotUtil;
.super Ljava/lang/Object;
.source "UiccSlotUtil.java"


# direct methods
.method public static synthetic $r8$lambda$B3P9H2oDqLPkuvIikYF-tVXhu9Q(Landroid/telephony/UiccSlotMapping;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/UiccSlotUtil;->lambda$getExcludedLogicalSlotIndex$5(Landroid/telephony/UiccSlotMapping;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Jx11quCXm99Ae8HWvcj1Ojk5RaA(IILandroid/telephony/UiccSlotMapping;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/network/UiccSlotUtil;->lambda$isTargetSlotActive$3(IILandroid/telephony/UiccSlotMapping;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UG94Hr6epslJjMSA-MlBTdeAobw(Landroid/telephony/UiccSlotInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/UiccSlotUtil;->lambda$getSlotInfos$0(Landroid/telephony/UiccSlotInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WhRJlgrpYiEq-cwsDGHLQGpSUPI(Landroid/telephony/UiccPortInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/UiccSlotUtil;->lambda$isRemovableSimEnabled$6(Landroid/telephony/UiccPortInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Wyzv-PbYtwxDaElP51wNIuqAbZg(I)[Landroid/telephony/UiccSlotInfo;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/UiccSlotUtil;->lambda$getSlotInfos$1(I)[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oHvk-AS7LWEk90wJkF-WOUxZCEU(Lcom/google/common/collect/ImmutableList;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/network/UiccSlotUtil;->lambda$getEsimSlotId$2(Lcom/google/common/collect/ImmutableList;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oQDPaQpmCLHcrckRTOREeqT_s98(Ljava/util/Collection;Landroid/telephony/UiccSlotMapping;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/network/UiccSlotUtil;->lambda$getExcludedLogicalSlotIndex$4(Ljava/util/Collection;Landroid/telephony/UiccSlotMapping;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ti0t7PSbelW-LHDXQ67UIfjaeVo(Landroid/telephony/UiccSlotInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/UiccSlotUtil;->lambda$isRemovableSimEnabled$7(Landroid/telephony/UiccSlotInfo;)Z

    move-result p0

    return p0
.end method

.method public static getEsimSlotId(Landroid/content/Context;I)I
    .locals 6

    .line 193
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 194
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v1

    .line 195
    invoke-static {v0}, Lcom/android/settings/network/UiccSlotUtil;->getSlotInfos(Landroid/telephony/TelephonyManager;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 196
    const-class v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 198
    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    const-string p1, "UiccSlotUtil"

    const/4 v2, -0x1

    if-eqz p0, :cond_1

    .line 201
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccCardInfo;

    .line 203
    invoke-virtual {v3}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v4

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 204
    invoke-virtual {v3}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 205
    invoke-virtual {v3}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {v3}, Landroid/telephony/UiccCardInfo;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "getEsimSlotId: This subInfo is a removable esim."

    .line 207
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v3}, Landroid/telephony/UiccCardInfo;->getPhysicalSlotIndex()I

    move-result p0

    return p0

    .line 213
    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v1, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 214
    invoke-interface {p0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 222
    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstEsimSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method static getExcludedLogicalSlotIndex(Ljava/util/Collection;Ljava/util/Collection;Landroid/telephony/SubscriptionInfo;Z)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/telephony/SubscriptionInfo;",
            "Z)I"
        }
    .end annotation

    const-string v0, "UiccSlotUtil"

    if-nez p3, :cond_0

    const-string p0, "In the ss mode."

    .line 391
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "The removedSubInfo is not null"

    .line 396
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    return p0

    :cond_1
    const-string p2, "The removedSubInfo is null"

    .line 401
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    .line 403
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;-><init>()V

    .line 412
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda3;-><init>()V

    .line 413
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 414
    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 p1, -0x1

    .line 415
    invoke-virtual {p0, p1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    return p0
.end method

.method private static getInactiveRemovableSlot([Landroid/telephony/UiccSlotInfo;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 274
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_2

    .line 275
    aget-object v1, p0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p0, p1

    .line 276
    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p0, p1

    .line 277
    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p0, p1

    .line 278
    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    aget-object v1, p0, p1

    .line 279
    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 284
    :cond_1
    array-length v1, p0

    if-ge p1, v1, :cond_3

    aget-object v1, p0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/UiccPortInfo;

    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p0

    if-nez p0, :cond_2

    return p1

    :cond_2
    return v0

    .line 285
    :cond_3
    new-instance p0, Lcom/android/settings/network/UiccSlotsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The given slotId is not a removable slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/UiccSlotsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_4
    new-instance p0, Lcom/android/settings/network/UiccSlotsException;

    const-string p1, "UiccSlotInfo is null"

    invoke-direct {p0, p1}, Lcom/android/settings/network/UiccSlotsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSlotInfos(Landroid/telephony/TelephonyManager;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/telephony/UiccSlotInfo;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 84
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda5;-><init>()V

    .line 87
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda6;-><init>()V

    .line 88
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/telephony/UiccSlotInfo;

    .line 89
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static isRemovableSimEnabled(Landroid/telephony/TelephonyManager;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 428
    :cond_0
    invoke-static {p0}, Lcom/android/settings/network/UiccSlotUtil;->getSlotInfos(Landroid/telephony/TelephonyManager;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 430
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 431
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRemovableSimEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccSlotUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static isTargetSlotActive(Ljava/util/Collection;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;II)Z"
        }
    .end annotation

    .line 230
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda8;-><init>(II)V

    .line 231
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getEsimSlotId$2(Lcom/google/common/collect/ImmutableList;I)Z
    .locals 0

    .line 216
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/UiccSlotInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getExcludedLogicalSlotIndex$4(Ljava/util/Collection;Landroid/telephony/UiccSlotMapping;)Z
    .locals 2

    .line 405
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 406
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getExcludedLogicalSlotIndex$5(Landroid/telephony/UiccSlotMapping;)I
    .locals 0

    .line 413
    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getSlotInfos$0(Landroid/telephony/UiccSlotInfo;)Z
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSlotInfos$1(I)[Landroid/telephony/UiccSlotInfo;
    .locals 0

    .line 88
    new-array p0, p0, [Landroid/telephony/UiccSlotInfo;

    return-object p0
.end method

.method private static synthetic lambda$isRemovableSimEnabled$6(Landroid/telephony/UiccPortInfo;)Z
    .locals 0

    .line 436
    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isRemovableSimEnabled$7(Landroid/telephony/UiccSlotInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 433
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isTargetSlotActive$3(IILandroid/telephony/UiccSlotMapping;)Z
    .locals 1

    .line 232
    invoke-virtual {p2}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 233
    invoke-virtual {p2}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static performSwitchToSlot(Landroid/telephony/TelephonyManager;Ljava/util/Collection;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    .line 242
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "euicc_switch_slot_timeout_millis"

    const-wide/16 v2, 0x61a8

    .line 241
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 246
    :try_start_0
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 247
    new-instance v4, Lcom/android/settings/network/CarrierConfigChangedReceiver;

    invoke-direct {v4, v3}, Lcom/android/settings/network/CarrierConfigChangedReceiver;-><init>(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    :try_start_1
    invoke-virtual {v4, p2}, Lcom/android/settings/network/CarrierConfigChangedReceiver;->registerOn(Landroid/content/Context;)V

    .line 249
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setSimSlotMapping(Ljava/util/Collection;)V

    .line 250
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    invoke-virtual {p2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, v4

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 252
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const-string p1, "UiccSlotUtil"

    const-string v0, "Failed switching to physical slot."

    .line 253
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {p2, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {p2, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 258
    :cond_1
    throw p0
.end method

.method static prepareUiccSlotMappings(Ljava/util/Collection;ZIII)Ljava/util/Collection;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;ZIII)",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const-string v1, "UiccSlotUtil"

    if-ne p4, v0, :cond_0

    const-string p1, "There is no removedLogicalSlotId. Do nothing."

    .line 331
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 338
    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Create new SimSlotMapping. Remove the UiccSlotMapping of logicalSlot%d, and insert PhysicalSlotId%d-Port%d"

    .line 335
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 343
    new-instance v3, Landroid/telephony/UiccSlotMapping;

    invoke-direct {v3, p3, p2, v2}, Landroid/telephony/UiccSlotMapping;-><init>(III)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 347
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;-><init>()V

    .line 348
    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 349
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 350
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccSlotMapping;

    .line 351
    invoke-virtual {v3}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v4

    if-ne v4, p4, :cond_3

    if-nez p1, :cond_2

    .line 354
    new-instance v4, Landroid/telephony/UiccSlotMapping;

    .line 355
    invoke-virtual {v3}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v3

    invoke-direct {v4, p3, p2, v3}, Landroid/telephony/UiccSlotMapping;-><init>(III)V

    .line 354
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 363
    new-instance v4, Landroid/telephony/UiccSlotMapping;

    invoke-virtual {v3}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result v5

    .line 364
    invoke-virtual {v3}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v3

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v4, v5, v3, v2}, Landroid/telephony/UiccSlotMapping;-><init>(III)V

    move-object v3, v4

    move v2, v6

    .line 362
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 368
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The new SimSlotMapping: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static declared-synchronized switchToEuiccSlot(Landroid/content/Context;IILandroid/telephony/SubscriptionInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    const-class v0, Lcom/android/settings/network/UiccSlotUtil;

    monitor-enter v0

    .line 164
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 169
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "UiccSlotUtil"

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The SimSlotMapping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v2, p1, p2}, Lcom/android/settings/network/UiccSlotUtil;->isTargetSlotActive(Ljava/util/Collection;II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "UiccSlotUtil"

    const-string p1, "The slot is active, then the sim can enable directly."

    .line 173
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit v0

    return-void

    .line 177
    :cond_0
    :try_start_1
    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 180
    invoke-static {v3}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v3

    .line 181
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    .line 179
    invoke-static {v2, v3, p3, v4}, Lcom/android/settings/network/UiccSlotUtil;->getExcludedLogicalSlotIndex(Ljava/util/Collection;Ljava/util/Collection;Landroid/telephony/SubscriptionInfo;Z)I

    move-result p3

    const/4 v3, 0x0

    .line 183
    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/settings/network/UiccSlotUtil;->prepareUiccSlotMappings(Ljava/util/Collection;ZIII)Ljava/util/Collection;

    move-result-object p1

    .line 182
    invoke-static {v1, p1, p0}, Lcom/android/settings/network/UiccSlotUtil;->performSwitchToSlot(Landroid/telephony/TelephonyManager;Ljava/util/Collection;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    monitor-exit v0

    return-void

    .line 165
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Do not call switchToRemovableSlot on the main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchToRemovableSlot(ILandroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    const-class v0, Lcom/android/settings/network/UiccSlotUtil;

    monitor-enter v0

    const/4 v1, 0x0

    .line 103
    :try_start_0
    invoke-static {p1, p0, v1}, Lcom/android/settings/network/UiccSlotUtil;->switchToRemovableSlot(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchToRemovableSlot(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    const-class v0, Lcom/android/settings/network/UiccSlotUtil;

    monitor-enter v0

    .line 120
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 125
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings/network/UiccSlotUtil;->getInactiveRemovableSlot([Landroid/telephony/UiccSlotInfo;I)I

    move-result p1

    const-string v2, "UiccSlotUtil"

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The InactiveRemovableSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 130
    monitor-exit v0

    return-void

    .line 133
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "UiccSlotUtil"

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The SimSlotMapping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 139
    invoke-static {v3}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v3

    .line 140
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    .line 138
    invoke-static {v2, v3, p2, v4}, Lcom/android/settings/network/UiccSlotUtil;->getExcludedLogicalSlotIndex(Ljava/util/Collection;Ljava/util/Collection;Landroid/telephony/SubscriptionInfo;Z)I

    move-result p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    invoke-static {v2, v3, p1, v4, p2}, Lcom/android/settings/network/UiccSlotUtil;->prepareUiccSlotMappings(Ljava/util/Collection;ZIII)Ljava/util/Collection;

    move-result-object p1

    .line 141
    invoke-static {v1, p1, p0}, Lcom/android/settings/network/UiccSlotUtil;->performSwitchToSlot(Landroid/telephony/TelephonyManager;Ljava/util/Collection;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    monitor-exit v0

    return-void

    .line 121
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Do not call switchToRemovableSlot on the main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
