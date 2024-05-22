.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:D


# direct methods
.method public synthetic constructor <init>(DI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-wide p1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;->f$0:D

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-wide v0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;->f$0:D

    .line 8
    check-cast p1, Ljava/lang/Double;

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :goto_0
    iget-wide v0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;->f$0:D

    .line 17
    check-cast p1, Ljava/lang/Double;

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
