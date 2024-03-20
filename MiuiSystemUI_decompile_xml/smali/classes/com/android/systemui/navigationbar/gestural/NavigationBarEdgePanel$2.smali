.class public final Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getValue(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-static {p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->-$$Nest$mgetCurrentTranslation(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F

    move-result p0

    return p0

    .line 5
    :pswitch_1
    invoke-static {p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->-$$Nest$mgetCurrentAngle(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F

    move-result p0

    return p0

    .line 6
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->-$$Nest$mgetVerticalTranslation(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;->getValue(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F

    move-result p0

    return p0

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;->getValue(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F

    move-result p0

    return p0

    .line 3
    :goto_0
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;->getValue(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;F)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    sget-object p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 5
    iput p2, p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentTranslation:F

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 7
    :pswitch_1
    sget-object p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 8
    iput p2, p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentAngle:F

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 10
    :goto_0
    sget-object p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 11
    iput p2, p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslation:F

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;->setValue(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;F)V

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;->setValue(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;F)V

    return-void

    .line 3
    :goto_0
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;->setValue(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
