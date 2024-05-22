.class public final Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private final trafficType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "traffic_type"
    .end annotation
.end field

.field private final trafficUnit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "traffic_unit"
    .end annotation
.end field

.field private final trafficValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "traffic_value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficType:I

    .line 3
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficUnit:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;ILjava/lang/String;IILjava/lang/Object;)Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    if-eqz p5, :cond_0

    .line 4
    iget p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficType:I

    .line 6
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    if-eqz p5, :cond_1

    .line 10
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 12
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    if-eqz p4, :cond_2

    .line 16
    iget p3, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficUnit:I

    .line 18
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->copy(ILjava/lang/String;I)Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
    .line 24
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficType:I

    .line 2
    return p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficUnit:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(ILjava/lang/String;I)Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;-><init>(ILjava/lang/String;I)V

    .line 4
    return-object p0
    .line 7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    const-class v1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

    .line 6
    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_2

    .line 21
    return v2

    .line 23
    :cond_2
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

    .line 24
    iget v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficType:I

    .line 26
    iget v3, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficType:I

    .line 28
    if-eq v1, v3, :cond_3

    .line 30
    return v2

    .line 32
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 33
    iget-object v3, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 40
    if-nez v1, :cond_4

    .line 41
    return v2

    .line 43
    :cond_4
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficUnit:I

    .line 44
    iget p1, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficUnit:I

    .line 46
    if-ne p0, p1, :cond_5

    .line 48
    goto :goto_1

    .line 50
    :cond_5
    move v0, v2

    .line 51
    :goto_1
    return v0
    .line 52
.end method

.method public final getDataUsageInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-object v1

    .line 11
    :cond_0
    iget v0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficUnit:I

    .line 12
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_4

    .line 16
    if-eq v0, v3, :cond_3

    .line 18
    if-eq v0, v2, :cond_2

    .line 20
    const/4 v4, 0x3

    .line 22
    if-eq v0, v4, :cond_1

    .line 23
    move-object v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const v0, 0x7f130bb2    # @string/traffic_unit_gigabyte 'GB'

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const v0, 0x7f130bb4    # @string/traffic_unit_megabyte 'MB'

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const v0, 0x7f130bb3    # @string/traffic_unit_kilobyte 'KB'

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const v0, 0x7f130bb1    # @string/traffic_unit_byte 'B'

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 57
    :goto_0
    if-nez v0, :cond_5

    .line 58
    return-object v1

    .line 60
    :cond_5
    iget v4, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficType:I

    .line 61
    if-eqz v4, :cond_8

    .line 63
    if-eq v4, v3, :cond_7

    .line 65
    if-eq v4, v2, :cond_6

    .line 67
    goto :goto_1

    .line 69
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object p1

    .line 73
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 74
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 79
    const v0, 0x7f130954    # @string/qs_traffic_message_type_used 'Used %1$s %2$s'

    .line 80
    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 86
    goto :goto_1

    .line 87
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object p1

    .line 91
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 92
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 97
    const v0, 0x7f130953    # @string/qs_traffic_message_type_remain '%1$s %2$s remaining'

    .line 98
    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 104
    goto :goto_1

    .line 105
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object p1

    .line 109
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 110
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 112
    move-result-object p0

    .line 115
    const v0, 0x7f130952    # @string/qs_traffic_message_type_exceed '%1$s %2$s over limit'

    .line 116
    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 122
    :goto_1
    return-object v1
    .line 123
.end method

.method public final getTrafficType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficType:I

    .line 2
    return p0
    .line 4
.end method

.method public final getTrafficUnit()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficUnit:I

    .line 2
    return p0
    .line 4
.end method

.method public final getTrafficValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficType:I

    .line 2
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficUnit:I

    .line 19
    add-int/2addr v0, p0

    .line 21
    return v0
    .line 22
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficType:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 4
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->trafficUnit:I

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string v3, "DataUsage("

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v0, ", "

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v0, ")"

    .line 29
    invoke-static {v2, p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    return-object p0
    .line 35
.end method
