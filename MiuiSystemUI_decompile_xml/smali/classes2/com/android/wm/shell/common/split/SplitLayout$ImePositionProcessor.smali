.class public final Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;


# instance fields
.field public mDimValue1:F

.field public mDimValue2:F

.field public final mDisplayId:I

.field public mEndImeTop:I

.field public mHasImeFocus:Z

.field public mImeShown:Z

.field public mLastDim1:F

.field public mLastDim2:F

.field public mLastYOffset:I

.field public mStartImeTop:I

.field public mTargetDim1:F

.field public mTargetDim2:F

.field public mTargetYOffset:I

.field public mYOffsetForIme:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onImeControlTargetChanged(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 9
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 16
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 18
    const-string p2, "onImeControlTargetChanged"

    .line 20
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, p2, v0, v0}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setInteractive(Ljava/lang/String;ZZ)V

    .line 23
    const/4 p1, 0x0

    .line 26
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 27
    invoke-interface {p2, p1, p1, p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V

    .line 29
    invoke-interface {p2, p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 32
    :cond_1
    return-void
    .line 35
.end method

.method public final onImeEndPositioning(IZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    .line 2
    if-ne p1, p3, :cond_1

    .line 4
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 6
    if-eqz p1, :cond_1

    .line 8
    if-eqz p2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->onProgress(F)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 20
    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 22
    :cond_1
    :goto_0
    return-void
    .line 25
.end method

.method public final onImePositionChanged(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    .line 2
    if-ne p1, p3, :cond_1

    .line 4
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    int-to-float p1, p2

    .line 11
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    .line 12
    int-to-float p3, p2

    .line 14
    sub-float/2addr p1, p3

    .line 15
    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    .line 16
    sub-int/2addr p3, p2

    .line 18
    int-to-float p2, p3

    .line 19
    div-float/2addr p1, p2

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->onProgress(F)V

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 24
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 26
    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 28
    :cond_1
    :goto_0
    return-void
    .line 31
.end method

.method public final onImeStartPositioning(IIIZZLandroid/view/SurfaceControl$Transaction;)I
    .locals 7

    .line 1
    const/4 p6, 0x0

    .line 2
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    .line 3
    if-ne p1, v0, :cond_11

    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 7
    iget-boolean v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 9
    if-nez v1, :cond_0

    .line 11
    goto/16 :goto_b

    .line 13
    :cond_0
    iget-object v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 15
    invoke-virtual {v1, v0}, Landroid/window/TaskOrganizer;->getImeTarget(I)Landroid/window/WindowContainerToken;

    .line 17
    move-result-object v0

    .line 20
    iget-object v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 21
    invoke-interface {v1, v0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    .line 23
    move-result v0

    .line 26
    const/4 v2, -0x1

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eq v0, v2, :cond_1

    .line 29
    move v4, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v4, p6

    .line 33
    :goto_0
    iput-boolean v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 34
    iget-object v5, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 36
    if-eqz p4, :cond_4

    .line 38
    if-eqz v4, :cond_4

    .line 40
    iget-object v4, v5, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 42
    if-eqz v4, :cond_3

    .line 44
    iget-boolean v4, v4, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    .line 46
    if-nez v4, :cond_2

    .line 48
    goto :goto_1

    .line 50
    :cond_2
    move v4, p6

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    :goto_1
    move v4, v3

    .line 53
    :goto_2
    iput-boolean v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 54
    :cond_4
    if-nez p4, :cond_5

    .line 56
    iget-object v4, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    .line 60
    move-result v4

    .line 63
    iget-object v6, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 64
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/common/DisplayImeController;->isImeShowing(I)Z

    .line 66
    move-result v4

    .line 69
    iget-boolean v6, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 70
    if-eq v4, v6, :cond_5

    .line 72
    if-ne v0, v2, :cond_5

    .line 74
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    .line 76
    const-string v2, "onImestartPositioning"

    .line 79
    invoke-virtual {v5, v2, v3, p6}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setInteractive(Ljava/lang/String;ZZ)V

    .line 81
    invoke-interface {v1, p6, p6, p1}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V

    .line 84
    invoke-interface {v1, p1}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 87
    :cond_5
    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 90
    if-nez v2, :cond_6

    .line 92
    return p6

    .line 94
    :cond_6
    if-eqz p4, :cond_7

    .line 95
    move v2, p2

    .line 97
    goto :goto_3

    .line 98
    :cond_7
    move v2, p3

    .line 99
    :goto_3
    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    .line 100
    if-eqz p4, :cond_8

    .line 102
    move p2, p3

    .line 104
    :cond_8
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    .line 105
    iput-boolean p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 107
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    .line 109
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim1:F

    .line 111
    iget-boolean p2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDimNonImeSide:Z

    .line 113
    const p3, 0x3e99999a    # 0.3f

    .line 115
    const/4 v2, 0x0

    .line 118
    if-ne v0, v3, :cond_9

    .line 119
    if-eqz p4, :cond_9

    .line 121
    if-eqz p2, :cond_9

    .line 123
    move v4, p3

    .line 125
    goto :goto_4

    .line 126
    :cond_9
    move v4, v2

    .line 127
    :goto_4
    iput v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim1:F

    .line 128
    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    .line 130
    iput v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim2:F

    .line 132
    if-nez v0, :cond_a

    .line 134
    if-eqz p4, :cond_a

    .line 136
    if-eqz p2, :cond_a

    .line 138
    goto :goto_5

    .line 140
    :cond_a
    move p3, v2

    .line 141
    :goto_5
    iput p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim2:F

    .line 142
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 144
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    .line 146
    if-ne v0, v3, :cond_b

    .line 148
    if-nez p5, :cond_b

    .line 150
    iget-object p2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 152
    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    .line 154
    move-result p2

    .line 157
    if-nez p2, :cond_b

    .line 158
    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 160
    if-eqz p2, :cond_b

    .line 162
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 164
    move-result-object p2

    .line 167
    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->adjustForIme()Z

    .line 168
    move-result p2

    .line 171
    if-eqz p2, :cond_b

    .line 172
    move p2, v3

    .line 174
    goto :goto_6

    .line 175
    :cond_b
    move p2, p6

    .line 176
    :goto_6
    if-eqz p2, :cond_c

    .line 177
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    .line 179
    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    .line 181
    sub-int/2addr p2, p3

    .line 183
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 184
    move-result p2

    .line 187
    iget-object p3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 188
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 190
    move-result p3

    .line 193
    int-to-float p3, p3

    .line 194
    const p4, 0x3f333333    # 0.7f

    .line 195
    mul-float/2addr p3, p4

    .line 198
    float-to-int p3, p3

    .line 199
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 200
    move-result p2

    .line 203
    neg-int p2, p2

    .line 204
    goto :goto_7

    .line 205
    :cond_c
    move p2, p6

    .line 206
    :goto_7
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    .line 207
    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    .line 209
    if-eq p2, p3, :cond_e

    .line 211
    if-nez p2, :cond_d

    .line 213
    invoke-interface {v1, p6, p6, p1}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V

    .line 215
    goto :goto_8

    .line 218
    :cond_d
    invoke-interface {v1, p6, p2, p1}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V

    .line 219
    :cond_e
    :goto_8
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 222
    if-eqz p1, :cond_10

    .line 224
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 226
    if-eqz p1, :cond_10

    .line 228
    if-eqz p5, :cond_f

    .line 230
    goto :goto_9

    .line 232
    :cond_f
    move p1, p6

    .line 233
    goto :goto_a

    .line 234
    :cond_10
    :goto_9
    move p1, v3

    .line 235
    :goto_a
    const-string p2, "onImeStartPositioning"

    .line 236
    invoke-virtual {v5, p2, p1, v3}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setInteractive(Ljava/lang/String;ZZ)V

    .line 238
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    .line 241
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    .line 243
    if-eq p1, p0, :cond_11

    .line 245
    move p6, v3

    .line 247
    :cond_11
    :goto_b
    return p6
    .line 248
.end method

.method public final onProgress(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim1:F

    .line 2
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim1:F

    .line 4
    invoke-static {v1, v0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 6
    move-result v0

    .line 9
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    .line 10
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim2:F

    .line 12
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim2:F

    .line 14
    invoke-static {v1, v0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 16
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    .line 20
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    .line 22
    int-to-float v0, v0

    .line 24
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    .line 25
    int-to-float v1, v1

    .line 27
    invoke-static {v1, v0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 28
    move-result p1

    .line 31
    float-to-int p1, p1

    .line 32
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 33
    return-void
    .line 35
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 5
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    .line 7
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    .line 9
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 11
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim1:F

    .line 14
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim1:F

    .line 16
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    .line 18
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetDim2:F

    .line 20
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastDim2:F

    .line 22
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    .line 24
    return-void
    .line 26
.end method
