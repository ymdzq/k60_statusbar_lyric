.class public abstract Lcom/android/systemui/shared/clocks/ClockRegistryKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final KNOWN_PLUGINS:Ljava/util/Map;

.field public static final TMP_MESSAGE$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 2
    const-string v1, "ANALOG_CLOCK_BIGNUM"

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 12
    new-instance v1, Lkotlin/Pair;

    .line 13
    const-string v2, "com.android.systemui.falcon.one"

    .line 15
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 20
    const-string v2, "DIGITAL_CLOCK_CALLIGRAPHY"

    .line 22
    invoke-direct {v0, v2}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 30
    new-instance v2, Lkotlin/Pair;

    .line 31
    const-string v3, "com.android.systemui.falcon.two"

    .line 33
    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 38
    const-string v3, "DIGITAL_CLOCK_FLEX"

    .line 40
    invoke-direct {v0, v3}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 45
    move-result-object v0

    .line 48
    new-instance v3, Lkotlin/Pair;

    .line 49
    const-string v4, "com.android.systemui.falcon.three"

    .line 51
    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 56
    const-string v4, "DIGITAL_CLOCK_GROWTH"

    .line 58
    invoke-direct {v0, v4}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    move-result-object v0

    .line 66
    new-instance v4, Lkotlin/Pair;

    .line 67
    const-string v5, "com.android.systemui.falcon.four"

    .line 69
    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 74
    const-string v5, "DIGITAL_CLOCK_HANDWRITTEN"

    .line 76
    invoke-direct {v0, v5}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    move-result-object v0

    .line 84
    new-instance v5, Lkotlin/Pair;

    .line 85
    const-string v6, "com.android.systemui.falcon.five"

    .line 87
    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 92
    const-string v6, "DIGITAL_CLOCK_INFLATE"

    .line 94
    invoke-direct {v0, v6}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 99
    move-result-object v0

    .line 102
    new-instance v6, Lkotlin/Pair;

    .line 103
    const-string v7, "com.android.systemui.falcon.six"

    .line 105
    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 110
    const-string v7, "DIGITAL_CLOCK_NUMBEROVERLAP"

    .line 112
    invoke-direct {v0, v7}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 117
    move-result-object v0

    .line 120
    new-instance v7, Lkotlin/Pair;

    .line 121
    const-string v8, "com.android.systemui.falcon.eight"

    .line 123
    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    new-instance v0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 128
    const-string v8, "DIGITAL_CLOCK_WEATHER"

    .line 130
    invoke-direct {v0, v8}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 135
    move-result-object v0

    .line 138
    new-instance v8, Lkotlin/Pair;

    .line 139
    const-string v9, "com.android.systemui.falcon.nine"

    .line 141
    invoke-direct {v8, v9, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    filled-new-array/range {v1 .. v8}, [Lkotlin/Pair;

    .line 146
    move-result-object v0

    .line 149
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 150
    move-result-object v0

    .line 153
    sput-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->KNOWN_PLUGINS:Ljava/util/Map;

    .line 154
    sget-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt$TMP_MESSAGE$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistryKt$TMP_MESSAGE$2;

    .line 156
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 158
    move-result-object v0

    .line 161
    sput-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->TMP_MESSAGE$delegate:Lkotlin/Lazy;

    .line 162
    return-void
    .line 164
.end method

.method public static final access$getTMP_MESSAGE()Lcom/android/systemui/log/LogMessage;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->TMP_MESSAGE$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/log/LogMessage;

    .line 8
    return-object v0
    .line 10
.end method
