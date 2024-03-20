.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

.field public final synthetic val$startLeftX:F

.field public final synthetic val$startRightX:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;FFI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->val$startRightX:F

    .line 6
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->val$startLeftX:F

    .line 8
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 11
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 18
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    const/16 p1, 0x8

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    sget p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->$r8$clinit:I

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->fixedWidthOrWrapContent(Z)V

    .line 18
    return-void

    .line 21
    :goto_0
    sget p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->$r8$clinit:I

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->fixedWidthOrWrapContent(Z)V

    .line 24
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 28
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 8

    .line 1
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->$r8$classId:I

    .line 2
    const-string v0, "alpha"

    .line 4
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->val$startLeftX:F

    .line 6
    const-string v2, "scaleY"

    .line 8
    const-string v3, "scaleX"

    .line 10
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->val$startRightX:F

    .line 12
    const/4 v5, 0x0

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 15
    const-string/jumbo v6, "translationDeltaX"

    .line 17
    const-string/jumbo v7, "width"

    .line 20
    packed-switch p1, :pswitch_data_0

    .line 23
    goto/16 :goto_2

    .line 26
    :pswitch_0
    invoke-static {p2, v7}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 28
    move-result-object p1

    .line 31
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 32
    move-result-object v6

    .line 35
    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    move-result-object v7

    .line 41
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 42
    move-result p1

    .line 45
    iput p1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    iget-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 48
    if-nez p1, :cond_1

    .line 50
    if-eqz v6, :cond_0

    .line 52
    invoke-virtual {v6}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 54
    move-result p1

    .line 57
    int-to-float p1, p1

    .line 58
    add-float/2addr v4, p1

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    move-result-object p1

    .line 63
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    int-to-float p1, p1

    .line 66
    sub-float/2addr v4, p1

    .line 67
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 68
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    move-result-object p1

    .line 75
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    int-to-float p1, p1

    .line 78
    sub-float/2addr v4, p1

    .line 79
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 80
    goto :goto_0

    .line 83
    :cond_1
    if-eqz v6, :cond_2

    .line 84
    invoke-virtual {v6}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 86
    move-result p1

    .line 89
    int-to-float p1, p1

    .line 90
    sub-float/2addr v1, p1

    .line 91
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 92
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 95
    if-eqz p1, :cond_3

    .line 97
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    move-result-object p1

    .line 103
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    int-to-float v5, p1

    .line 106
    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 107
    invoke-static {p2, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 110
    move-result-object p1

    .line 113
    invoke-static {p2, v2}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 114
    move-result-object v1

    .line 117
    if-eqz p1, :cond_4

    .line 118
    if-eqz v1, :cond_4

    .line 120
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 122
    move-result p1

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 126
    invoke-virtual {v1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 129
    move-result p1

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 133
    :cond_4
    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 136
    move-result-object p1

    .line 139
    if-eqz p1, :cond_5

    .line 140
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 142
    move-result p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->setAlpha(F)V

    .line 146
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 149
    return-void

    .line 152
    :goto_2
    invoke-static {p2, v7}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 153
    move-result-object p1

    .line 156
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 157
    move-result-object v6

    .line 160
    if-eqz p1, :cond_8

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 163
    move-result-object v7

    .line 166
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 167
    move-result p1

    .line 170
    iput p1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 173
    iget-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 176
    if-nez p1, :cond_7

    .line 178
    if-eqz v6, :cond_6

    .line 180
    invoke-virtual {v6}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 182
    move-result p1

    .line 185
    add-float/2addr p1, v4

    .line 186
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 187
    move-result-object v1

    .line 190
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 191
    int-to-float v1, v1

    .line 193
    sub-float/2addr p1, v1

    .line 194
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 195
    goto :goto_3

    .line 198
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 199
    move-result-object p1

    .line 202
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 203
    int-to-float p1, p1

    .line 205
    sub-float/2addr v4, p1

    .line 206
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 207
    goto :goto_3

    .line 210
    :cond_7
    if-eqz v6, :cond_8

    .line 211
    invoke-virtual {v6}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 213
    move-result p1

    .line 216
    sub-float/2addr v1, p1

    .line 217
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 218
    :cond_8
    :goto_3
    iget-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 221
    if-eqz p1, :cond_9

    .line 223
    goto :goto_4

    .line 225
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 226
    move-result-object p1

    .line 229
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 230
    int-to-float v5, p1

    .line 232
    :goto_4
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 233
    invoke-static {p2, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 236
    move-result-object p1

    .line 239
    invoke-static {p2, v2}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 240
    move-result-object v1

    .line 243
    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 244
    move-result-object p2

    .line 247
    if-eqz p1, :cond_a

    .line 248
    if-eqz v1, :cond_a

    .line 250
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 252
    move-result p1

    .line 255
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 256
    invoke-virtual {v1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 259
    move-result p1

    .line 262
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 263
    :cond_a
    if-eqz p2, :cond_b

    .line 266
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 268
    move-result p1

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->setAlpha(F)V

    .line 272
    :cond_b
    return-void

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 276
.end method
