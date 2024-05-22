.class public final synthetic Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    .line 8
    invoke-interface {p1}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getRequestedSamplingPeriodNs()I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :goto_0
    check-cast p1, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    .line 15
    invoke-interface {p1}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 17
    move-result-object p0

    .line 20
    iget p0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlurRadius:I

    .line 21
    return p0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 24
.end method
