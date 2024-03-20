.class public Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isOnLeft:Z

.field public mAlpha:I

.field public final mArrowWidth:I

.field public mBubbleSize:I

.field public mCallback:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$Callback;

.field public mFlyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

.field public final mFlyoutTouchListener:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;

.field public final mHideFlyout:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda1;

.field public mHostBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

.field public final mIconView:Landroid/widget/ImageView;

.field public final mMessageAnimName:Ljava/lang/String;

.field public final mMessageContainer:Landroid/view/ViewGroup;

.field public final mMessageView:Landroid/widget/TextView;

.field public final mMessageViewSize:Landroid/graphics/Point;

.field public final mPositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

.field public mRestingTranslationX:F

.field public final mShadowBounds:Landroid/graphics/RectF;

.field public final mShadowPaint:Landroid/graphics/Paint;

.field public final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 6
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mRestingTranslationX:F

    .line 9
    new-instance v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda1;

    .line 11
    invoke-direct {v2, p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;)V

    .line 13
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mHideFlyout:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda1;

    .line 16
    new-instance v2, Landroid/graphics/Point;

    .line 18
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 21
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    .line 24
    new-instance v2, Landroid/graphics/Paint;

    .line 26
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 28
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v4, Landroid/graphics/RectF;

    .line 33
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 35
    iput-object v4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    .line 38
    new-instance v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;

    .line 40
    invoke-direct {v4, p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;)V

    .line 42
    iput-object v4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mFlyoutTouchListener:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$1;

    .line 45
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 47
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mPositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 52
    move-result-object p1

    .line 55
    const p2, 0x7f0d018f    # @layout/miui_bubble_flyout 'res/layout/miui_bubble_flyout.xml'

    .line 56
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    const p1, 0x7f0a05c3    # @id/miui_bubble_flyout_text_container

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object p1

    .line 68
    check-cast p1, Landroid/view/ViewGroup;

    .line 69
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    .line 71
    const p2, 0x7f0a0194    # @id/bubble_message_title

    .line 73
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p2

    .line 79
    check-cast p2, Landroid/widget/TextView;

    .line 80
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mTitleView:Landroid/widget/TextView;

    .line 82
    const p2, 0x7f0a0193    # @id/bubble_message_icon

    .line 84
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p2

    .line 90
    check-cast p2, Landroid/widget/ImageView;

    .line 91
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mIconView:Landroid/widget/ImageView;

    .line 93
    const p2, 0x7f0a0192    # @id/bubble_message_content

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object p1

    .line 101
    check-cast p1, Landroid/widget/TextView;

    .line 102
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageView:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 106
    const/4 p1, 0x3

    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 110
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 119
    move-result-object p1

    .line 122
    const p2, 0x7f07014d    # @dimen/bubble_message_bg_arrow_h '6.36dp'

    .line 123
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 126
    move-result p1

    .line 129
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mArrowWidth:I

    .line 130
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 132
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    const/16 p1, 0xff

    .line 146
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mAlpha:I

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    .line 150
    const-string p2, "bubbles_message_show_"

    .line 152
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 157
    move-result p2

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 167
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageAnimName:Ljava/lang/String;

    .line 168
    return-void
    .line 170
.end method


