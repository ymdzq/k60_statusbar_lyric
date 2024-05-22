.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto/16 :goto_3

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 10
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWm:Landroid/view/WindowManager;

    .line 12
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 18
    move-result-object v2

    .line 21
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    .line 22
    move-result v3

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 26
    move-result-object v2

    .line 29
    iget v3, v2, Landroid/graphics/Insets;->bottom:I

    .line 30
    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 34
    move-result-object v0

    .line 37
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 38
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 40
    sub-int/2addr v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, -0x1

    .line 44
    :goto_0
    iget v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSystemGestureTop:I

    .line 45
    if-eq v0, v2, :cond_1

    .line 47
    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mSystemGestureTop:I

    .line 49
    const/4 v0, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v0, v1

    .line 53
    :goto_1
    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateSysUIState(Z)V

    .line 56
    :cond_2
    return-void

    .line 59
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    .line 62
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    .line 68
    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mScale:F

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->formatStateDescription(F)Ljava/lang/CharSequence;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {v0, p0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 76
    :cond_3
    return-void

    .line 79
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    .line 82
    if-eqz v0, :cond_6

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    .line 86
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    .line 88
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 90
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    .line 93
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    .line 95
    invoke-virtual {v2, v3}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 100
    move-result v2

    .line 103
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    .line 104
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 106
    move-result v3

    .line 109
    if-ne v2, v3, :cond_4

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 112
    move-result v0

    .line 115
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 118
    move-result v2

    .line 121
    if-eq v0, v2, :cond_5

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorView:Landroid/view/View;

    .line 124
    new-instance v2, Landroid/graphics/Rect;

    .line 126
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    .line 128
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 130
    move-result v3

    .line 133
    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    .line 134
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 136
    move-result v4

    .line 139
    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 140
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 143
    move-result-object v2

    .line 146
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 147
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateSysUIState(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    .line 153
    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mDisplayId:I

    .line 155
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewBounds:Landroid/graphics/Rect;

    .line 157
    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 159
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 161
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    .line 163
    if-eqz v0, :cond_6

    .line 165
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    .line 167
    if-eqz v0, :cond_6

    .line 169
    :try_start_0
    invoke-interface {v0, v1, p0}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback;->onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_2

    .line 174
    :catch_0
    move-exception p0

    .line 175
    const-string v0, "WindowMagnificationConnectionImpl"

    .line 176
    const-string v1, "Failed to inform bounds changed"

    .line 178
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_6
    :goto_2
    return-void

    .line 183
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->applyTapExcludeRegion()V

    .line 186
    return-void

    .line 189
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->maybeRepositionButton()V

    .line 192
    return-void

    .line 195
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->applyTapExcludeRegion()V

    .line 198
    return-void

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 202
.end method
