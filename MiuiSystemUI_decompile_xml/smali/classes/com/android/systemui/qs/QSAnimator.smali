.class public final Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mAllViews:Ljava/util/ArrayList;

.field public final mAnimatedQsViews:Ljava/util/ArrayList;

.field public mBrightnessOpacityAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mBrightnessTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mCurrentPage:I

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mHost:Lcom/android/systemui/qs/QSHost;

.field public mLastPosition:F

.field public mLastQQSTileHeight:I

.field public mNeedsAnimatorUpdate:Z

.field public final mNonFirstPageListener:Lcom/android/systemui/qs/QSAnimator$1;

.field public final mNonFirstPageQSAnimators:Landroid/util/SparseArray;

.field public mNonfirstPageAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mNumQuickTiles:I

.field public mOnFirstPage:Z

.field public mOnKeyguard:Z

.field public mOtherFirstPageTilesHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

.field public final mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field public mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

.field public mQQSTop:I

.field public mQQSTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

.field public final mQs:Lcom/android/systemui/plugins/qs/QS;

.field public final mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field public final mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field public final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field public mShowCollapsedOnKeyguard:Z

.field public final mTmpLoc1:[I

.field public final mTmpLoc2:[I

.field public mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mUpdateAnimators:Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSFragment;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/QSHost;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/QSExpansionPathInterpolator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 20
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/systemui/qs/QSAnimator;->mCurrentPage:I

    .line 23
    new-instance v1, Landroid/util/SparseArray;

    .line 25
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageQSAnimators:Landroid/util/SparseArray;

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 32
    const/4 v0, 0x2

    .line 34
    new-array v1, v0, [I

    .line 35
    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc1:[I

    .line 37
    new-array v0, v0, [I

    .line 39
    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc2:[I

    .line 41
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$1;

    .line 43
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    .line 45
    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/QSAnimator$1;

    .line 48
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;

    .line 50
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    .line 52
    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 61
    iput-object p4, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 63
    iput-object p5, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 65
    iput-object p6, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    .line 67
    iput-object p7, p0, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 69
    invoke-interface {p5, p0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->addCallback(Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;)V

    .line 71
    iget-object p2, p3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 74
    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 81
    move-result-object p1

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 85
    invoke-virtual {p3}, Lcom/android/systemui/util/ViewController;->isAttachedToWindow()Z

    .line 88
    move-result p1

    .line 91
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 94
    :cond_1
    invoke-virtual {p3}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 97
    move-result-object p1

    .line 100
    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    .line 101
    if-eqz p2, :cond_2

    .line 103
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    const-string p1, "QSAnimator"

    .line 110
    const-string p2, "QS Not using page layout"

    .line 112
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    iget-object p1, p3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 117
    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    .line 119
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    .line 121
    return-void
    .line 124
.end method


# virtual methods
.method public final addNonFirstPageAnimators(I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 6
    if-nez v2, :cond_0

    .line 8
    const/4 v2, 0x0

    .line 10
    goto/16 :goto_7

    .line 11
    :cond_0
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 13
    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 15
    iget-object v3, v0, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 18
    invoke-virtual {v3}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 20
    move-result-object v3

    .line 23
    iput-object v3, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 26
    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 28
    const v4, 0x3e19999a    # 0.15f

    .line 31
    iput v4, v3, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 34
    const v4, 0x3f333333    # 0.7f

    .line 36
    iput v4, v3, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 39
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 41
    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 43
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/systemui/qs/SideLabelTileLayout;

    .line 47
    iget-object v5, v0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 49
    invoke-interface {v5}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 51
    move-result-object v5

    .line 54
    iget-object v6, v0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    new-instance v7, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x1

    .line 66
    if-gez v1, :cond_1

    .line 67
    goto :goto_1

    .line 69
    :cond_1
    iget-object v10, v6, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v10

    .line 75
    check-cast v10, Lcom/android/systemui/qs/TileLayout;

    .line 76
    iget v11, v10, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 78
    iget v10, v10, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 80
    mul-int/2addr v11, v10

    .line 82
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    .line 83
    move-result v9

    .line 86
    mul-int v10, v1, v9

    .line 87
    add-int/lit8 v11, v1, 0x1

    .line 89
    mul-int/2addr v11, v9

    .line 91
    :goto_0
    if-ge v10, v11, :cond_2

    .line 92
    iget-object v9, v6, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result v9

    .line 99
    if-ge v10, v9, :cond_2

    .line 100
    iget-object v9, v6, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v9

    .line 107
    check-cast v9, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 108
    iget-object v9, v9, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 110
    invoke-interface {v9}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 112
    move-result-object v9

    .line 115
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v10, v10, 0x1

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 122
    move-result v6

    .line 125
    const-string v9, "QSAnimator"

    .line 126
    if-eqz v6, :cond_3

    .line 128
    iget-object v6, v0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 130
    invoke-interface {v6}, Lcom/android/systemui/qs/QSHost;->getSpecs()Ljava/util/List;

    .line 132
    move-result-object v7

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 136
    const-string v10, "Trying to create animators for empty page "

    .line 138
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v10, ". Tiles: "

    .line 146
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v6

    .line 157
    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_3
    const/4 v6, -0x1

    .line 161
    const/4 v10, 0x0

    .line 162
    move-object v11, v10

    .line 163
    move v10, v8

    .line 164
    move v8, v6

    .line 165
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 166
    move-result v12

    .line 169
    if-ge v10, v12, :cond_c

    .line 170
    iget-object v12, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 172
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v13

    .line 177
    check-cast v13, Ljava/lang/String;

    .line 178
    iget-object v12, v12, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 182
    move-result-object v12

    .line 185
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    move-result v14

    .line 189
    if-eqz v14, :cond_5

    .line 190
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    move-result-object v14

    .line 195
    check-cast v14, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 196
    iget-object v15, v14, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 198
    invoke-interface {v15}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 200
    move-result-object v15

    .line 203
    invoke-static {v15, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    move-result v15

    .line 207
    if-eqz v15, :cond_4

    .line 208
    iget-object v12, v14, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 210
    goto :goto_3

    .line 212
    :cond_5
    const/4 v12, 0x0

    .line 213
    :goto_3
    if-nez v12, :cond_6

    .line 214
    new-instance v12, Ljava/lang/StringBuilder;

    .line 216
    const-string/jumbo v13, "tileView is null, spec: "

    .line 218
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    move-result-object v13

    .line 227
    check-cast v13, Ljava/lang/String;

    .line 228
    invoke-static {v12, v13, v9}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v21, v4

    .line 233
    move-object/from16 v16, v5

    .line 235
    move-object/from16 v17, v7

    .line 237
    goto/16 :goto_6

    .line 239
    :cond_6
    iget-object v13, v0, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc2:[I

    .line 241
    invoke-virtual {v0, v12, v5, v13}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 243
    iget-object v13, v0, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc2:[I

    .line 246
    const/4 v14, 0x1

    .line 248
    aget v13, v13, v14

    .line 249
    iget v14, v0, Lcom/android/systemui/qs/QSAnimator;->mQQSTop:I

    .line 251
    iget v15, v4, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 253
    div-int v15, v10, v15

    .line 255
    move-object/from16 v16, v5

    .line 257
    iget v5, v4, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    .line 259
    const v17, 0x3f666666    # 0.9f

    .line 261
    mul-float v5, v5, v17

    .line 264
    const v17, 0x3dcccccd    # 0.1f

    .line 266
    add-float v5, v5, v17

    .line 269
    int-to-float v15, v15

    .line 271
    move-object/from16 v17, v7

    .line 272
    iget v7, v4, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 274
    int-to-float v7, v7

    .line 276
    mul-float/2addr v7, v5

    .line 277
    iget v5, v4, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    .line 278
    int-to-float v5, v5

    .line 280
    add-float/2addr v7, v5

    .line 281
    mul-float/2addr v7, v15

    .line 282
    float-to-int v5, v7

    .line 283
    add-int/2addr v5, v14

    .line 284
    sub-int/2addr v13, v5

    .line 285
    const/4 v5, 0x2

    .line 286
    new-array v7, v5, [F

    .line 287
    neg-int v13, v13

    .line 289
    int-to-float v13, v13

    .line 290
    const/4 v14, 0x0

    .line 291
    aput v13, v7, v14

    .line 292
    const/4 v13, 0x0

    .line 294
    const/4 v14, 0x1

    .line 295
    aput v13, v7, v14

    .line 296
    const-string/jumbo v13, "translationY"

    .line 298
    invoke-virtual {v2, v12, v13, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 301
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 304
    move-result v7

    .line 307
    iget v14, v0, Lcom/android/systemui/qs/QSAnimator;->mLastQQSTileHeight:I

    .line 308
    sub-int/2addr v7, v14

    .line 310
    div-int/2addr v7, v5

    .line 311
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 312
    move-result-object v14

    .line 315
    new-array v5, v5, [F

    .line 316
    neg-int v15, v7

    .line 318
    int-to-float v15, v15

    .line 319
    const/16 v18, 0x0

    .line 320
    aput v15, v5, v18

    .line 322
    const/16 v19, 0x0

    .line 324
    const/16 v20, 0x1

    .line 326
    aput v19, v5, v20

    .line 328
    invoke-virtual {v2, v14, v13, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 330
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryIcon()Landroid/view/View;

    .line 333
    move-result-object v5

    .line 336
    const/4 v14, 0x2

    .line 337
    move-object/from16 v21, v4

    .line 338
    new-array v4, v14, [F

    .line 340
    aput v15, v4, v18

    .line 342
    aput v19, v4, v20

    .line 344
    invoke-virtual {v2, v5, v13, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 346
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    .line 349
    move-result-object v4

    .line 352
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 353
    move-result v4

    .line 356
    if-nez v4, :cond_7

    .line 357
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    .line 359
    move-result-object v4

    .line 362
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 363
    move-result v4

    .line 366
    div-int/2addr v4, v14

    .line 367
    goto :goto_4

    .line 368
    :cond_7
    const/4 v4, 0x0

    .line 369
    :goto_4
    sub-int/2addr v7, v4

    .line 370
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    .line 371
    move-result-object v4

    .line 374
    new-array v5, v14, [F

    .line 375
    neg-int v7, v7

    .line 377
    int-to-float v7, v7

    .line 378
    const/4 v14, 0x0

    .line 379
    aput v7, v5, v14

    .line 380
    const/4 v7, 0x0

    .line 382
    const/4 v14, 0x1

    .line 383
    aput v7, v5, v14

    .line 384
    invoke-virtual {v2, v4, v13, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 386
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    .line 389
    move-result-object v4

    .line 392
    const/4 v5, 0x3

    .line 393
    new-array v5, v5, [F

    .line 394
    fill-array-data v5, :array_0

    .line 396
    const-string v7, "alpha"

    .line 399
    invoke-virtual {v2, v4, v7, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 401
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    .line 404
    move-result-object v4

    .line 407
    const/4 v5, 0x2

    .line 408
    new-array v13, v5, [F

    .line 409
    fill-array-data v13, :array_1

    .line 411
    invoke-virtual {v3, v4, v7, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 414
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 417
    move-result-object v4

    .line 420
    new-array v13, v5, [F

    .line 421
    fill-array-data v13, :array_2

    .line 423
    invoke-virtual {v3, v4, v7, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 426
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryIcon()Landroid/view/View;

    .line 429
    move-result-object v4

    .line 432
    new-array v5, v5, [F

    .line 433
    fill-array-data v5, :array_3

    .line 435
    invoke-virtual {v3, v4, v7, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 438
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getTop()I

    .line 441
    move-result v4

    .line 444
    if-eq v4, v6, :cond_8

    .line 445
    add-int/lit8 v8, v8, 0x1

    .line 447
    move v6, v4

    .line 449
    :cond_8
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 450
    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 452
    move-result-object v4

    .line 455
    invoke-interface {v4}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    .line 456
    move-result v4

    .line 459
    if-lt v10, v4, :cond_9

    .line 460
    const/4 v4, 0x2

    .line 462
    if-lt v8, v4, :cond_a

    .line 463
    new-array v4, v8, [F

    .line 465
    add-int/lit8 v5, v8, -0x1

    .line 467
    const/high16 v13, 0x3f800000    # 1.0f

    .line 469
    aput v13, v4, v5

    .line 471
    invoke-virtual {v2, v12, v7, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 473
    goto :goto_5

    .line 476
    :cond_9
    const/4 v4, 0x2

    .line 477
    :cond_a
    new-array v4, v4, [F

    .line 478
    fill-array-data v4, :array_4

    .line 480
    invoke-virtual {v2, v12, v7, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 483
    :goto_5
    if-nez v11, :cond_b

    .line 486
    new-instance v11, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 488
    iget v4, v0, Lcom/android/systemui/qs/QSAnimator;->mLastQQSTileHeight:I

    .line 490
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 492
    move-result v5

    .line 495
    invoke-direct {v11, v0, v4, v5}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;-><init>(Lcom/android/systemui/qs/TouchAnimator$Listener;II)V

    .line 496
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 499
    invoke-virtual {v4}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 501
    move-result-object v4

    .line 504
    iget-object v5, v11, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 505
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 507
    :cond_b
    iget-object v4, v11, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mViews:Ljava/util/List;

    .line 510
    check-cast v4, Ljava/util/ArrayList;

    .line 512
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    const/4 v4, 0x1

    .line 517
    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 518
    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 521
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    .line 531
    move-result-object v5

    .line 534
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 538
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 540
    move-result-object v5

    .line 543
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 547
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryIcon()Landroid/view/View;

    .line 549
    move-result-object v5

    .line 552
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v4, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 556
    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    .line 558
    move-result-object v5

    .line 561
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 565
    move-object/from16 v5, v16

    .line 567
    move-object/from16 v7, v17

    .line 569
    move-object/from16 v4, v21

    .line 571
    goto/16 :goto_2

    .line 573
    :cond_c
    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 575
    move-result-object v3

    .line 578
    const/4 v4, 0x2

    .line 579
    new-array v4, v4, [F

    .line 580
    fill-array-data v4, :array_5

    .line 582
    const-string v5, "position"

    .line 585
    invoke-virtual {v2, v3, v5, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 587
    new-instance v3, Landroid/util/Pair;

    .line 590
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 592
    move-result-object v2

    .line 595
    invoke-direct {v3, v11, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    move-object v2, v3

    .line 599
    :goto_7
    if-eqz v2, :cond_d

    .line 600
    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageQSAnimators:Landroid/util/SparseArray;

    .line 602
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    :cond_d
    return-void

    .line 607
    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 608
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 618
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 626
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 634
    :array_4
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 642
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 650
.end method

.method public final clearAnimationState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 11
    const/4 v1, 0x0

    .line 14
    move v3, v1

    .line 15
    :goto_0
    if-ge v3, v0, :cond_1

    .line 16
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 23
    check-cast v4, Landroid/view/View;

    .line 24
    const/high16 v5, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 28
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 31
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 34
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    .line 37
    instance-of v5, v4, Lcom/android/systemui/qs/SideLabelTileLayout;

    .line 40
    if-eqz v5, :cond_0

    .line 42
    check-cast v4, Lcom/android/systemui/qs/SideLabelTileLayout;

    .line 44
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 46
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 49
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 55
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->resetViewsHeights()V

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOtherFirstPageTilesHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 62
    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->resetViewsHeights()V

    .line 66
    :cond_3
    move v0, v1

    .line 69
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageQSAnimators:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 72
    move-result v2

    .line 75
    if-ge v0, v2, :cond_4

    .line 76
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageQSAnimators:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 83
    check-cast v2, Landroid/util/Pair;

    .line 84
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    check-cast v2, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 88
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->resetViewsHeights()V

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 93
    goto :goto_1

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 98
    move-result v0

    .line 101
    move v2, v1

    .line 102
    :goto_2
    if-ge v2, v0, :cond_5

    .line 103
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v3

    .line 110
    check-cast v3, Landroid/view/View;

    .line 111
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 116
    goto :goto_2

    .line 118
    :cond_5
    return-void
    .line 119
.end method

.method public final getRelativePosition(Landroid/view/View;Landroid/view/View;[I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 8
    add-int/2addr v0, v1

    .line 9
    aput v0, p3, v1

    .line 10
    const/4 v0, 0x1

    .line 12
    aput v1, p3, v0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt(Landroid/view/View;Landroid/view/View;[I)V

    .line 15
    return-void
    .line 18
.end method

.method public final getRelativePositionInt(Landroid/view/View;Landroid/view/View;[I)V
    .locals 4

    .line 1
    if-eq p1, p2, :cond_3

    .line 2
    if-nez p1, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 10
    const-class v1, Lcom/android/systemui/qs/SideLabelTileLayout;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    aget v0, p3, v2

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 23
    move-result v3

    .line 26
    add-int/2addr v3, v0

    .line 27
    aput v3, p3, v2

    .line 28
    aget v0, p3, v1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 32
    move-result v3

    .line 35
    add-int/2addr v3, v0

    .line 36
    aput v3, p3, v1

    .line 37
    :cond_1
    instance-of v0, p1, Lcom/android/systemui/qs/PagedTileLayout;

    .line 39
    if-nez v0, :cond_2

    .line 41
    aget v0, p3, v2

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 45
    move-result v3

    .line 48
    sub-int/2addr v0, v3

    .line 49
    aput v0, p3, v2

    .line 50
    aget v0, p3, v1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 54
    move-result v2

    .line 57
    sub-int/2addr v0, v2

    .line 58
    aput v0, p3, v1

    .line 59
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 61
    move-result-object p1

    .line 64
    check-cast p1, Landroid/view/View;

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt(Landroid/view/View;Landroid/view/View;[I)V

    .line 67
    :cond_3
    :goto_0
    return-void
    .line 70
.end method

.method public final onAnimationAtEnd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 2
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_0

    .line 16
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Landroid/view/View;

    .line 24
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    return-void
    .line 32
.end method

.method public final onAnimationAtStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 5
    return-void
    .line 8
.end method

.method public final onAnimationStarted()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Landroid/view/View;

    .line 24
    const/4 v3, 0x4

    .line 26
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    return-void
    .line 33
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-ne p2, p6, :cond_1

    .line 2
    if-ne p3, p7, :cond_1

    .line 4
    if-ne p4, p8, :cond_1

    .line 6
    if-eq p5, p9, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;

    .line 18
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    :cond_2
    return-void
    .line 23
.end method

.method public final onPageChanged(IZ)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mCurrentPage:I

    .line 5
    if-eq v0, p1, :cond_0

    .line 7
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mCurrentPage:I

    .line 9
    if-nez p2, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageQSAnimators:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimator;->addNonFirstPageAnimators(I)V

    .line 21
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 24
    if-ne p1, p2, :cond_1

    .line 26
    return-void

    .line 28
    :cond_1
    if-nez p2, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 31
    :cond_2
    iput-boolean p2, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 34
    return-void
    .line 36
.end method

.method public final onTilesChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;

    .line 4
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 2
    return-void
    .line 5
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 2
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->removeCallback(Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;)V

    .line 4
    return-void
    .line 7
.end method

.method public final setPosition(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 9
    if-nez v0, :cond_1

    .line 11
    return-void

    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    if-eqz v0, :cond_3

    .line 18
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    .line 20
    if-eqz p1, :cond_2

    .line 22
    const/4 p1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move p1, v1

    .line 26
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 29
    if-eqz v0, :cond_4

    .line 31
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 38
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 43
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 48
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOtherFirstPageTilesHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 53
    if-eqz v0, :cond_5

    .line 55
    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 57
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 59
    goto :goto_1

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 63
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 65
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 68
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageQSAnimators:Landroid/util/SparseArray;

    .line 69
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 71
    move-result v1

    .line 74
    if-ge v0, v1, :cond_7

    .line 75
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageQSAnimators:Landroid/util/SparseArray;

    .line 77
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 82
    check-cast v1, Landroid/util/Pair;

    .line 83
    if-eqz v1, :cond_6

    .line 85
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 87
    check-cast v2, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 89
    iget-object v2, v2, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 91
    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 93
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 96
    check-cast v1, Lcom/android/systemui/qs/TouchAnimator;

    .line 98
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 100
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 103
    goto :goto_2

    .line 105
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 106
    if-eqz v0, :cond_8

    .line 108
    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 110
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 112
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 115
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 120
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessOpacityAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 125
    if-eqz v0, :cond_9

    .line 127
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 129
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 132
    if-eqz p0, :cond_a

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 136
    :cond_a
    return-void
    .line 139
.end method

.method public final translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p3, p6}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 2
    const/4 v0, 0x0

    .line 5
    aget v1, p6, v0

    .line 6
    const/4 v2, 0x1

    .line 8
    aget v3, p6, v2

    .line 9
    invoke-virtual {p0, p2, p3, p6}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 11
    aget p3, p6, v0

    .line 14
    aget p6, p6, v2

    .line 16
    sub-int/2addr p3, v1

    .line 18
    sub-int/2addr p3, p4

    .line 19
    const/4 p4, 0x2

    .line 20
    new-array v1, p4, [F

    .line 21
    const/4 v4, 0x0

    .line 23
    aput v4, v1, v0

    .line 24
    int-to-float v5, p3

    .line 26
    aput v5, v1, v2

    .line 27
    const-string/jumbo v5, "translationX"

    .line 29
    invoke-virtual {p7, p1, v5, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 32
    new-array v1, p4, [F

    .line 35
    neg-int p3, p3

    .line 37
    int-to-float p3, p3

    .line 38
    aput p3, v1, v0

    .line 39
    aput v4, v1, v2

    .line 41
    invoke-virtual {p7, p2, v5, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 43
    sub-int/2addr p6, v3

    .line 46
    sub-int/2addr p6, p5

    .line 47
    new-array p3, p4, [F

    .line 48
    aput v4, p3, v0

    .line 50
    int-to-float p5, p6

    .line 52
    aput p5, p3, v2

    .line 53
    const-string/jumbo p5, "translationY"

    .line 55
    invoke-virtual {p9, p1, p5, p3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 58
    new-array p3, p4, [F

    .line 61
    neg-int p4, p6

    .line 63
    int-to-float p4, p4

    .line 64
    aput p4, p3, v0

    .line 65
    aput v4, p3, v2

    .line 67
    invoke-virtual {p8, p2, p5, p3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 69
    iget-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
    .line 82
.end method

.method public final updateAnimators()V
    .locals 32

    .line 1
    move-object/from16 v10, p0

    .line 2
    const/4 v11, 0x0

    .line 4
    iput-boolean v11, v10, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 5
    new-instance v12, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 7
    invoke-direct {v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 9
    new-instance v13, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 12
    invoke-direct {v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 14
    new-instance v14, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 17
    invoke-direct {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 19
    new-instance v15, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 22
    invoke-direct {v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 24
    new-instance v9, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 27
    invoke-direct {v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 29
    new-instance v8, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 32
    invoke-direct {v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 34
    sget-object v0, Lcom/android/app/animation/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    .line 37
    iput-object v0, v8, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 39
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 41
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->getTiles()Ljava/util/Collection;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 47
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageQSAnimators:Landroid/util/SparseArray;

    .line 50
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 52
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 62
    const/4 v7, 0x0

    .line 65
    iput-object v7, v10, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 66
    iput-object v7, v10, Lcom/android/systemui/qs/QSAnimator;->mOtherFirstPageTilesHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 68
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 70
    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    .line 72
    move-result v1

    .line 75
    iput v1, v10, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 76
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 78
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 80
    move-result-object v6

    .line 83
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 84
    move-object v2, v6

    .line 86
    check-cast v2, Landroid/view/View;

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iput v11, v10, Lcom/android/systemui/qs/QSAnimator;->mLastQQSTileHeight:I

    .line 92
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 94
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 98
    move-result v1

    .line 101
    const/4 v5, 0x1

    .line 102
    xor-int/2addr v1, v5

    .line 103
    const-string/jumbo v2, "translationY"

    .line 104
    const/16 v16, 0x0

    .line 107
    const-string v3, "alpha"

    .line 109
    if-eqz v1, :cond_e

    .line 111
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object v18

    .line 116
    move v1, v11

    .line 117
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result v0

    .line 121
    if-eqz v0, :cond_d

    .line 122
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 127
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 128
    iget-object v4, v10, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 130
    iget-object v4, v4, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v4

    .line 137
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v20

    .line 141
    if-eqz v20, :cond_1

    .line 142
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v20

    .line 147
    move-object/from16 v7, v20

    .line 148
    check-cast v7, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 150
    iget-object v11, v7, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 152
    if-ne v11, v0, :cond_0

    .line 154
    iget-object v4, v7, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 156
    move-object v11, v4

    .line 158
    goto :goto_2

    .line 159
    :cond_0
    const/4 v7, 0x0

    .line 160
    const/4 v11, 0x0

    .line 161
    goto :goto_1

    .line 162
    :cond_1
    const/4 v11, 0x0

    .line 163
    :goto_2
    if-nez v11, :cond_2

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v7, "tileView is null "

    .line 168
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 177
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 184
    const-string v4, "QSAnimator"

    .line 185
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move/from16 v21, v1

    .line 190
    goto :goto_5

    .line 192
    :cond_2
    iget-object v4, v10, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 193
    if-eqz v4, :cond_3

    .line 195
    invoke-virtual {v4}, Lcom/android/systemui/qs/PagedTileLayout;->getNumTilesFirstPage()I

    .line 197
    move-result v4

    .line 200
    if-lt v1, v4, :cond_3

    .line 201
    goto/16 :goto_9

    .line 203
    :cond_3
    invoke-virtual {v11}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 205
    move-result-object v4

    .line 208
    invoke-virtual {v4}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    .line 209
    iget-object v4, v10, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 212
    invoke-interface {v4}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 214
    move-result-object v7

    .line 217
    iget-object v4, v10, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 218
    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 220
    move-result-object v4

    .line 223
    invoke-interface {v4}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    .line 224
    move-result v4

    .line 227
    if-ge v1, v4, :cond_9

    .line 228
    iget-object v4, v10, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 230
    iget-object v4, v4, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    .line 232
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 234
    move-result-object v4

    .line 237
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    move-result v21

    .line 241
    if-eqz v21, :cond_5

    .line 242
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    move-result-object v21

    .line 247
    move-object/from16 v5, v21

    .line 248
    check-cast v5, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 250
    move/from16 v21, v1

    .line 252
    iget-object v1, v5, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 254
    if-ne v1, v0, :cond_4

    .line 256
    iget-object v0, v5, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 258
    move-object v5, v0

    .line 260
    goto :goto_4

    .line 261
    :cond_4
    move/from16 v1, v21

    .line 262
    const/4 v5, 0x1

    .line 264
    goto :goto_3

    .line 265
    :cond_5
    move/from16 v21, v1

    .line 266
    const/4 v5, 0x0

    .line 268
    :goto_4
    if-nez v5, :cond_6

    .line 269
    :goto_5
    move/from16 v1, v21

    .line 271
    :goto_6
    const/4 v5, 0x1

    .line 273
    const/4 v7, 0x0

    .line 274
    const/4 v11, 0x0

    .line 275
    goto/16 :goto_0

    .line 276
    :cond_6
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc1:[I

    .line 278
    invoke-virtual {v10, v5, v7, v0}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 280
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc2:[I

    .line 283
    invoke-virtual {v10, v11, v7, v0}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 285
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc2:[I

    .line 288
    const/16 v22, 0x1

    .line 290
    aget v1, v0, v22

    .line 292
    iget-object v4, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc1:[I

    .line 294
    aget v23, v4, v22

    .line 296
    sub-int v1, v1, v23

    .line 298
    const/16 v20, 0x0

    .line 300
    aget v0, v0, v20

    .line 302
    aget v4, v4, v20

    .line 304
    sub-int v4, v0, v4

    .line 306
    move-object/from16 v17, v3

    .line 308
    const/4 v0, 0x2

    .line 310
    new-array v3, v0, [F

    .line 311
    aput v16, v3, v20

    .line 313
    int-to-float v0, v1

    .line 315
    aput v0, v3, v22

    .line 316
    invoke-virtual {v14, v5, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 318
    const/4 v0, 0x2

    .line 321
    new-array v3, v0, [F

    .line 322
    neg-int v0, v1

    .line 324
    int-to-float v0, v0

    .line 325
    aput v0, v3, v20

    .line 326
    aput v16, v3, v22

    .line 328
    invoke-virtual {v13, v11, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 330
    const/4 v0, 0x2

    .line 333
    new-array v3, v0, [F

    .line 334
    aput v16, v3, v20

    .line 336
    int-to-float v0, v4

    .line 338
    aput v0, v3, v22

    .line 339
    const-string/jumbo v0, "translationX"

    .line 341
    invoke-virtual {v15, v5, v0, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 344
    move/from16 v23, v1

    .line 347
    const/4 v3, 0x2

    .line 349
    new-array v1, v3, [F

    .line 350
    neg-int v3, v4

    .line 352
    int-to-float v3, v3

    .line 353
    aput v3, v1, v20

    .line 354
    aput v16, v1, v22

    .line 356
    invoke-virtual {v15, v11, v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 358
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 361
    if-nez v0, :cond_7

    .line 363
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 365
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 367
    move-result v1

    .line 370
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 371
    move-result v3

    .line 374
    invoke-direct {v0, v10, v1, v3}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;-><init>(Lcom/android/systemui/qs/TouchAnimator$Listener;II)V

    .line 375
    iput-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 378
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 380
    move-result v0

    .line 383
    iput v0, v10, Lcom/android/systemui/qs/QSAnimator;->mLastQQSTileHeight:I

    .line 384
    :cond_7
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 386
    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mViews:Ljava/util/List;

    .line 388
    check-cast v0, Ljava/util/ArrayList;

    .line 390
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v5}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 395
    move-result-object v1

    .line 398
    invoke-virtual {v11}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 399
    move-result-object v3

    .line 402
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc1:[I

    .line 403
    move-object/from16 v24, v0

    .line 405
    const/16 v25, 0x2

    .line 407
    move-object/from16 v0, p0

    .line 409
    move-object/from16 v26, v12

    .line 411
    move/from16 v12, v21

    .line 413
    move/from16 v21, v23

    .line 415
    move-object/from16 v27, v2

    .line 417
    move-object v2, v3

    .line 419
    move/from16 v23, v12

    .line 420
    move-object/from16 v28, v17

    .line 422
    move/from16 v12, v25

    .line 424
    move-object v3, v7

    .line 426
    move/from16 v17, v4

    .line 427
    move-object/from16 v19, v5

    .line 429
    move/from16 v5, v21

    .line 431
    move-object/from16 v29, v6

    .line 433
    move-object/from16 v6, v24

    .line 435
    move-object/from16 v22, v7

    .line 437
    move-object v7, v15

    .line 439
    move-object/from16 v30, v8

    .line 440
    move-object v8, v13

    .line 442
    move-object/from16 v31, v9

    .line 443
    move-object v9, v14

    .line 445
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 446
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    .line 449
    move-result-object v1

    .line 452
    invoke-virtual {v11}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    .line 453
    move-result-object v2

    .line 456
    iget-object v6, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc1:[I

    .line 457
    move-object/from16 v3, v22

    .line 459
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 461
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryIcon()Landroid/view/View;

    .line 464
    move-result-object v1

    .line 467
    invoke-virtual {v11}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryIcon()Landroid/view/View;

    .line 468
    move-result-object v2

    .line 471
    iget-object v6, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc1:[I

    .line 472
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 474
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    .line 477
    move-result-object v0

    .line 480
    new-array v1, v12, [F

    .line 481
    fill-array-data v1, :array_0

    .line 483
    move-object/from16 v3, v28

    .line 486
    move-object/from16 v2, v30

    .line 488
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 490
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    .line 493
    move-result-object v0

    .line 496
    new-array v1, v12, [F

    .line 497
    fill-array-data v1, :array_1

    .line 499
    move-object/from16 v4, v31

    .line 502
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 504
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    .line 507
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 512
    move-object/from16 v1, v19

    .line 514
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 519
    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    .line 521
    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    move/from16 v0, v23

    .line 528
    :cond_8
    move-object/from16 v7, v26

    .line 530
    move-object/from16 v5, v27

    .line 532
    goto/16 :goto_8

    .line 534
    :cond_9
    move/from16 v23, v1

    .line 536
    move-object/from16 v27, v2

    .line 538
    move-object/from16 v29, v6

    .line 540
    move-object/from16 v22, v7

    .line 542
    move-object v2, v8

    .line 544
    move-object v4, v9

    .line 545
    move-object/from16 v26, v12

    .line 546
    const/4 v12, 0x2

    .line 548
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 549
    if-nez v0, :cond_a

    .line 551
    move/from16 v0, v23

    .line 553
    const/4 v1, 0x0

    .line 555
    const/4 v5, 0x1

    .line 556
    goto :goto_7

    .line 557
    :cond_a
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    .line 558
    move-result v0

    .line 561
    iget v1, v10, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 562
    add-int/2addr v1, v0

    .line 564
    const/4 v5, 0x1

    .line 565
    sub-int/2addr v1, v5

    .line 566
    div-int/2addr v1, v0

    .line 567
    mul-int/2addr v1, v0

    .line 568
    move/from16 v0, v23

    .line 569
    if-ge v0, v1, :cond_b

    .line 571
    move v1, v5

    .line 573
    goto :goto_7

    .line 574
    :cond_b
    const/4 v1, 0x0

    .line 575
    :goto_7
    if-nez v1, :cond_8

    .line 576
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 578
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 580
    move-result-object v1

    .line 583
    check-cast v1, Lcom/android/systemui/qs/SideLabelTileLayout;

    .line 584
    iget-object v6, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc1:[I

    .line 586
    move-object/from16 v7, v22

    .line 588
    invoke-virtual {v10, v1, v7, v6}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 590
    iget-object v6, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc1:[I

    .line 593
    aget v6, v6, v5

    .line 595
    iput v6, v10, Lcom/android/systemui/qs/QSAnimator;->mQQSTop:I

    .line 597
    iget-object v6, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc2:[I

    .line 599
    invoke-virtual {v10, v11, v7, v6}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 601
    iget-object v6, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc2:[I

    .line 604
    aget v6, v6, v5

    .line 606
    iget-object v7, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc1:[I

    .line 608
    aget v7, v7, v5

    .line 610
    iget v8, v1, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 612
    div-int v8, v0, v8

    .line 614
    iget v9, v1, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    .line 616
    const v5, 0x3f666666    # 0.9f

    .line 618
    mul-float/2addr v9, v5

    .line 621
    const v17, 0x3dcccccd    # 0.1f

    .line 622
    add-float v9, v9, v17

    .line 625
    int-to-float v8, v8

    .line 627
    iget v5, v1, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 628
    int-to-float v5, v5

    .line 630
    mul-float/2addr v5, v9

    .line 631
    iget v1, v1, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    .line 632
    int-to-float v1, v1

    .line 634
    add-float/2addr v5, v1

    .line 635
    mul-float/2addr v5, v8

    .line 636
    float-to-int v1, v5

    .line 637
    add-int/2addr v1, v7

    .line 638
    sub-int/2addr v6, v1

    .line 639
    new-array v1, v12, [F

    .line 640
    neg-int v5, v6

    .line 642
    int-to-float v5, v5

    .line 643
    const/4 v6, 0x0

    .line 644
    aput v5, v1, v6

    .line 645
    const/4 v5, 0x1

    .line 647
    aput v16, v1, v5

    .line 648
    move-object/from16 v5, v27

    .line 650
    invoke-virtual {v13, v11, v5, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 652
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mOtherFirstPageTilesHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 655
    if-nez v1, :cond_c

    .line 657
    new-instance v1, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 659
    iget v6, v10, Lcom/android/systemui/qs/QSAnimator;->mLastQQSTileHeight:I

    .line 661
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 663
    move-result v7

    .line 666
    invoke-direct {v1, v10, v6, v7}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;-><init>(Lcom/android/systemui/qs/TouchAnimator$Listener;II)V

    .line 667
    iput-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mOtherFirstPageTilesHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 670
    :cond_c
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mOtherFirstPageTilesHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 672
    iget-object v1, v1, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mViews:Ljava/util/List;

    .line 674
    check-cast v1, Ljava/util/ArrayList;

    .line 676
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    const/4 v1, 0x1

    .line 681
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 682
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 685
    invoke-virtual {v11}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    .line 688
    move-result-object v1

    .line 691
    new-array v6, v12, [F

    .line 692
    fill-array-data v6, :array_2

    .line 694
    move-object/from16 v7, v26

    .line 697
    invoke-virtual {v7, v1, v3, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 699
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 702
    invoke-virtual {v11}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    .line 704
    move-result-object v6

    .line 707
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :goto_8
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 711
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v1, v0, 0x1

    .line 716
    move-object v8, v2

    .line 718
    move-object v9, v4

    .line 719
    move-object v2, v5

    .line 720
    move-object v12, v7

    .line 721
    move-object/from16 v6, v29

    .line 722
    goto/16 :goto_6

    .line 724
    :cond_d
    :goto_9
    move-object v5, v2

    .line 726
    move-object/from16 v29, v6

    .line 727
    move-object v2, v8

    .line 729
    move-object v4, v9

    .line 730
    move-object v7, v12

    .line 731
    const/4 v12, 0x2

    .line 732
    iget v0, v10, Lcom/android/systemui/qs/QSAnimator;->mCurrentPage:I

    .line 733
    if-eqz v0, :cond_f

    .line 735
    invoke-virtual {v10, v0}, Lcom/android/systemui/qs/QSAnimator;->addNonFirstPageAnimators(I)V

    .line 737
    goto :goto_a

    .line 740
    :cond_e
    move-object v5, v2

    .line 741
    move-object/from16 v29, v6

    .line 742
    move-object v2, v8

    .line 744
    move-object v4, v9

    .line 745
    move-object v7, v12

    .line 746
    const/4 v12, 0x2

    .line 747
    :cond_f
    :goto_a
    const/4 v0, 0x0

    .line 748
    iput-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mBrightnessTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 749
    iput-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mBrightnessOpacityAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 751
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 753
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 755
    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    .line 757
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    .line 759
    move-result-object v0

    .line 762
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 763
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 765
    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    .line 767
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    .line 769
    move-result-object v1

    .line 772
    const-string/jumbo v6, "sliderScaleY"

    .line 773
    if-eqz v1, :cond_10

    .line 776
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 778
    move-result v8

    .line 781
    if-nez v8, :cond_10

    .line 782
    iget-object v8, v10, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    .line 784
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v8, v10, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 789
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    new-array v8, v12, [I

    .line 794
    new-array v9, v12, [I

    .line 796
    iget-object v11, v10, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 798
    invoke-interface {v11}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 800
    move-result-object v11

    .line 803
    invoke-virtual {v10, v0, v11, v8}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt(Landroid/view/View;Landroid/view/View;[I)V

    .line 804
    invoke-virtual {v10, v1, v11, v9}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt(Landroid/view/View;Landroid/view/View;[I)V

    .line 807
    const/4 v11, 0x1

    .line 810
    aget v8, v8, v11

    .line 811
    aget v9, v9, v11

    .line 813
    sub-int/2addr v8, v9

    .line 815
    new-instance v9, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 816
    invoke-direct {v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 818
    new-array v11, v12, [F

    .line 821
    fill-array-data v11, :array_3

    .line 823
    invoke-virtual {v9, v0, v6, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 826
    new-array v0, v12, [F

    .line 829
    const/4 v6, 0x0

    .line 831
    aput v16, v0, v6

    .line 832
    int-to-float v6, v8

    .line 834
    const/4 v8, 0x1

    .line 835
    aput v6, v0, v8

    .line 836
    invoke-virtual {v9, v1, v5, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 838
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 841
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 843
    move-result-object v0

    .line 846
    iput-object v0, v9, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 847
    invoke-virtual {v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 849
    move-result-object v0

    .line 852
    iput-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mBrightnessTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 853
    goto/16 :goto_b

    .line 855
    :cond_10
    if-eqz v0, :cond_11

    .line 857
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 859
    invoke-interface {v1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 861
    move-result-object v1

    .line 864
    iget-object v8, v10, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 865
    invoke-virtual {v8}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 867
    move-result-object v8

    .line 870
    check-cast v8, Landroid/view/View;

    .line 871
    iget-object v9, v10, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 873
    invoke-virtual {v9}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 875
    move-result-object v9

    .line 878
    check-cast v9, Landroid/view/View;

    .line 879
    iget-object v11, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc1:[I

    .line 881
    invoke-virtual {v10, v8, v1, v11}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 883
    iget-object v8, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc2:[I

    .line 886
    invoke-virtual {v10, v9, v1, v8}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition(Landroid/view/View;Landroid/view/View;[I)V

    .line 888
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc2:[I

    .line 891
    const/4 v8, 0x1

    .line 893
    aget v1, v1, v8

    .line 894
    iget-object v9, v10, Lcom/android/systemui/qs/QSAnimator;->mTmpLoc1:[I

    .line 896
    aget v9, v9, v8

    .line 898
    sub-int/2addr v1, v9

    .line 900
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 901
    move-result v8

    .line 904
    int-to-float v8, v8

    .line 905
    const/high16 v9, 0x3f000000    # 0.5f

    .line 906
    mul-float/2addr v8, v9

    .line 908
    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 909
    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 911
    new-array v9, v12, [F

    .line 914
    int-to-float v1, v1

    .line 916
    add-float/2addr v8, v1

    .line 917
    const/4 v1, 0x0

    .line 918
    aput v8, v9, v1

    .line 919
    const/4 v1, 0x1

    .line 921
    aput v16, v9, v1

    .line 922
    invoke-virtual {v11, v0, v5, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 924
    new-array v1, v12, [F

    .line 927
    fill-array-data v1, :array_4

    .line 929
    invoke-virtual {v11, v0, v6, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 932
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 935
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 937
    move-result-object v1

    .line 940
    iput-object v1, v11, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 941
    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 943
    move-result-object v1

    .line 946
    iput-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mBrightnessTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 947
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 949
    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 951
    new-array v5, v12, [F

    .line 954
    fill-array-data v5, :array_5

    .line 956
    invoke-virtual {v1, v0, v3, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 959
    const v5, 0x3e4ccccd    # 0.2f

    .line 962
    iput v5, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 965
    const/high16 v5, 0x3f000000    # 0.5f

    .line 967
    iput v5, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 969
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 971
    move-result-object v1

    .line 974
    iput-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mBrightnessOpacityAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 975
    iget-object v1, v10, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 977
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    :cond_11
    :goto_b
    new-array v0, v12, [F

    .line 982
    fill-array-data v0, :array_6

    .line 984
    move-object/from16 v1, v29

    .line 987
    invoke-virtual {v7, v1, v3, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 989
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 992
    move-result-object v0

    .line 995
    new-array v2, v12, [F

    .line 996
    fill-array-data v2, :array_7

    .line 998
    const-string v5, "position"

    .line 1001
    invoke-virtual {v7, v0, v5, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 1003
    iput-object v10, v7, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 1006
    invoke-virtual {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 1008
    move-result-object v0

    .line 1011
    iput-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 1012
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 1014
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 1016
    const v2, 0x3f5c28f6    # 0.86f

    .line 1019
    iput v2, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 1022
    iget-object v2, v10, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 1024
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanelControllerBase;->shouldUseHorizontalLayout()Z

    .line 1026
    move-result v2

    .line 1029
    if-eqz v2, :cond_12

    .line 1030
    iget-object v2, v10, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 1032
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 1034
    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 1036
    if-eqz v2, :cond_12

    .line 1038
    new-array v5, v12, [F

    .line 1040
    fill-array-data v5, :array_8

    .line 1042
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 1045
    goto :goto_c

    .line 1048
    :cond_12
    iget-object v2, v10, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 1049
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 1051
    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 1053
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1055
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1057
    :goto_c
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 1060
    move-result-object v0

    .line 1063
    iput-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 1064
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 1066
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 1068
    move-result-object v0

    .line 1071
    iput-object v0, v13, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1072
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 1074
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 1076
    move-result-object v0

    .line 1079
    iput-object v0, v14, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1080
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 1082
    iget-object v0, v0, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->pathInterpolatorBuilder:Lcom/android/systemui/qs/PathInterpolatorBuilder;

    .line 1084
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1086
    new-instance v2, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 1089
    iget-object v5, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    .line 1091
    iget-object v0, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    .line 1093
    invoke-direct {v2, v5, v0}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[F)V

    .line 1095
    iput-object v2, v15, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1098
    iget-boolean v0, v10, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 1100
    if-eqz v0, :cond_13

    .line 1102
    invoke-virtual {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 1104
    move-result-object v0

    .line 1107
    iput-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mQQSTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 1108
    :cond_13
    invoke-virtual {v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 1110
    move-result-object v0

    .line 1113
    iput-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 1114
    invoke-virtual {v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 1116
    move-result-object v0

    .line 1119
    iput-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 1120
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 1122
    if-eqz v0, :cond_14

    .line 1124
    iget-object v2, v10, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 1126
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 1128
    move-result-object v2

    .line 1131
    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1132
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1134
    :cond_14
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mOtherFirstPageTilesHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 1137
    if-eqz v0, :cond_15

    .line 1139
    iget-object v2, v10, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 1141
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 1143
    move-result-object v2

    .line 1146
    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1147
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1149
    :cond_15
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 1152
    new-array v2, v12, [F

    .line 1154
    fill-array-data v2, :array_9

    .line 1156
    invoke-virtual {v4, v0, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 1159
    new-array v0, v12, [F

    .line 1162
    fill-array-data v0, :array_a

    .line 1164
    invoke-virtual {v4, v1, v3, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 1167
    iget-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/QSAnimator$1;

    .line 1170
    iput-object v0, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 1172
    const v0, 0x3f666666    # 0.9f

    .line 1174
    iput v0, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 1177
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 1179
    move-result-object v0

    .line 1182
    iput-object v0, v10, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 1183
    return-void

    .line 1185
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1186
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 1194
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1202
    :array_3
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 1210
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1218
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1226
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1234
    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1242
    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1250
    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1258
    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 1266
.end method

.method public final updateQQSVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    .line 8
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 15
    return-void
    .line 18
.end method
