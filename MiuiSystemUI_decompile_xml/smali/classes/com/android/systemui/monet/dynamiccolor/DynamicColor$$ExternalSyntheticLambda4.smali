.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/util/function/Function;

.field public final synthetic f$2:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Function;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;->f$1:Ljava/util/function/Function;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;->f$2:Ljava/util/function/Function;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Function;

    .line 8
    iget-object v5, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;->f$1:Ljava/util/function/Function;

    .line 10
    iget-object v6, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;->f$2:Ljava/util/function/Function;

    .line 12
    move-object v1, p1

    .line 14
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 15
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;

    .line 17
    const/4 p0, 0x1

    .line 19
    invoke-direct {v3, v1, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/monet/scheme/DynamicScheme;I)V

    .line 20
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;

    .line 23
    invoke-direct {v4, v2, v1, v5}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;)V

    .line 25
    const/4 v7, 0x0

    .line 28
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda6;

    .line 29
    invoke-direct {v8}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda6;-><init>()V

    .line 31
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->calculateDynamicTone(Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/Function;)D

    .line 34
    move-result-wide p0

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 38
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Function;

    .line 43
    iget-object v4, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;->f$1:Ljava/util/function/Function;

    .line 45
    iget-object v5, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda4;->f$2:Ljava/util/function/Function;

    .line 47
    move-object v0, p1

    .line 49
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 50
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;

    .line 52
    const/4 p0, 0x2

    .line 54
    invoke-direct {v2, v0, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/monet/scheme/DynamicScheme;I)V

    .line 55
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda7;

    .line 58
    invoke-direct {v3, v4, v0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Function;Lcom/android/systemui/monet/scheme/DynamicScheme;)V

    .line 60
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->calculateDynamicTone(Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/Function;)D

    .line 65
    move-result-wide p0

    .line 68
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 69
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 74
.end method