# virtual methods
.method public final animateFlyoutCollapsed(Z)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-boolean v2, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    move-result-object v9

    .line 12
    if-eqz v2, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 16
    move-result v2

    .line 19
    int-to-float v3, v2

    .line 20
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 24
    move-result v2

    .line 27
    int-to-float v2, v2

    .line 28
    const/high16 v3, 0x40000000    # 2.0f

    .line 29
    div-float/2addr v2, v3

    .line 31
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    const-string v3, "animateFlyoutCollapsed: collapsed="

    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "\tthis="

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 56
    const-string v3, "MiuiBubbleMessageView"

    .line 57
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mRestingTranslationX:F

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 64
    move-result v3

    .line 67
    int-to-float v3, v3

    .line 68
    add-float/2addr v2, v3

    .line 69
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mRestingTranslationX:F

    .line 70
    const/16 v4, 0x14

    .line 72
    const v5, 0x3f19999a    # 0.6f

    .line 74
    const/4 v6, 0x2

    .line 77
    const/4 v7, -0x2

    .line 78
    const/4 v14, 0x0

    .line 79
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v0, v14}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->fixedWidthOrWrapContent(Z)V

    .line 82
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageAnimName:Ljava/lang/String;

    .line 85
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 90
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 91
    move-result-object v1

    .line 94
    const-string/jumbo v15, "width"

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 98
    move-result v8

    .line 101
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v16

    .line 105
    const-string/jumbo v17, "translationDeltaX"

    .line 106
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v18

    .line 112
    const-string v19, "alpha"

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 115
    move-result v8

    .line 118
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 119
    move-result-object v20

    .line 122
    const-string v21, "scaleX"

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleX()F

    .line 125
    move-result v8

    .line 128
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    move-result-object v22

    .line 132
    const-string v23, "scaleY"

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleY()F

    .line 135
    move-result v8

    .line 138
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 139
    move-result-object v24

    .line 142
    filled-new-array/range {v15 .. v24}, [Ljava/lang/Object;

    .line 143
    move-result-object v8

    .line 146
    invoke-interface {v1, v8}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 147
    move-result-object v1

    .line 150
    const-string/jumbo v8, "width"

    .line 151
    iget v10, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mArrowWidth:I

    .line 154
    iget-object v11, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    .line 156
    iget v11, v11, Landroid/graphics/Point;->y:I

    .line 158
    add-int/2addr v10, v11

    .line 160
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v10

    .line 164
    const-string v11, "alpha"

    .line 165
    const-string/jumbo v12, "translationDeltaX"

    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v13

    .line 173
    const-string v15, "scaleX"

    .line 174
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 176
    move-result-object v16

    .line 179
    const-string v17, "scaleY"

    .line 180
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 182
    move-result-object v18

    .line 185
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 186
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 188
    new-array v5, v6, [F

    .line 191
    fill-array-data v5, :array_0

    .line 193
    invoke-virtual {v4, v7, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 196
    move-result-object v4

    .line 199
    new-instance v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;

    .line 200
    invoke-direct {v5, v0, v2, v3, v14}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;FFI)V

    .line 202
    filled-new-array {v5}, [Lmiuix/animation/listener/TransitionListener;

    .line 205
    move-result-object v2

    .line 208
    invoke-virtual {v4, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 209
    move-result-object v14

    .line 212
    move-object v4, v8

    .line 213
    move-object v5, v10

    .line 214
    move-object v6, v11

    .line 215
    move-object v7, v9

    .line 216
    move-object v8, v12

    .line 217
    move-object v9, v13

    .line 218
    move-object v10, v15

    .line 219
    move-object/from16 v11, v16

    .line 220
    move-object/from16 v12, v17

    .line 222
    move-object/from16 v13, v18

    .line 224
    filled-new-array/range {v4 .. v14}, [Ljava/lang/Object;

    .line 226
    move-result-object v2

    .line 229
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 230
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mCallback:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$Callback;

    .line 233
    if-eqz v0, :cond_3

    .line 235
    check-cast v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$2;

    .line 237
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$2;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 239
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mHandler:Landroid/os/Handler;

    .line 241
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$2;->val$iconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 243
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mDelayAlpha:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$$ExternalSyntheticLambda0;

    .line 245
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    goto/16 :goto_2

    .line 250
    :cond_1
    iget v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mArrowWidth:I

    .line 252
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    .line 254
    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 256
    add-int/2addr v1, v8

    .line 258
    int-to-float v1, v1

    .line 259
    iget-boolean v8, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 260
    const/high16 v10, 0x41a00000    # 20.0f

    .line 262
    if-eqz v8, :cond_2

    .line 264
    sub-float v8, v3, v10

    .line 266
    goto :goto_1

    .line 268
    :cond_2
    sub-float v8, v2, v1

    .line 269
    add-float/2addr v8, v10

    .line 271
    :goto_1
    new-instance v10, Lmiuix/animation/controller/AnimState;

    .line 272
    const-string/jumbo v11, "show_start"

    .line 274
    invoke-direct {v10, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 277
    sget-object v11, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 280
    float-to-double v12, v8

    .line 282
    invoke-virtual {v10, v11, v12, v13}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 283
    move-result-object v8

    .line 286
    sget-object v10, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 287
    const-wide v11, 0x3fe3333340000000L    # 0.6000000238418579

    .line 289
    invoke-virtual {v8, v10, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 294
    move-result-object v8

    .line 297
    sget-object v10, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 298
    invoke-virtual {v8, v10, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 300
    move-result-object v8

    .line 303
    sget-object v10, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 304
    float-to-double v11, v1

    .line 306
    invoke-virtual {v8, v10, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 307
    move-result-object v1

    .line 310
    sget-object v8, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 311
    const-wide/16 v10, 0x0

    .line 313
    invoke-virtual {v1, v8, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 315
    move-result-object v1

    .line 318
    filled-new-array/range {p0 .. p0}, [Landroid/view/View;

    .line 319
    move-result-object v8

    .line 322
    invoke-static {v8}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 323
    move-result-object v8

    .line 326
    invoke-interface {v8}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 327
    move-result-object v8

    .line 330
    invoke-interface {v8, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 331
    invoke-virtual {v0, v14}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->fixedWidthOrWrapContent(Z)V

    .line 334
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 337
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 339
    new-array v8, v6, [F

    .line 342
    fill-array-data v8, :array_1

    .line 344
    invoke-virtual {v1, v7, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 347
    move-result-object v1

    .line 350
    new-instance v8, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 351
    new-array v10, v6, [F

    .line 353
    fill-array-data v10, :array_2

    .line 355
    invoke-direct {v8, v7, v10}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 358
    new-array v10, v14, [F

    .line 361
    const-string/jumbo v11, "translationDeltaX"

    .line 363
    invoke-virtual {v1, v11, v8, v10}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 366
    move-result-object v1

    .line 369
    new-instance v8, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 370
    new-array v10, v6, [F

    .line 372
    fill-array-data v10, :array_3

    .line 374
    invoke-direct {v8, v7, v10}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 377
    new-array v10, v14, [F

    .line 380
    const-string/jumbo v11, "width"

    .line 382
    invoke-virtual {v1, v11, v8, v10}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 385
    move-result-object v1

    .line 388
    new-instance v8, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 389
    new-array v10, v6, [F

    .line 391
    fill-array-data v10, :array_4

    .line 393
    invoke-direct {v8, v7, v10}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 396
    new-array v10, v14, [F

    .line 399
    const-string v11, "scaleX"

    .line 401
    invoke-virtual {v1, v11, v8, v10}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 403
    move-result-object v1

    .line 406
    new-instance v8, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 407
    new-array v6, v6, [F

    .line 409
    fill-array-data v6, :array_5

    .line 411
    invoke-direct {v8, v7, v6}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 414
    new-array v6, v14, [F

    .line 417
    const-string v7, "scaleY"

    .line 419
    invoke-virtual {v1, v7, v8, v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 421
    move-result-object v1

    .line 424
    new-instance v6, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;

    .line 425
    const/4 v7, 0x1

    .line 427
    invoke-direct {v6, v0, v2, v3, v7}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$2;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;FFI)V

    .line 428
    filled-new-array {v6}, [Lmiuix/animation/listener/TransitionListener;

    .line 431
    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 435
    move-result-object v25

    .line 438
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageAnimName:Ljava/lang/String;

    .line 439
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 441
    move-result-object v1

    .line 444
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 445
    move-result-object v1

    .line 448
    const-string/jumbo v2, "width"

    .line 449
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mArrowWidth:I

    .line 452
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    .line 454
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 456
    add-int/2addr v3, v6

    .line 458
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 459
    move-result-object v3

    .line 462
    const-string/jumbo v6, "translationDeltaX"

    .line 463
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    move-result-object v7

    .line 469
    const-string v8, "alpha"

    .line 470
    const-string v10, "scaleX"

    .line 472
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 474
    move-result-object v11

    .line 477
    const-string v12, "scaleY"

    .line 478
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 480
    move-result-object v13

    .line 483
    move-object v4, v2

    .line 484
    move-object v5, v3

    .line 485
    filled-new-array/range {v4 .. v13}, [Ljava/lang/Object;

    .line 486
    move-result-object v2

    .line 489
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 490
    move-result-object v1

    .line 493
    const-string/jumbo v15, "width"

    .line 494
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 497
    move-result v2

    .line 500
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    move-result-object v16

    .line 504
    const-string/jumbo v17, "translationDeltaX"

    .line 505
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    move-result-object v18

    .line 511
    const-string v19, "alpha"

    .line 512
    const/high16 v2, 0x3f800000    # 1.0f

    .line 514
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 516
    move-result-object v20

    .line 519
    const-string v21, "scaleX"

    .line 520
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 522
    move-result-object v22

    .line 525
    const-string v23, "scaleY"

    .line 526
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 528
    move-result-object v24

    .line 531
    filled-new-array/range {v15 .. v25}, [Ljava/lang/Object;

    .line 532
    move-result-object v2

    .line 535
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 536
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mCallback:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$Callback;

    .line 539
    if-eqz v0, :cond_3

    .line 541
    check-cast v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$2;

    .line 543
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$2;->val$iconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 545
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->resetEdgeAlpha(Landroid/view/View;)V

    .line 547
    :cond_3
    :goto_2
    return-void

    .line 550
    nop

    .line 551
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 552
    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    .line 560
    :array_2
    .array-data 4
        0x3f59999a    # 0.85f
        0x3e800000    # 0.25f
    .end array-data

    .line 568
    :array_3
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
    .end array-data

    .line 576
    :array_4
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    .line 584
    :array_5
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data
    .line 592
.end method

.method public final fixedWidthOrWrapContent(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, -0x2

    .line 6
    if-eqz p1, :cond_0

    .line 7
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 11
    move-result v2

    .line 14
    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageView:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object v0

    .line 22
    if-eqz p1, :cond_1

    .line 23
    move v2, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageView:Landroid/widget/TextView;

    .line 27
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    .line 29
    move-result v2

    .line 32
    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mTitleView:Landroid/widget/TextView;

    .line 35
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object v0

    .line 40
    if-eqz p1, :cond_2

    .line 41
    goto :goto_2

    .line 43
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mTitleView:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    .line 46
    move-result v1

    .line 49
    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    return-void
    .line 52
.end method

.method public final hideFlyout()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->hideFlyout()V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mFlyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 10
    const-string v1, "MiuiBubbleMessageView"

    .line 12
    const-string/jumbo v2, "startNotificationIntent: "

    .line 14
    if-nez v0, :cond_1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 35
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 39
    move-result-object v3

    .line 42
    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 43
    if-nez v3, :cond_2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 48
    move-result-object v0

    .line 51
    iget-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v4

    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 67
    move-result-object v0

    .line 70
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mHostBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 71
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 73
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-static {v3}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 80
    move-result-object v0

    .line 83
    const-string/jumbo v3, "\u70b9\u51fb\u8d34\u8fb9\u6c14\u6ce1"

    .line 84
    iput-object v3, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->enterWay:Ljava/lang/String;

    .line 87
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 89
    move-result-object v3

    .line 92
    invoke-virtual {v3, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFreeFormEnterEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mCallback:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$Callback;

    .line 101
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mHostBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 103
    check-cast v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$2;

    .line 105
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$2;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 107
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda0;

    .line 111
    const/4 v4, 0x2

    .line 113
    invoke-direct {v3, v4, v0, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 120
    move-result-object v0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    move-result-object p1

    .line 127
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mHostBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 128
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 130
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 132
    sget-object v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_FREEFORM:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 134
    if-ne v1, v2, :cond_3

    .line 136
    const/4 v1, 0x1

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    const/4 v1, 0x0

    .line 140
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    .line 146
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string/jumbo v3, "tip"

    .line 151
    if-eqz v1, :cond_4

    .line 154
    const-string v1, "621.1.3.1.21755"

    .line 156
    goto :goto_2

    .line 158
    :cond_4
    const-string v1, "621.2.2.1.21756"

    .line 159
    :goto_2
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "EVENT_NAME"

    .line 164
    const-string v3, "hide_window_notification_click"

    .line 166
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v1, "app_package_name"

    .line 171
    invoke-virtual {v2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string p0, "app_display_name"

    .line 176
    const-string v1, ""

    .line 178
    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v0, p1, v2}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    goto :goto_3

    .line 186
    :catch_1
    move-exception p0

    .line 187
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 188
    :goto_3
    return-void
    .line 191
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    const-string p1, "MiuiBubbleMessageView"

    .line 5
    const-string v0, "onConfigurationChanged: ....BubbleMessageView"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mTitleView:Landroid/widget/TextView;

    .line 16
    const v1, 0x7f06007d    # @color/bubble_message_title '#99000000'

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 21
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageView:Landroid/widget/TextView;

    .line 28
    const v1, 0x7f06007c    # @color/bubble_message_content '#cc000000'

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 33
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageView:Landroid/widget/TextView;

    .line 40
    const v1, 0x7f07015d    # @dimen/bubble_message_view_max_width '222.0dp'

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 45
    move-result p1

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 49
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    .line 52
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 55
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    .line 58
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 60
    if-eqz p0, :cond_0

    .line 62
    const p0, 0x7f0817cc    # @drawable/shape_bubble_message_bg_left 'res/drawable/shape_bubble_message_bg_left.xml'

    .line 64
    goto :goto_0

    .line 67
    :cond_0
    const p0, 0x7f0817cd    # @drawable/shape_bubble_message_bg_right 'res/drawable/shape_bubble_message_bg_right.xml'

    .line 68
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 71
    return-void
    .line 74
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    .line 4
    move-result v0

    .line 7
    const/high16 v1, 0x3f000000    # 0.5f

    .line 8
    cmpl-float v0, v0, v1

    .line 10
    if-lez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 16
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 21
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    .line 30
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 32
    const/high16 v2, 0x43960000    # 300.0f

    .line 34
    sub-float v5, v1, v2

    .line 36
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 38
    sub-float v6, v1, v2

    .line 40
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 42
    add-float v7, v1, v2

    .line 44
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 46
    add-float v8, v0, v2

    .line 48
    iget v9, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mAlpha:I

    .line 50
    move-object v4, p1

    .line 52
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    .line 53
    move-result v0

    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    .line 57
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v1

    .line 67
    const v2, 0x7f0707dd    # @dimen/miui_bubble_shadow_radius_big '120.0dp'

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    move-result v2

    .line 74
    const v4, 0x7f060079    # @color/bubble_app_shadow_big '#66000000'

    .line 75
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 78
    move-result v4

    .line 81
    const v5, 0x7f0707dc    # @dimen/miui_bubble_shadow_offset '2.0dp'

    .line 82
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    move-result v5

    .line 88
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    .line 89
    int-to-float v2, v2

    .line 91
    int-to-float v5, v5

    .line 92
    invoke-virtual {v6, v2, v3, v5, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 93
    const v2, 0x7f07015a    # @dimen/bubble_message_radius '22.0dp'

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 99
    move-result v2

    .line 102
    int-to-float v2, v2

    .line 103
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    .line 104
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    .line 106
    invoke-virtual {p1, v4, v2, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 108
    const v4, 0x7f0707de    # @dimen/miui_bubble_shadow_radius_small '10.0dp'

    .line 111
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    move-result v4

    .line 117
    const v6, 0x7f06007a    # @color/bubble_app_shadow_small '#1a000000'

    .line 118
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 121
    move-result v1

    .line 124
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    .line 125
    int-to-float v4, v4

    .line 127
    invoke-virtual {v6, v4, v3, v5, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 128
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    .line 131
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowPaint:Landroid/graphics/Paint;

    .line 133
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    return-void
    .line 144
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4
    const/high16 v0, 0x437f0000    # 255.0f

    .line 7
    mul-float/2addr p1, v0

    .line 9
    float-to-int p1, p1

    .line 10
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mAlpha:I

    .line 11
    return-void
    .line 13
.end method

.method public setCallback(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mCallback:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$Callback;

    .line 2
    return-void
    .line 4
.end method

.method public setUp(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    filled-new-array {p0}, [Landroid/view/View;

    .line 11
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_2

    .line 18
    aget-object v4, v0, v3

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    move-result-object v5

    .line 25
    instance-of v6, v5, Landroid/view/ViewGroup;

    .line 26
    if-eqz v6, :cond_1

    .line 28
    check-cast v5, Landroid/view/ViewGroup;

    .line 30
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    const/16 v0, 0x8

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 40
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mHostBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 43
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    const/4 v0, -0x2

    .line 47
    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48
    invoke-virtual {p1, p0, v2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51
    :cond_3
    :goto_1
    return-void
    .line 54
.end method

.method public setupFlyoutStarting(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mPositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 2
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 4
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mBubbleSize:I

    .line 6
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mFlyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->updateFlyoutMessage(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;)V

    .line 10
    new-instance p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {p1, p0, p2, p3}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 18
    return-void
    .line 21
.end method

.method public final updateFlyoutMessage(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mIconView:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->largeIcon:Landroid/graphics/drawable/Icon;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mIconView:Landroid/widget/ImageView;

    .line 16
    iget-object v1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->largeIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mIconView:Landroid/widget/ImageView;

    .line 24
    iget-object v1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mTitleView:Landroid/widget/TextView;

    .line 31
    iget-object v1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->title:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageView:Landroid/widget/TextView;

    .line 38
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
    .line 45
.end method

.method public final updateFlyoutX(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070153    # @dimen/bubble_message_gap '16.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 13
    if-eqz v1, :cond_0

    .line 15
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mBubbleSize:I

    .line 17
    int-to-float v1, v1

    .line 19
    add-float/2addr p1, v1

    .line 20
    int-to-float v0, v0

    .line 21
    add-float/2addr p1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 24
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    sub-float/2addr p1, v1

    .line 29
    int-to-float v0, v0

    .line 30
    sub-float/2addr p1, v0

    .line 31
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mRestingTranslationX:F

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 34
    return-void
    .line 37
.end method
