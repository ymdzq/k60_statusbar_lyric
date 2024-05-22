.class public Lcom/android/wm/shell/pip/tv/TvPipMenuView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;
.implements Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

.field public final mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field public final mArrowDown:Landroid/widget/ImageView;

.field public final mArrowElevation:I

.field public final mArrowLeft:Landroid/widget/ImageView;

.field public final mArrowRight:Landroid/widget/ImageView;

.field public final mArrowUp:Landroid/widget/ImageView;

.field public final mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

.field public mCurrentMenuMode:I

.field public final mCurrentPipBounds:Landroid/graphics/Rect;

.field public mCurrentPipGravity:I

.field public final mDimLayer:Landroid/view/View;

.field public final mEduTextContainer:Landroid/view/ViewGroup;

.field public final mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

.field public final mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMenuFrameView:Landroid/view/View;

.field public final mPipBackground:Landroid/view/View;

.field public final mPipFrameView:Landroid/view/View;

.field public final mPipMenuBorderWidth:I

.field public final mPipMenuFadeAnimationDuration:I

.field public final mPipMenuOuterSpace:I

.field public final mPipView:Landroid/view/View;

.field public final mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

.field public final mResizeAnimationDuration:I

.field public final mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 14
    const v0, 0x7f0d03cc    # @layout/tv_pip_menu 'res/layout/tv_pip_menu.xml'

    .line 16
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMainHandler:Landroid/os/Handler;

    .line 22
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 24
    const-class p3, Landroid/view/accessibility/AccessibilityManager;

    .line 26
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    move-result-object p3

    .line 31
    check-cast p3, Landroid/view/accessibility/AccessibilityManager;

    .line 32
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 34
    const p3, 0x7f0a0a04    # @id/tv_pip_menu_action_buttons

    .line 36
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p3

    .line 42
    check-cast p3, Lcom/android/internal/widget/RecyclerView;

    .line 43
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 45
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager;

    .line 47
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {v0, v2}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    .line 54
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 56
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 60
    iput-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 63
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 65
    iget-object v2, p4, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 67
    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Ljava/util/List;)V

    .line 69
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 72
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 74
    iget-object p3, p4, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mListeners:Ljava/util/List;

    .line 77
    check-cast p3, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    move-result p4

    .line 84
    if-nez p4, :cond_0

    .line 85
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    const p3, 0x7f0a0a0d    # @id/tv_pip_menu_frame

    .line 90
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object p3

    .line 96
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    .line 97
    const p3, 0x7f0a0a02    # @id/tv_pip_border

    .line 99
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object p3

    .line 105
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    .line 106
    const p3, 0x7f0a0a01    # @id/tv_pip

    .line 108
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object p3

    .line 114
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    .line 115
    const p3, 0x7f0a0a09    # @id/tv_pip_menu_background

    .line 117
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 120
    move-result-object p3

    .line 123
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipBackground:Landroid/view/View;

    .line 124
    const p3, 0x7f0a0a0a    # @id/tv_pip_menu_dim_layer

    .line 126
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object p3

    .line 132
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    .line 133
    const p3, 0x7f0a0a08    # @id/tv_pip_menu_arrow_up

    .line 135
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 138
    move-result-object p3

    .line 141
    check-cast p3, Landroid/widget/ImageView;

    .line 142
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    .line 144
    const p4, 0x7f0a0a07    # @id/tv_pip_menu_arrow_right

    .line 146
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object p4

    .line 152
    check-cast p4, Landroid/widget/ImageView;

    .line 153
    iput-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    .line 155
    const v0, 0x7f0a0a05    # @id/tv_pip_menu_arrow_down

    .line 157
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v0

    .line 163
    check-cast v0, Landroid/widget/ImageView;

    .line 164
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    .line 166
    const v2, 0x7f0a0a06    # @id/tv_pip_menu_arrow_left

    .line 168
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object v2

    .line 174
    check-cast v2, Landroid/widget/ImageView;

    .line 175
    iput-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    .line 177
    const v3, 0x7f0a0a0b    # @id/tv_pip_menu_done_button

    .line 179
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 182
    move-result-object v3

    .line 185
    check-cast v3, Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 186
    iput-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 190
    move-result-object p1

    .line 193
    const v3, 0x7f0b0046    # @integer/config_pipResizeAnimationDuration '425'

    .line 194
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 197
    move-result v3

    .line 200
    iput v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    .line 201
    const v3, 0x7f0b010c    # @integer/tv_window_menu_fade_animation_duration '500'

    .line 203
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 206
    move-result v3

    .line 209
    iput v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuFadeAnimationDuration:I

    .line 210
    const v3, 0x7f070e91    # @dimen/pip_menu_outer_space '24.0dp'

    .line 212
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 215
    move-result v3

    .line 218
    iput v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuOuterSpace:I

    .line 219
    const v3, 0x7f070e89    # @dimen/pip_menu_border_width '4.0dp'

    .line 221
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 224
    move-result v3

    .line 227
    iput v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    .line 228
    const v3, 0x7f070e85    # @dimen/pip_menu_arrow_elevation '1.0dp'

    .line 230
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 233
    move-result p1

    .line 236
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowElevation:I

    .line 237
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 241
    move-result-object p1

    .line 244
    const v3, 0x7f070e86    # @dimen/pip_menu_arrow_size '12.0dp'

    .line 245
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 248
    move-result p1

    .line 251
    new-instance v3, Landroid/graphics/Path;

    .line 252
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 254
    int-to-float v4, p1

    .line 257
    const/4 v5, 0x0

    .line 258
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    div-int/lit8 p1, p1, 0x2

    .line 262
    int-to-float p1, p1

    .line 264
    invoke-virtual {v3, p1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 268
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    .line 271
    invoke-direct {p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 273
    new-instance v5, Landroid/graphics/drawable/shapes/PathShape;

    .line 276
    invoke-direct {v5, v3, v4, v4}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 278
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 281
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 286
    move-result-object v3

    .line 289
    const v4, 0x7f060928    # @color/tv_pip_menu_arrow_color '#f1f3f4'

    .line 290
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 293
    move-result v3

    .line 296
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 297
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;

    .line 300
    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V

    .line 302
    invoke-virtual {p0, p4, v3, p1, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;Landroid/graphics/drawable/Drawable;I)V

    .line 305
    const/16 p4, 0x5a

    .line 308
    invoke-virtual {p0, v0, v3, p1, p4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;Landroid/graphics/drawable/Drawable;I)V

    .line 310
    const/16 p4, 0xb4

    .line 313
    invoke-virtual {p0, v2, v3, p1, p4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;Landroid/graphics/drawable/Drawable;I)V

    .line 315
    const/16 p4, 0x10e

    .line 318
    invoke-virtual {p0, p3, v3, p1, p4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;Landroid/graphics/drawable/Drawable;I)V

    .line 320
    new-instance p1, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 323
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 325
    invoke-direct {p1, p3, p2, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;)V

    .line 327
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 330
    const p2, 0x7f0a0a0c    # @id/tv_pip_menu_edu_text_container

    .line 332
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 335
    move-result-object p2

    .line 338
    check-cast p2, Landroid/view/ViewGroup;

    .line 339
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextContainer:Landroid/view/ViewGroup;

    .line 341
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 343
    return-void
    .line 346
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public final animateAlphaTo(FLandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    .line 2
    move-result v0

    .line 5
    cmpl-float v0, v0, p1

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 15
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    cmpl-float v1, p1, v1

    .line 20
    if-nez v1, :cond_1

    .line 22
    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/Interpolator;

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 29
    move-result-object v0

    .line 32
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuFadeAnimationDuration:I

    .line 33
    int-to-long v1, p0

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 36
    move-result-object p0

    .line 39
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda1;

    .line 40
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, p2, v1, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;IF)V

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 46
    move-result-object p0

    .line 49
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda1;

    .line 50
    const/4 v1, 0x1

    .line 52
    invoke-direct {v0, p2, v1, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;IF)V

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 56
    return-void
    .line 59
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_8

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 9
    move-result v0

    .line 12
    const/4 v2, 0x4

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onExitMoveMode()Z

    .line 18
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    .line 24
    :cond_0
    return v1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 28
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 36
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 41
    move-result v0

    .line 44
    const/16 v2, 0x42

    .line 45
    const/4 v3, 0x0

    .line 47
    if-eq v0, v2, :cond_5

    .line 48
    packed-switch v0, :pswitch_data_0

    .line 50
    goto :goto_2

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 54
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 56
    move-result v2

    .line 59
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onPipMovement(I)Z

    .line 60
    move-result v0

    .line 63
    if-nez v0, :cond_4

    .line 64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 66
    move-result p0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    goto :goto_0

    .line 72
    :cond_3
    move v1, v3

    .line 73
    :cond_4
    :goto_0
    return v1

    .line 74
    :cond_5
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 75
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onExitMoveMode()Z

    .line 77
    move-result v0

    .line 80
    if-nez v0, :cond_7

    .line 81
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 83
    move-result p0

    .line 86
    if-eqz p0, :cond_6

    .line 87
    goto :goto_1

    .line 89
    :cond_6
    move v1, v3

    .line 90
    :cond_7
    :goto_1
    return v1

    .line 91
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 92
    move-result p0

    .line 95
    return p0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 98
.end method

.method public final hideMovementHints()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    const-string v1, "TvPipMenuView"

    .line 8
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    const v2, -0x5574c8b0

    .line 14
    const/4 v3, 0x0

    .line 17
    const-string v4, "%s: hideMovementHints()"

    .line 18
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 23
    const/4 v1, 0x1

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    .line 29
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 52
    return-void
    .line 55
.end method

.method public final initArrow(Landroid/view/View;Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    int-to-float p2, p4

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 9
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowElevation:I

    .line 12
    int-to-float p0, p0

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    .line 15
    return-void
    .line 18
.end method

.method public final onActionsChanged(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 2
    invoke-virtual {v0, p3, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 4
    if-lez p1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 9
    add-int/2addr p3, p2

    .line 11
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    if-gez p1, :cond_1

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 18
    add-int/2addr p3, p2

    .line 20
    neg-int p1, p1

    .line 21
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 22
    :cond_1
    :goto_0
    return-void
    .line 25
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v1

    .line 19
    const-string v2, "TvPipMenuController"

    .line 20
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    const-string v2, "%s: onPipWindowFocusChanged - focused=%b"

    .line 26
    const v3, 0x107836fb

    .line 28
    const/16 v4, 0xc

    .line 31
    invoke-static {v0, v3, v4, v2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMenuIsFocused:Z

    .line 36
    if-nez p1, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuOpen()Z

    .line 40
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    .line 46
    :cond_1
    return-void
    .line 49
.end method

.method public final refocusButton(I)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    int-to-long v0, p1

    .line 6
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    move-result-object v0

    .line 12
    const-string v1, "TvPipMenuView"

    .line 13
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    const/4 v1, 0x4

    .line 19
    const-string v3, "%s: refocusButton, position: %d"

    .line 20
    const v4, 0x2154b64d

    .line 22
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 30
    move-result-object p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 39
    :cond_1
    return-void
    .line 42
.end method

.method public final setArrowA11yEnabled(ILandroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p2, p3}, Landroid/view/View;->setClickable(Z)V

    .line 2
    if-eqz p3, :cond_0

    .line 5
    new-instance p3, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda3;

    .line 7
    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;I)V

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final setMenuButtonsVisible(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v1

    .line 11
    const-string v2, "TvPipMenuView"

    .line 12
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    const/16 v2, 0xc

    .line 18
    const-string v3, "%s: showUserActions: %b"

    .line 20
    const v4, 0x7c915f4c

    .line 22
    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 36
    return-void
    .line 39
.end method

.method public final showMovementHints()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 7
    invoke-static {v0}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 17
    const-string v3, "TvPipMenuView"

    .line 19
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    const v3, 0x524dfba6

    .line 25
    const-string v4, "%s: showMovementHints(), position: %s"

    .line 28
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 33
    const/16 v2, 0x50

    .line 35
    and-int/2addr v0, v2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-ne v0, v2, :cond_1

    .line 39
    move v0, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v0, v1

    .line 43
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    const/4 v4, 0x0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    move v0, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v4

    .line 51
    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p0, v0, v5}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 54
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 57
    const/16 v5, 0x30

    .line 59
    and-int/2addr v0, v5

    .line 61
    if-ne v0, v5, :cond_3

    .line 62
    move v0, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move v0, v1

    .line 66
    :goto_2
    if-eqz v0, :cond_4

    .line 67
    move v0, v2

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    move v0, v4

    .line 71
    :goto_3
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p0, v0, v5}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 74
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 77
    const/4 v5, 0x5

    .line 79
    and-int/2addr v0, v5

    .line 80
    if-ne v0, v5, :cond_5

    .line 81
    move v0, v3

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    move v0, v1

    .line 85
    :goto_4
    if-eqz v0, :cond_6

    .line 86
    move v0, v2

    .line 88
    goto :goto_5

    .line 89
    :cond_6
    move v0, v4

    .line 90
    :goto_5
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p0, v0, v5}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 93
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 96
    const/4 v5, 0x3

    .line 98
    and-int/2addr v0, v5

    .line 99
    if-ne v0, v5, :cond_7

    .line 100
    goto :goto_6

    .line 102
    :cond_7
    move v3, v1

    .line 103
    :goto_6
    if-eqz v3, :cond_8

    .line 104
    move v0, v2

    .line 106
    goto :goto_7

    .line 107
    :cond_8
    move v0, v4

    .line 108
    :goto_7
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {p0, v0, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 114
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 116
    move-result v0

    .line 119
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    .line 120
    const/16 v5, 0x13

    .line 122
    invoke-virtual {p0, v5, v3, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(ILandroid/view/View;Z)V

    .line 124
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    .line 127
    const/16 v5, 0x14

    .line 129
    invoke-virtual {p0, v5, v3, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(ILandroid/view/View;Z)V

    .line 131
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    .line 134
    const/16 v5, 0x15

    .line 136
    invoke-virtual {p0, v5, v3, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(ILandroid/view/View;Z)V

    .line 138
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    .line 141
    const/16 v5, 0x16

    .line 143
    invoke-virtual {p0, v5, v3, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(ILandroid/view/View;Z)V

    .line 145
    if-eqz v0, :cond_9

    .line 148
    goto :goto_8

    .line 150
    :cond_9
    move v2, v4

    .line 151
    :goto_8
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 152
    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    .line 154
    if-eqz v0, :cond_a

    .line 157
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 164
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda2;

    .line 166
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 174
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 176
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 179
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestAccessibilityFocus()Z

    .line 181
    :cond_a
    return-void
    .line 184
.end method
