.class public final Lcom/android/systemui/statusbar/notification/stack/ViewState$2;
.super Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getAnimationEndTag()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    const p0, 0x7f0a07ec    # @id/scale_y_animator_end_value_tag

    .line 7
    return p0

    .line 10
    :pswitch_0
    const p0, 0x7f0a07e8    # @id/scale_x_animator_end_value_tag

    .line 11
    return p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 16
.end method

.method public final getAnimationStartTag()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    const p0, 0x7f0a07ed    # @id/scale_y_animator_start_value_tag

    .line 7
    return p0

    .line 10
    :pswitch_0
    const p0, 0x7f0a07e9    # @id/scale_x_animator_start_value_tag

    .line 11
    return p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 16
.end method

.method public final getAnimatorTag()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    const p0, 0x7f0a07ee    # @id/scale_y_animator_tag

    .line 7
    return p0

    .line 10
    :pswitch_0
    const p0, 0x7f0a07ea    # @id/scale_x_animator_tag

    .line 11
    return p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 16
.end method

.method public final getProperty()Landroid/util/Property;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    sget-object p0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 8
    return-object p0

    .line 10
    :goto_0
    sget-object p0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 11
    return-object p0

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 14
.end method
