.class public final Landroidx/appcompat/widget/ActionBarOverlayLayout$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 13
    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    .line 15
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 17
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 22
    move-result-object v1

    .line 25
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 26
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroidx/appcompat/widget/ActionBarOverlayLayout$1;

    .line 28
    invoke-virtual {v1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 30
    move-result-object p0

    .line 33
    iput-object p0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    .line 34
    return-void

    .line 36
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 39
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 42
    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    .line 44
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 46
    move-result-object v1

    .line 49
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 50
    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Landroidx/appcompat/widget/ActionBarContainer;

    .line 52
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    .line 54
    move-result v2

    .line 57
    neg-int v2, v2

    .line 58
    int-to-float v2, v2

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 60
    move-result-object v1

    .line 63
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;->this$0:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 64
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroidx/appcompat/widget/ActionBarOverlayLayout$1;

    .line 66
    invoke-virtual {v1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 68
    move-result-object p0

    .line 71
    iput-object p0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    .line 72
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 76
.end method
