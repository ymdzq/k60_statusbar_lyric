.class public final Lcom/android/systemui/statusbar/notification/stack/ViewState$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field public final synthetic val$child:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->this$0:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 9
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_X:I

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 16
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_X:I

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 23
    sget p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_X:I

    .line 25
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    return-void

    .line 30
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 31
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Z:I

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 38
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Z:I

    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 45
    sget p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Z:I

    .line 47
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 49
    return-void

    .line 52
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 53
    const v1, 0x7f0a0452    # @id/is_clicked_heads_up_tag

    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 61
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_ANIMATOR_TRANSLATION_Y:I

    .line 63
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 68
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_START_TRANSLATION_Y:I

    .line 70
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 75
    sget v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->TAG_END_TRANSLATION_Y:I

    .line 77
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->this$0:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;->val$child:Landroid/view/View;

    .line 84
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->onYTranslationAnimationFinished(Landroid/view/View;)V

    .line 86
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 90
.end method