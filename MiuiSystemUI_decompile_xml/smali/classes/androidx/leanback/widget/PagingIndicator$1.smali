.class public final Landroidx/leanback/widget/PagingIndicator$1;
.super Landroid/util/Property;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/leanback/widget/PagingIndicator$1;->$r8$classId:I

    .line 2
    const-class p2, Ljava/lang/Float;

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final get(Landroidx/leanback/widget/PagingIndicator$Dot;)Ljava/lang/Float;
    .locals 0

    iget p0, p0, Landroidx/leanback/widget/PagingIndicator$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_1
    iget p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 7
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 8
    :goto_0
    iget p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Landroidx/leanback/widget/PagingIndicator$Dot;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/PagingIndicator$1;->get(Landroidx/leanback/widget/PagingIndicator$Dot;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_1
    check-cast p1, Landroidx/leanback/widget/PagingIndicator$Dot;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/PagingIndicator$1;->get(Landroidx/leanback/widget/PagingIndicator$Dot;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 3
    :goto_0
    check-cast p1, Landroidx/leanback/widget/PagingIndicator$Dot;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/PagingIndicator$1;->get(Landroidx/leanback/widget/PagingIndicator$Dot;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Landroidx/leanback/widget/PagingIndicator$Dot;Ljava/lang/Float;)V
    .locals 1

    iget p0, p0, Landroidx/leanback/widget/PagingIndicator$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 5
    iput p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    .line 6
    iput p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mRadius:F

    .line 7
    iget-object p2, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v0, p2, Landroidx/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr p0, v0

    iput p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    return-void

    .line 9
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 10
    iput p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 11
    invoke-virtual {p1}, Landroidx/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    .line 12
    iget-object p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 13
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 14
    iget p2, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    mul-float/2addr p0, p2

    .line 15
    iget p2, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    mul-float/2addr p0, p2

    iput p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    .line 16
    iget-object p0, p1, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Landroidx/leanback/widget/PagingIndicator$Dot;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/PagingIndicator$1;->set(Landroidx/leanback/widget/PagingIndicator$Dot;Ljava/lang/Float;)V

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Landroidx/leanback/widget/PagingIndicator$Dot;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/PagingIndicator$1;->set(Landroidx/leanback/widget/PagingIndicator$Dot;Ljava/lang/Float;)V

    return-void

    .line 3
    :goto_0
    check-cast p1, Landroidx/leanback/widget/PagingIndicator$Dot;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/PagingIndicator$1;->set(Landroidx/leanback/widget/PagingIndicator$Dot;Ljava/lang/Float;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
