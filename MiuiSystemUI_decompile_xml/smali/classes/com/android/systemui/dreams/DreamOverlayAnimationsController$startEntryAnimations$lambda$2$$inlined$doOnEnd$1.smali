.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public synthetic constructor <init>(ILcom/android/systemui/dreams/DreamOverlayAnimationsController;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    return-void

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mLogger:Lcom/android/systemui/dreams/DreamLogger;

    .line 11
    const-string p1, "Dream overlay entry animations canceled."

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/dreams/DreamLogger;->d(Ljava/lang/String;)V

    .line 15
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 8
    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    .line 11
    iget-object p1, p1, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const/4 v0, 0x2

    .line 18
    const/4 v1, 0x4

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mLogger:Lcom/android/systemui/dreams/DreamLogger;

    .line 25
    const-string p1, "Dream overlay entry animations finished."

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/systemui/dreams/DreamLogger;->d(Ljava/lang/String;)V

    .line 29
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 34
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
