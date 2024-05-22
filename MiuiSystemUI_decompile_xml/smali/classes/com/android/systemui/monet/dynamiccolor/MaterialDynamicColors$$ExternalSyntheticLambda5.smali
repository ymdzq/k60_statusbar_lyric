.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    sget-object v1, Lcom/android/systemui/monet/dynamiccolor/TonePolarity;->DARKER:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;

    .line 4
    sget-object v2, Lcom/android/systemui/monet/dynamiccolor/TonePolarity;->LIGHTER:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto/16 :goto_2

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 13
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 15
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 19
    move-result-object p0

    .line 22
    iget-boolean p1, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 23
    if-eqz p1, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;-><init>(Lcom/android/systemui/monet/dynamiccolor/DynamicColor;Lcom/android/systemui/monet/dynamiccolor/TonePolarity;)V

    .line 29
    return-object v0

    .line 32
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 33
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {p1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 40
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 45
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {p1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 52
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 57
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {p1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 64
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 69
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 71
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 75
    move-result-object p0

    .line 78
    iget-boolean p1, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 79
    if-eqz p1, :cond_1

    .line 81
    goto :goto_1

    .line 83
    :cond_1
    move-object v1, v2

    .line 84
    :goto_1
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;-><init>(Lcom/android/systemui/monet/dynamiccolor/DynamicColor;Lcom/android/systemui/monet/dynamiccolor/TonePolarity;)V

    .line 85
    return-object v0

    .line 88
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 89
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-static {p1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 96
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 101
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    new-instance p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 108
    const/16 p1, 0x15

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 112
    new-instance p1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 115
    const/16 v0, 0x16

    .line 117
    invoke-direct {p1, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 119
    const/4 v0, 0x0

    .line 122
    invoke-static {p0, p1, v0, v0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 123
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 128
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 132
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 137
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-static {p1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 144
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 149
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->errorContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 153
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 158
.end method
