.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $originDrawableTranslateY:I

.field public final synthetic $r8$classId:I

.field public final synthetic $smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 4
    iput p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$originDrawableTranslateY:I

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 8
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$originDrawableTranslateY:I

    .line 10
    invoke-virtual {p1, v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setDrawableTranslateY(I)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    return-void

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 30
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 33
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$originDrawableTranslateY:I

    .line 35
    invoke-virtual {p1, v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setDrawableTranslateY(I)V

    .line 37
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 42
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 46
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 20
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 23
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$originDrawableTranslateY:I

    .line 25
    invoke-virtual {p1, v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setDrawableTranslateY(I)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startSmartFrameAnim$1$1$2;->$smartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 32
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 36
.end method
