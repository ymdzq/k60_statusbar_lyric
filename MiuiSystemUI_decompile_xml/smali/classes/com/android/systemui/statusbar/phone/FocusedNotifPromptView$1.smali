.class public final Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

.field public final synthetic val$isIcon:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->val$isIcon:Z

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
    iget p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->val$isIcon:Z

    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 26
    :goto_0
    return-void

    .line 29
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->val$isIcon:Z

    .line 30
    if-eqz p1, :cond_1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 34
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 36
    if-eqz p1, :cond_2

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 40
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    goto :goto_2

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 48
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 50
    if-eqz v0, :cond_2

    .line 52
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Landroid/widget/TextView;

    .line 54
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->updateRemoteViews()V

    .line 63
    :cond_2
    :goto_2
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->val$isIcon:Z

    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContent:Landroid/widget/FrameLayout;

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 26
    :goto_0
    return-void

    .line 29
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->val$isIcon:Z

    .line 30
    if-eqz p1, :cond_1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 34
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 36
    if-eqz p1, :cond_2

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 40
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    goto :goto_2

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 48
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mData:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 50
    if-eqz v0, :cond_2

    .line 52
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Landroid/widget/TextView;

    .line 54
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView$1;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->updateRemoteViews()V

    .line 63
    :cond_2
    :goto_2
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method
