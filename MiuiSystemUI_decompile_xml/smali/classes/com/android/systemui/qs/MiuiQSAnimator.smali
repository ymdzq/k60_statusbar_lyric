.class public final Lcom/android/systemui/qs/MiuiQSAnimator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;
.implements Lcom/android/systemui/qs/MiuiPagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mAllViews:Ljava/util/ArrayList;

.field public mAllowFancy:Z

.field public mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mHost:Lcom/android/systemui/qs/QSTileHost;

.field public mLastPosition:F

.field public mNeedsAnimatorUpdate:Z

.field public final mNonFirstPageListener:Lcom/android/systemui/qs/MiuiQSAnimator$1;

.field public mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mOnFirstPage:Z

.field public mOnKeyguard:Z

.field public final mPagedLayout:Lcom/android/systemui/qs/MiuiPagedTileLayout;

.field public final mQs:Lcom/android/systemui/plugins/qs/QS;

.field public final mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

.field public final mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

.field public final mQuickQsViews:Ljava/util/ArrayList;

.field public mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mUpdateAnimators:Lcom/android/systemui/qs/MiuiQSAnimator$2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/MiuiQuickQSPanel;Lcom/android/systemui/qs/MiuiQSPanel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnFirstPage:Z

    .line 20
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mNeedsAnimatorUpdate:Z

    .line 23
    new-instance v0, Lcom/android/systemui/qs/MiuiQSAnimator$1;

    .line 25
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/MiuiQSAnimator$1;-><init>(Lcom/android/systemui/qs/MiuiQSAnimator;)V

    .line 27
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/MiuiQSAnimator$1;

    .line 30
    new-instance v0, Lcom/android/systemui/qs/MiuiQSAnimator$2;

    .line 32
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/MiuiQSAnimator$2;-><init>(Lcom/android/systemui/qs/MiuiQSAnimator;)V

    .line 34
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/MiuiQSAnimator$2;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 41
    iput-object p3, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 43
    invoke-virtual {p3, p0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 45
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 52
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 55
    move-result p1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/qs/MiuiQSPanel;->getTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 65
    move-result-object p1

    .line 68
    instance-of p2, p1, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 69
    if-eqz p2, :cond_1

    .line 71
    check-cast p1, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mPagedLayout:Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 75
    goto :goto_0

    .line 77
    :cond_1
    const-string p1, "QSAnimator"

    .line 78
    const-string p2, "QS Not using page layout"

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    invoke-virtual {p3, p0}, Lcom/android/systemui/qs/MiuiQSPanel;->setPageListener(Lcom/android/systemui/qs/MiuiPagedTileLayout$PageListener;)V

    .line 85
    return-void
    .line 88
.end method


# virtual methods
.method public final clearAnimationState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

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
    if-ge v3, v0, :cond_0

    .line 16
    iget-object v4, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllViews:Ljava/util/ArrayList;

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
    add-int/lit8 v3, v3, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v0

    .line 45
    move v2, v1

    .line 46
    :goto_1
    if-ge v2, v0, :cond_1

    .line 47
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 54
    check-cast v3, Landroid/view/View;

    .line 55
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_1

    .line 62
    :cond_1
    return-void
    .line 63
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
    instance-of v0, p1, Lcom/android/systemui/qs/TilePage;

    .line 7
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    aget v0, p3, v2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 15
    move-result v3

    .line 18
    add-int/2addr v3, v0

    .line 19
    aput v3, p3, v2

    .line 20
    aget v0, p3, v1

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 24
    move-result v3

    .line 27
    add-int/2addr v3, v0

    .line 28
    aput v3, p3, v1

    .line 29
    :cond_1
    instance-of v0, p1, Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 31
    if-nez v0, :cond_2

    .line 33
    aget v0, p3, v2

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 37
    move-result v3

    .line 40
    sub-int/2addr v0, v3

    .line 41
    aput v0, p3, v2

    .line 42
    aget v0, p3, v1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 46
    move-result v2

    .line 49
    sub-int/2addr v0, v2

    .line 50
    aput v0, p3, v1

    .line 51
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    move-result-object p1

    .line 56
    check-cast p1, Landroid/view/View;

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/MiuiQSAnimator;->getRelativePositionInt(Landroid/view/View;Landroid/view/View;[I)V

    .line 59
    :cond_3
    :goto_0
    return-void
    .line 62
.end method

.method public final miuiUpdateAnimators()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-class v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 4
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 10
    iget-boolean v1, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mNeedsAnimatorUpdate:Z

    .line 18
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 20
    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 22
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 25
    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 27
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 30
    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 32
    iget-object v5, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 35
    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    .line 37
    move-result-object v5

    .line 40
    if-nez v5, :cond_1

    .line 41
    return-void

    .line 43
    :cond_1
    iget-object v5, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 44
    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    .line 46
    move-result-object v5

    .line 49
    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    .line 50
    move-result-object v5

    .line 53
    const/4 v6, 0x2

    .line 54
    new-array v7, v6, [I

    .line 55
    new-array v8, v6, [I

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/MiuiQSAnimator;->clearAnimationState()V

    .line 59
    iget-object v9, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 64
    iget-object v9, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v9, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 72
    invoke-virtual {v9}, Lcom/android/systemui/qs/MiuiQSPanel;->getTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 74
    move-result-object v9

    .line 77
    iget-object v10, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 78
    move-object v11, v9

    .line 80
    check-cast v11, Landroid/view/View;

    .line 81
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v10, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 86
    invoke-interface {v10}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 88
    move-result-object v10

    .line 91
    if-eqz v10, :cond_2

    .line 92
    iget-object v10, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 94
    invoke-interface {v10}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 96
    move-result-object v10

    .line 99
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 100
    move-result v10

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    move v10, v1

    .line 105
    :goto_0
    iget-object v11, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 106
    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 108
    move-result-object v11

    .line 111
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    .line 112
    move-result v11

    .line 115
    sub-int/2addr v10, v11

    .line 116
    iget-object v11, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 117
    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    .line 119
    move-result-object v11

    .line 122
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    .line 123
    move-result v11

    .line 126
    add-int/2addr v11, v10

    .line 127
    new-array v10, v6, [F

    .line 128
    int-to-float v11, v11

    .line 130
    aput v11, v10, v1

    .line 131
    const/4 v12, 0x1

    .line 133
    const/4 v13, 0x0

    .line 134
    aput v13, v10, v12

    .line 135
    const-string/jumbo v14, "translationY"

    .line 137
    invoke-virtual {v2, v9, v14, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 140
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object v10

    .line 146
    move v15, v1

    .line 147
    move/from16 v16, v15

    .line 148
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    move-result v17

    .line 153
    const-string v13, "alpha"

    .line 154
    if-eqz v17, :cond_b

    .line 156
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    move-result-object v17

    .line 161
    move-object/from16 v12, v17

    .line 162
    check-cast v12, Lcom/android/systemui/plugins/qs/QSTile;

    .line 164
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 166
    iget-object v1, v1, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 170
    move-result-object v1

    .line 173
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v20

    .line 177
    const/16 v21, 0x0

    .line 178
    if-eqz v20, :cond_4

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    move-result-object v20

    .line 185
    move-object/from16 v6, v20

    .line 186
    check-cast v6, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 188
    move-object/from16 v20, v1

    .line 190
    iget-object v1, v6, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 192
    if-ne v1, v12, :cond_3

    .line 194
    iget-object v1, v6, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 196
    goto :goto_3

    .line 198
    :cond_3
    move-object/from16 v1, v20

    .line 199
    const/4 v6, 0x2

    .line 201
    goto :goto_2

    .line 202
    :cond_4
    move-object/from16 v1, v21

    .line 203
    :goto_3
    if-nez v1, :cond_5

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v6, "tileView is null "

    .line 209
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-interface {v12}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 215
    move-result-object v6

    .line 218
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 225
    const-string v6, "QSAnimator"

    .line 226
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    move-object/from16 v22, v5

    .line 231
    move-object/from16 v20, v10

    .line 233
    move/from16 v23, v11

    .line 235
    goto/16 :goto_8

    .line 237
    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 239
    move-result-object v6

    .line 242
    invoke-virtual {v6}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    .line 243
    move-result-object v6

    .line 246
    move-object/from16 v20, v10

    .line 247
    iget-object v10, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 249
    invoke-interface {v10}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 251
    move-result-object v10

    .line 254
    move-object/from16 v22, v5

    .line 255
    iget-object v5, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 257
    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSPanel;->getTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 259
    move-result-object v5

    .line 262
    invoke-interface {v5}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->getNumVisibleTiles()I

    .line 263
    move-result v5

    .line 266
    if-ge v15, v5, :cond_a

    .line 267
    iget-boolean v5, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllowFancy:Z

    .line 269
    if-eqz v5, :cond_a

    .line 271
    iget-object v5, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 273
    iget-object v5, v5, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 275
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 277
    move-result-object v5

    .line 280
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    move-result v23

    .line 284
    if-eqz v23, :cond_7

    .line 285
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    move-result-object v23

    .line 290
    move-object/from16 v24, v5

    .line 291
    move-object/from16 v5, v23

    .line 293
    check-cast v5, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 295
    move/from16 v23, v11

    .line 297
    iget-object v11, v5, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 299
    if-ne v11, v12, :cond_6

    .line 301
    iget-object v5, v5, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 303
    goto :goto_5

    .line 305
    :cond_6
    move/from16 v11, v23

    .line 306
    move-object/from16 v5, v24

    .line 308
    goto :goto_4

    .line 310
    :cond_7
    move/from16 v23, v11

    .line 311
    move-object/from16 v5, v21

    .line 313
    :goto_5
    if-nez v5, :cond_8

    .line 315
    goto/16 :goto_8

    .line 317
    :cond_8
    invoke-virtual {v5}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 319
    move-result-object v11

    .line 322
    invoke-virtual {v11}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    .line 323
    move-result-object v11

    .line 326
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 327
    move-result v12

    .line 330
    const/16 v21, 0x2

    .line 331
    div-int/lit8 v12, v12, 0x2

    .line 333
    const/16 v17, 0x0

    .line 335
    add-int/lit8 v12, v12, 0x0

    .line 337
    aput v12, v7, v17

    .line 339
    const/4 v12, 0x1

    .line 341
    aput v17, v7, v12

    .line 342
    invoke-virtual {v0, v11, v10, v7}, Lcom/android/systemui/qs/MiuiQSAnimator;->getRelativePositionInt(Landroid/view/View;Landroid/view/View;[I)V

    .line 344
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 347
    move-result v11

    .line 350
    div-int/lit8 v11, v11, 0x2

    .line 351
    add-int/lit8 v11, v11, 0x0

    .line 353
    aput v11, v8, v17

    .line 355
    aput v17, v8, v12

    .line 357
    invoke-virtual {v0, v6, v10, v8}, Lcom/android/systemui/qs/MiuiQSAnimator;->getRelativePositionInt(Landroid/view/View;Landroid/view/View;[I)V

    .line 359
    aget v6, v8, v17

    .line 362
    aget v10, v7, v17

    .line 364
    sub-int/2addr v6, v10

    .line 366
    aget v10, v8, v12

    .line 367
    aget v11, v7, v12

    .line 369
    sub-int/2addr v10, v11

    .line 371
    iget-object v11, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mPagedLayout:Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 372
    const-string/jumbo v12, "translationX"

    .line 374
    if-eqz v11, :cond_9

    .line 377
    invoke-virtual {v11}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->getColumnCount()I

    .line 379
    move-result v11

    .line 382
    if-ge v15, v11, :cond_9

    .line 383
    const/4 v11, 0x2

    .line 385
    new-array v13, v11, [F

    .line 386
    const/16 v18, 0x0

    .line 388
    aput v18, v13, v17

    .line 390
    int-to-float v11, v6

    .line 392
    const/16 v16, 0x1

    .line 393
    aput v11, v13, v16

    .line 395
    invoke-virtual {v3, v5, v12, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 397
    const/4 v11, 0x2

    .line 400
    new-array v13, v11, [F

    .line 401
    aput v18, v13, v17

    .line 403
    int-to-float v11, v10

    .line 405
    aput v11, v13, v16

    .line 406
    invoke-virtual {v4, v5, v14, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 408
    const/4 v11, 0x2

    .line 411
    new-array v13, v11, [F

    .line 412
    neg-int v6, v6

    .line 414
    int-to-float v6, v6

    .line 415
    aput v6, v13, v17

    .line 416
    aput v18, v13, v16

    .line 418
    invoke-virtual {v3, v1, v12, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 420
    iget-object v6, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    .line 423
    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    .line 425
    move-result-object v11

    .line 428
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    move/from16 v16, v10

    .line 432
    goto :goto_6

    .line 434
    :cond_9
    const/16 v18, 0x0

    .line 435
    const/4 v6, 0x2

    .line 437
    new-array v10, v6, [F

    .line 438
    aput v18, v10, v17

    .line 440
    iget-object v11, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 442
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getWidth()I

    .line 444
    move-result v11

    .line 447
    int-to-float v11, v11

    .line 448
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getX()F

    .line 449
    move-result v21

    .line 452
    sub-float v11, v11, v21

    .line 453
    const/16 v19, 0x1

    .line 455
    aput v11, v10, v19

    .line 457
    invoke-virtual {v3, v5, v12, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 459
    new-array v10, v6, [F

    .line 462
    aput v18, v10, v17

    .line 464
    move/from16 v6, v16

    .line 466
    int-to-float v11, v6

    .line 468
    aput v11, v10, v19

    .line 469
    invoke-virtual {v4, v5, v14, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 471
    const/4 v10, 0x3

    .line 474
    new-array v10, v10, [F

    .line 475
    fill-array-data v10, :array_0

    .line 477
    invoke-virtual {v2, v5, v13, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 480
    :goto_6
    iget-object v6, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 483
    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 485
    move-result-object v10

    .line 488
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v6, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 492
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    goto :goto_7

    .line 497
    :cond_a
    move/from16 v23, v11

    .line 498
    move/from16 v6, v16

    .line 500
    move/from16 v16, v6

    .line 502
    :goto_7
    iget-object v5, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 504
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v15, v15, 0x1

    .line 509
    :goto_8
    move-object/from16 v10, v20

    .line 511
    move-object/from16 v5, v22

    .line 513
    move/from16 v11, v23

    .line 515
    const/4 v1, 0x0

    .line 517
    const/4 v6, 0x2

    .line 518
    const/4 v12, 0x1

    .line 519
    const/4 v13, 0x0

    .line 520
    goto/16 :goto_1

    .line 521
    :cond_b
    move-object/from16 v22, v5

    .line 523
    move/from16 v23, v11

    .line 525
    iget-boolean v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllowFancy:Z

    .line 527
    const/high16 v5, 0x3f000000    # 0.5f

    .line 529
    if-eqz v1, :cond_10

    .line 531
    iput-object v0, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 533
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 535
    move-result-object v1

    .line 538
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 539
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 541
    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 543
    iput v5, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 546
    const/4 v2, 0x3

    .line 548
    new-array v6, v2, [F

    .line 549
    fill-array-data v6, :array_1

    .line 551
    invoke-virtual {v1, v9, v13, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 554
    const/4 v2, 0x2

    .line 557
    new-array v6, v2, [F

    .line 558
    const/4 v2, 0x0

    .line 560
    aput v23, v6, v2

    .line 561
    const/4 v2, 0x0

    .line 563
    const/4 v7, 0x1

    .line 564
    aput v2, v6, v7

    .line 565
    invoke-virtual {v1, v9, v14, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 567
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 570
    move-result-object v1

    .line 573
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 574
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 576
    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 578
    iput v5, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 581
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 583
    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSPanel;->getSecurityFooter()Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 585
    move-result-object v2

    .line 588
    if-eqz v2, :cond_c

    .line 589
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 591
    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSPanel;->getSecurityFooter()Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 593
    move-result-object v2

    .line 596
    iget-object v2, v2, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mRootView:Landroid/view/View;

    .line 597
    const/4 v6, 0x2

    .line 599
    new-array v7, v6, [F

    .line 600
    fill-array-data v7, :array_2

    .line 602
    invoke-virtual {v1, v2, v13, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 605
    :cond_c
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 608
    move-result-object v1

    .line 611
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 612
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 614
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSPanel;->getSecurityFooter()Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 616
    move-result-object v1

    .line 619
    if-eqz v1, :cond_d

    .line 620
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 622
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 624
    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSPanel;->getSecurityFooter()Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 626
    move-result-object v2

    .line 629
    iget-object v2, v2, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mRootView:Landroid/view/View;

    .line 630
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    .line 635
    move-result v1

    .line 638
    const/4 v2, 0x3

    .line 639
    if-gt v1, v2, :cond_e

    .line 640
    const/high16 v1, 0x3f800000    # 1.0f

    .line 642
    goto :goto_9

    .line 644
    :cond_e
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    .line 645
    move-result v1

    .line 648
    const/4 v2, 0x6

    .line 649
    if-gt v1, v2, :cond_f

    .line 650
    const v1, 0x3ecccccd    # 0.4f

    .line 652
    goto :goto_9

    .line 655
    :cond_f
    const/4 v1, 0x0

    .line 656
    :goto_9
    new-instance v2, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    .line 657
    invoke-direct {v2, v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(F)V

    .line 659
    new-instance v1, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 662
    iget-object v6, v2, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    .line 664
    iget-object v7, v2, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    .line 666
    invoke-direct {v1, v6, v7}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[F)V

    .line 668
    iput-object v1, v3, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 671
    new-instance v1, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 673
    iget-object v6, v2, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    .line 675
    iget-object v2, v2, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    .line 677
    invoke-direct {v1, v6, v2}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[F)V

    .line 679
    iput-object v1, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 682
    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 684
    move-result-object v1

    .line 687
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 688
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 690
    move-result-object v1

    .line 693
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 694
    :cond_10
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 696
    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 698
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 701
    const/4 v3, 0x3

    .line 703
    new-array v4, v3, [F

    .line 704
    fill-array-data v4, :array_3

    .line 706
    invoke-virtual {v1, v2, v13, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 709
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/MiuiQSAnimator$1;

    .line 712
    iput-object v2, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 714
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 716
    move-result-object v1

    .line 719
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 720
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 722
    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 724
    const/4 v2, 0x2

    .line 727
    new-array v2, v2, [F

    .line 728
    const/4 v3, 0x0

    .line 730
    aput v23, v2, v3

    .line 731
    const/4 v3, 0x0

    .line 733
    const/4 v4, 0x1

    .line 734
    aput v3, v2, v4

    .line 735
    invoke-virtual {v1, v9, v14, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 737
    const/4 v2, 0x3

    .line 740
    new-array v2, v2, [F

    .line 741
    fill-array-data v2, :array_4

    .line 743
    invoke-virtual {v1, v9, v13, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 746
    iput v5, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 749
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 751
    move-result-object v1

    .line 754
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 755
    return-void

    .line 757
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 758
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 768
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 778
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 786
    :array_4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 796
.end method

.method public final onAnimationAtEnd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 2
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

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
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setVisibility(I)V

    .line 5
    return-void
    .line 8
.end method

.method public final onAnimationStarted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnKeyguard:Z

    .line 4
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v3

    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setVisibility(I)V

    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnFirstPage:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v0

    .line 25
    :goto_1
    if-ge v3, v0, :cond_1

    .line 26
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Landroid/view/View;

    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    return-void
    .line 42
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/MiuiQSAnimator$2;

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final onTilesChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/MiuiQSAnimator$2;

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "sysui_qs_fancy_anim"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    .line 12
    move-result p1

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllowFancy:Z

    .line 16
    if-nez p1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSAnimator;->clearAnimationState()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    const-string/jumbo v0, "sysui_qs_move_whole_rows"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSAnimator;->miuiUpdateAnimators()V

    .line 36
    return-void
    .line 39
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    .line 2
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    .line 8
    const-string/jumbo v0, "sysui_qs_fancy_anim"

    .line 10
    const-string/jumbo v1, "sysui_qs_move_whole_rows"

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 23
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setQsAnimator(Lcom/android/systemui/qs/MiuiQSAnimator;)V

    .line 25
    return-void
    .line 28
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setQsAnimator(Lcom/android/systemui/qs/MiuiQSAnimator;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 10
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;)V

    .line 14
    :cond_1
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    .line 17
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    .line 23
    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 25
    return-void
    .line 28
.end method

.method public final setPosition(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mNeedsAnimatorUpdate:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSAnimator;->miuiUpdateAnimators()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 9
    if-nez v0, :cond_1

    .line 11
    return-void

    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnKeyguard:Z

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    if-eqz v0, :cond_2

    .line 18
    move p1, v1

    .line 20
    :cond_2
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mLastPosition:F

    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnFirstPage:Z

    .line 23
    if-eqz v0, :cond_3

    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllowFancy:Z

    .line 27
    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 46
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 51
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 53
    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 57
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 62
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 64
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllowFancy:Z

    .line 67
    if-eqz v0, :cond_4

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 73
    :cond_4
    return-void
    .line 76
.end method
