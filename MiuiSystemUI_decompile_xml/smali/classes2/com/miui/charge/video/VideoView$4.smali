.class public final Lcom/miui/charge/video/VideoView$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/miui/charge/video/VideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/charge/video/VideoView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/charge/video/VideoView$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

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
    return-void
    .line 2
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/miui/charge/video/VideoView$4;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    const/4 v2, 0x0

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    goto/16 :goto_0

    .line 11
    :pswitch_0
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 13
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 22
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mToStrongRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 24
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 28
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 34
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 36
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 40
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 43
    iget-object v1, p1, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 45
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 49
    iput-object v0, p1, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 54
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mToNormalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 56
    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 60
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 66
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 68
    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 72
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 75
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 77
    if-eqz p1, :cond_4

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 81
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 84
    :cond_4
    return-void

    .line 86
    :pswitch_1
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 87
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 89
    if-eqz p1, :cond_5

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 96
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mToNormalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 98
    if-eqz p1, :cond_6

    .line 100
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 102
    move-result p1

    .line 105
    if-nez p1, :cond_7

    .line 106
    :cond_6
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 108
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 110
    if-eqz p1, :cond_7

    .line 112
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 114
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 117
    iget-object v1, p1, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 119
    if-eqz v1, :cond_7

    .line 121
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 123
    iput-object v0, p1, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 126
    :cond_7
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 128
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mToRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 130
    if-eqz p1, :cond_8

    .line 132
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 134
    move-result p1

    .line 137
    if-nez p1, :cond_9

    .line 138
    :cond_8
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 140
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 142
    if-eqz p1, :cond_9

    .line 144
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 146
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 149
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 151
    if-eqz p1, :cond_9

    .line 153
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 155
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 158
    :cond_9
    return-void

    .line 160
    :goto_0
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 161
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 163
    if-eqz p1, :cond_a

    .line 165
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 167
    :cond_a
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 170
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mToStrongRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 172
    if-eqz p1, :cond_b

    .line 174
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 176
    move-result p1

    .line 179
    if-nez p1, :cond_c

    .line 180
    :cond_b
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 182
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 184
    if-eqz p1, :cond_c

    .line 186
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 188
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 191
    iget-object v1, p1, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 193
    if-eqz v1, :cond_c

    .line 195
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 197
    iput-object v0, p1, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 200
    :cond_c
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 202
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mToRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 204
    if-eqz p1, :cond_d

    .line 206
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 208
    move-result p1

    .line 211
    if-nez p1, :cond_e

    .line 212
    :cond_d
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 214
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 216
    if-eqz p1, :cond_e

    .line 218
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 220
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 223
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 225
    if-eqz p1, :cond_e

    .line 227
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 229
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 232
    :cond_e
    return-void

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 236
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/miui/charge/video/VideoView$4;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 11
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 13
    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 20
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 22
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 29
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 31
    if-eqz p0, :cond_2

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setAlpha(F)V

    .line 35
    :cond_2
    return-void

    .line 38
    :pswitch_1
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 39
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 41
    if-eqz p1, :cond_3

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 48
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 50
    if-eqz p1, :cond_4

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 54
    :cond_4
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 57
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 59
    if-eqz p0, :cond_5

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setAlpha(F)V

    .line 63
    :cond_5
    return-void

    .line 66
    :goto_0
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 67
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 69
    if-eqz p1, :cond_6

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 73
    :cond_6
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 76
    iget-object p1, p1, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 78
    if-eqz p1, :cond_7

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 82
    :cond_7
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$4;->this$0:Lcom/miui/charge/video/VideoView;

    .line 85
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 87
    if-eqz p0, :cond_8

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setAlpha(F)V

    .line 91
    :cond_8
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 96
.end method
