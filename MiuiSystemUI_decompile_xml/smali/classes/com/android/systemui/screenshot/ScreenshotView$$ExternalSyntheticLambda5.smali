.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 10
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotView;

    .line 12
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 14
    invoke-virtual {p1, v1}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 16
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 19
    invoke-virtual {p1, v1}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 21
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 26
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->QUICK_SHARE:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 29
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 31
    return-void

    .line 33
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 34
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotView;

    .line 36
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 38
    invoke-virtual {p1, v1}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 40
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 43
    invoke-virtual {p1, v1}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 45
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 48
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1, v1}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 52
    :cond_0
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->PREVIEW:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 57
    return-void

    .line 59
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 60
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotView;

    .line 62
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 66
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 69
    invoke-virtual {p1, v1}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 71
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 74
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1, v1}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 78
    :cond_1
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->EDIT:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 83
    return-void

    .line 85
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 86
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotView;

    .line 88
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 90
    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 92
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 95
    invoke-virtual {p1, v1}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 97
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 100
    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1, v1}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 104
    :cond_2
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->SHARE:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 107
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 109
    return-void

    .line 111
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 112
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotView$5;

    .line 114
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 116
    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 118
    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EXPLICIT_DISMISSAL:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 120
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView;->mPackageName:Ljava/lang/String;

    .line 122
    invoke-interface {v0, v2, v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$5;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 127
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 129
    iget-object p0, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mSwipeDismissHandler:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;

    .line 131
    iget-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 133
    const/high16 v0, 0x3f800000    # 1.0f

    .line 135
    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 137
    move-result p1

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->createSwipeDismissAnimation(F)Landroid/animation/ValueAnimator;

    .line 141
    move-result-object p1

    .line 144
    iput-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 145
    new-instance v0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$1;

    .line 147
    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$1;-><init>(Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;)V

    .line 149
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 155
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 157
    return-void

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 162
.end method
