.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$1;->$r8$classId:I

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 13
    iget-object p1, p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    .line 15
    const/16 v0, 0x8

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    .line 24
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 26
    return-void

    .line 29
    :goto_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 33
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 35
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 40
.end method
