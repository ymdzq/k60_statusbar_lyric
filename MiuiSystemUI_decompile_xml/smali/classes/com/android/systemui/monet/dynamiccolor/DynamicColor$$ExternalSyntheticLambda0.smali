.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/monet/scheme/DynamicScheme;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/monet/scheme/DynamicScheme;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 8
    check-cast p1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 10
    iget-object p1, p1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneMinContrast:Ljava/util/function/Function;

    .line 12
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Double;

    .line 18
    return-object p0

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 21
    check-cast p1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 23
    invoke-virtual {p1, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->getTone(Lcom/android/systemui/monet/scheme/DynamicScheme;)D

    .line 25
    move-result-wide p0

    .line 28
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 34
    check-cast p1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 36
    iget-object p1, p1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneMaxContrast:Ljava/util/function/Function;

    .line 38
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Double;

    .line 44
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 48
.end method
