.class public final Lmiuix/internal/view/CheckWidgetDrawableAnims$2;
.super Lmiuix/animation/property/FloatProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method public synthetic constructor <init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 4
    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_4

    .line 7
    :pswitch_0
    check-cast p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 8
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 10
    iget p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    .line 12
    return p0

    .line 14
    :pswitch_1
    check-cast p1, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 15
    packed-switch v0, :pswitch_data_1

    .line 17
    goto :goto_0

    .line 20
    :pswitch_2
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 21
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 23
    iget p0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 25
    goto :goto_1

    .line 27
    :goto_0
    iget p0, p1, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    .line 28
    :goto_1
    return p0

    .line 30
    :pswitch_3
    check-cast p1, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 31
    packed-switch v0, :pswitch_data_2

    .line 33
    goto :goto_2

    .line 36
    :pswitch_4
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 37
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 39
    iget p0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 41
    goto :goto_3

    .line 43
    :goto_2
    iget p0, p1, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    .line 44
    :goto_3
    return p0

    .line 46
    :goto_4
    check-cast p1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 47
    invoke-virtual {p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->getAlpha()I

    .line 49
    move-result p0

    .line 52
    div-int/lit16 p0, p0, 0xff

    .line 53
    int-to-float p0, p0

    .line 55
    return p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 58
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 68
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
    .line 74
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    check-cast p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 6
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 7
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 8
    iput p2, p1, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    .line 9
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iput p2, p1, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    .line 10
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iput p2, p1, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    .line 11
    iput p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    return-void

    .line 12
    :pswitch_1
    check-cast p1, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p0, p1, p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->setValue(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;F)V

    return-void

    .line 13
    :pswitch_2
    check-cast p1, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p0, p1, p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->setValue(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;F)V

    return-void

    .line 14
    :goto_0
    check-cast p1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p0

    if-lez v0, :cond_0

    move p2, p0

    :cond_0
    const/4 p0, 0x0

    cmpg-float v0, p2, p0

    if-gez v0, :cond_1

    move p2, p0

    :cond_1
    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p2, p0

    float-to-int p0, p2

    .line 15
    invoke-virtual {p1, p0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;F)V
    .locals 1

    iget v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 2
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 3
    iput p2, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    return-void

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p0

    if-lez v0, :cond_0

    move p2, p0

    :cond_0
    const/4 p0, 0x0

    cmpg-float v0, p2, p0

    if-gez v0, :cond_1

    move p2, p0

    .line 4
    :cond_1
    iput p2, p1, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
