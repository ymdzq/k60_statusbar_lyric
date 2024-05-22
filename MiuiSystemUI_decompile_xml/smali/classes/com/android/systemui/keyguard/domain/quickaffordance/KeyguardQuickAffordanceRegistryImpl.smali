.class public final Lcom/android/systemui/keyguard/domain/quickaffordance/KeyguardQuickAffordanceRegistryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final configsByPosition:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/quickaffordance/HomeControlsKeyguardQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/QuickAccessWalletKeyguardQuickAffordanceConfig;Lcom/android/systemui/keyguard/data/quickaffordance/QrCodeScannerKeyguardQuickAffordanceConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->BOTTOM_START:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    move-result-object p1

    .line 10
    new-instance v1, Lkotlin/Pair;

    .line 11
    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    sget-object p1, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->BOTTOM_END:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 16
    filled-new-array {p2, p3}, [Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 18
    move-result-object p2

    .line 21
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    move-result-object p2

    .line 25
    new-instance p3, Lkotlin/Pair;

    .line 26
    invoke-direct {p3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    filled-new-array {v1, p3}, [Lkotlin/Pair;

    .line 31
    move-result-object p1

    .line 34
    invoke-static {p1}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 35
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/quickaffordance/KeyguardQuickAffordanceRegistryImpl;->configsByPosition:Ljava/util/Map;

    .line 39
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 41
    move-result-object p0

    .line 44
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    .line 45
    move-result-object p0

    .line 48
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 49
    move-result p1

    .line 52
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 53
    move-result p1

    .line 56
    const/16 p2, 0x10

    .line 57
    if-ge p1, p2, :cond_0

    .line 59
    move p1, p2

    .line 61
    :cond_0
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 62
    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 64
    check-cast p0, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p0

    .line 72
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 82
    move-object p3, p1

    .line 83
    check-cast p3, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 84
    invoke-interface {p3}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    .line 86
    move-result-object p3

    .line 89
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    goto :goto_0

    .line 93
    :cond_1
    return-void
    .line 94
.end method
