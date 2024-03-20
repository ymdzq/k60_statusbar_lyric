.class public Lmiuix/animation/controller/FolmeTouch;
.super Lmiuix/animation/controller/FolmeBase;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/animation/ITouchStyle;


# static fields
.field private static final DEFAULT_SCALE:F = 0.9f

.field private static final SCALE_DIS:I = 0xa

.field private static sTouchRecord:Ljava/util/WeakHashMap;


# instance fields
.field private mClearTint:Z

.field private mClickInvoked:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDefListener:Lmiuix/animation/listener/TransitionListener;

.field private mDownConfig:Lmiuix/animation/base/AnimConfig;

.field private mDownWeight:I

.field private mDownX:F

.field private mDownY:F

.field private mFontStyle:Lmiuix/animation/controller/FolmeFont;

.field private mGlobalBoundInWindow:Landroid/graphics/Rect;

.field private mIsDown:Z

.field private mListView:Ljava/lang/ref/WeakReference;

.field private mLocationInScreen:[I

.field private mLongClickInvoked:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

.field private mRootGlobalBoundInWindow:Landroid/graphics/Rect;

.field private mScaleDist:F

.field private mScaleSetMap:Ljava/util/Map;

.field private mSetTint:Z

.field private mTouchIndex:I

.field private mTouchView:Ljava/lang/ref/WeakReference;

.field private mUpConfig:Lmiuix/animation/base/AnimConfig;

.field private mUpWeight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    .line 7
    return-void
    .line 9
.end method

.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mGlobalBoundInWindow:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mRootGlobalBoundInWindow:Landroid/graphics/Rect;

    .line 17
    const/4 v0, 0x2

    .line 19
    new-array v1, v0, [I

    .line 20
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mLocationInScreen:[I

    .line 22
    new-instance v1, Landroid/util/ArrayMap;

    .line 24
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 26
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    .line 29
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 31
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 33
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 36
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 38
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 40
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    .line 43
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 46
    new-instance v2, Lmiuix/animation/controller/FolmeTouch$1;

    .line 48
    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeTouch$1;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    .line 50
    iput-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 53
    array-length v2, p1

    .line 55
    if-lez v2, :cond_0

    .line 56
    aget-object p1, p1, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_0
    const/4 p1, 0x0

    .line 61
    :goto_0
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->initScaleDist(Lmiuix/animation/IAnimTarget;)V

    .line 62
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 65
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 67
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 69
    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 71
    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 73
    move-result-object v2

    .line 76
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 77
    invoke-virtual {v2, p1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 79
    move-result-object p1

    .line 82
    invoke-virtual {p1, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 83
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 86
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 89
    new-array v1, v0, [F

    .line 91
    fill-array-data v1, :array_0

    .line 93
    const/4 v2, -0x2

    .line 96
    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 97
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 101
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 104
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 106
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 108
    move-result-object v1

    .line 111
    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 112
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    .line 115
    new-array p1, v0, [F

    .line 117
    fill-array-data p1, :array_1

    .line 119
    invoke-virtual {p0, v2, p1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 122
    move-result-object p0

    .line 125
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 126
    new-array v0, v0, [F

    .line 128
    fill-array-data v0, :array_2

    .line 130
    const-wide/16 v1, -0x2

    .line 133
    invoke-virtual {p0, p1, v1, v2, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    .line 135
    return-void

    .line 138
    nop

    .line 139
    :array_0
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e19999a    # 0.15f
    .end array-data

    .line 140
    :array_1
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public static synthetic access$000(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->bindListView(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static synthetic access$100(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->resetViewTouch(Landroid/view/View;Z)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$200(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeClick(Landroid/view/View;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$300(Lmiuix/animation/controller/FolmeTouch;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$400(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeLongClick(Landroid/view/View;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$600(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->onEventUp([Lmiuix/animation/base/AnimConfig;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$700(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$900(Lmiuix/animation/controller/FolmeTouch;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2
    return-object p0
    .line 4
.end method

.method private varargs bindListView(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getListViewInfo(Landroid/view/View;)Lmiuix/animation/controller/FolmeTouch$ListViewInfo;

    .line 11
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    iget-object v2, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    .line 17
    if-eqz v2, :cond_1

    .line 19
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "handleListViewTouch for "

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    iget-object v0, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    .line 46
    invoke-direct {p0, v0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    .line 48
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_1
    return v1
    .line 53
.end method

.method private varargs doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V
    .locals 6

    .line 1
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->setClickAndLongClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 2
    invoke-direct {p0, p1, p5}, Lmiuix/animation/controller/FolmeTouch;->handleViewTouch(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 5
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTouchView(Landroid/view/View;)Z

    .line 8
    move-result p2

    .line 11
    if-eqz p2, :cond_1

    .line 12
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 14
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    const-string p3, "handleViewTouch for "

    .line 22
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 33
    const/4 p3, 0x0

    .line 34
    new-array p3, p3, [Ljava/lang/Object;

    .line 35
    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    .line 40
    move-result v5

    .line 43
    const/4 p2, 0x1

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 45
    new-instance p2, Lmiuix/animation/controller/FolmeTouch$3;

    .line 48
    move-object v0, p2

    .line 50
    move-object v1, p0

    .line 51
    move v2, p4

    .line 52
    move-object v3, p1

    .line 53
    move-object v4, p5

    .line 54
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch$3;-><init>(Lmiuix/animation/controller/FolmeTouch;ZLandroid/view/View;[Lmiuix/animation/base/AnimConfig;Z)V

    .line 55
    invoke-static {p1, p2}, Lmiuix/animation/utils/CommonUtils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 58
    :cond_1
    return-void
    .line 61
.end method

.method private varargs getDownConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, [Lmiuix/animation/base/AnimConfig;

    .line 12
    return-object p0
    .line 14
.end method

.method private getListViewInfo(Landroid/view/View;)Lmiuix/animation/controller/FolmeTouch$ListViewInfo;
    .locals 4

    .line 1
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v2

    .line 11
    :goto_0
    if-eqz v2, :cond_2

    .line 12
    instance-of v3, v2, Landroid/widget/AbsListView;

    .line 14
    if-eqz v3, :cond_0

    .line 16
    move-object v1, v2

    .line 18
    check-cast v1, Landroid/widget/AbsListView;

    .line 19
    goto :goto_1

    .line 21
    :cond_0
    instance-of v3, v2, Landroid/view/View;

    .line 22
    if-eqz v3, :cond_1

    .line 24
    move-object p1, v2

    .line 26
    check-cast p1, Landroid/view/View;

    .line 27
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 29
    move-result-object v2

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 34
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 36
    iget-object v3, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    .line 38
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 40
    iput-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 43
    iput-object v1, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    .line 45
    iput-object p1, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->itemView:Landroid/view/View;

    .line 47
    :cond_3
    return-object v0
    .line 49
.end method

.method public static getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;
    .locals 1

    .line 1
    const v0, 0x7f0a05e3    # @id/miuix_animation_tag_touch_listener

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Lmiuix/animation/controller/ListViewTouchListener;

    .line 9
    return-object p0
    .line 11
.end method

.method private varargs getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;
    .locals 0

    .line 1
    array-length p0, p1

    .line 2
    if-lez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 5
    aget-object p0, p1, p0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 9
    :goto_0
    return-object p0
    .line 11
.end method

.method private varargs getUpConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, [Lmiuix/animation/base/AnimConfig;

    .line 12
    return-object p0
    .line 14
.end method

.method private handleClick(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 12
    move-result v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 18
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 20
    move-result-object v0

    .line 23
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    check-cast v0, Lmiuix/animation/ViewTarget;

    .line 34
    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 40
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeClick(Landroid/view/View;)V

    .line 43
    :cond_0
    return-void
    .line 46
.end method

.method private varargs handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lmiuix/animation/controller/FolmeTouch;->getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lmiuix/animation/controller/ListViewTouchListener;

    .line 8
    invoke-direct {v0, p1}, Lmiuix/animation/controller/ListViewTouchListener;-><init>(Landroid/widget/AbsListView;)V

    .line 10
    const v1, 0x7f0a05e3    # @id/miuix_animation_tag_touch_listener

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    .line 16
    :cond_0
    if-eqz p3, :cond_1

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    :cond_1
    new-instance p1, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;

    .line 24
    invoke-direct {p1, p0, p4}, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;-><init>(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    .line 26
    invoke-virtual {v0, p2, p1}, Lmiuix/animation/controller/ListViewTouchListener;->putListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    .line 29
    return-void
    .line 32
.end method

.method private varargs handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 15
    goto :goto_1

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->handleClick(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 19
    :goto_0
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventUp([Lmiuix/animation/base/AnimConfig;)V

    .line 22
    goto :goto_1

    .line 25
    :cond_2
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->recordDownEvent(Landroid/view/MotionEvent;)V

    .line 26
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventDown([Lmiuix/animation/base/AnimConfig;)V

    .line 29
    :goto_1
    return-void
    .line 32
.end method

.method private varargs handleViewTouch(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    sget-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 15
    sget-object v1, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    .line 18
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    invoke-virtual {v0, p0, p2}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->addTouch(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    .line 26
    return-void
    .line 29
.end method

.method private initScaleDist(Lmiuix/animation/IAnimTarget;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lmiuix/animation/ViewTarget;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lmiuix/animation/ViewTarget;

    .line 6
    invoke-virtual {p1}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 8
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    move-result-object p1

    .line 23
    const/4 v0, 0x1

    .line 24
    const/high16 v1, 0x41200000    # 10.0f

    .line 25
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 27
    move-result p1

    .line 30
    iput p1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleDist:F

    .line 31
    :cond_1
    return-void
    .line 33
.end method

.method private invokeClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 11
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 13
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method private invokeLongClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 7
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 9
    invoke-interface {p0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method private isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 6
    move-result p2

    .line 9
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 10
    iget p0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    .line 12
    invoke-static {v1, p0, v0, p2}, Lmiuix/animation/utils/CommonUtils;->getDistance(FFFF)D

    .line 14
    move-result-wide v0

    .line 17
    invoke-static {p1}, Lmiuix/animation/utils/CommonUtils;->getTouchSlop(Landroid/view/View;)F

    .line 18
    move-result p0

    .line 21
    float-to-double p0, p0

    .line 22
    cmpg-double p0, v0, p0

    .line 23
    if-gez p0, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
    .line 30
.end method

.method public static isOnTouchView(Landroid/view/View;[ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 8
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 14
    invoke-virtual {v1, p3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 21
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 24
    :goto_0
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    .line 27
    move-result p0

    .line 30
    float-to-int p0, p0

    .line 31
    const/4 v1, 0x0

    .line 32
    aget v1, p1, v1

    .line 33
    sub-int/2addr p0, v1

    .line 35
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    .line 36
    move-result p4

    .line 39
    float-to-int p4, p4

    .line 40
    aget p1, p1, v0

    .line 41
    sub-int/2addr p4, p1

    .line 43
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 44
    add-int/2addr p4, p1

    .line 46
    invoke-virtual {p2, p0, p4}, Landroid/graphics/Rect;->contains(II)Z

    .line 47
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    return v0
    .line 52
.end method

.method private isScaleSet(Lmiuix/animation/ITouchStyle$TouchType;)Z
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method private varargs onEventDown([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    const-string v1, "onEventDown, touchDown"

    .line 11
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 17
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    .line 19
    return-void
    .line 22
.end method

.method private varargs onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLocationInScreen:[I

    .line 6
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mGlobalBoundInWindow:Landroid/graphics/Rect;

    .line 8
    iget-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mRootGlobalBoundInWindow:Landroid/graphics/Rect;

    .line 10
    invoke-static {p2, v0, v1, v2, p1}, Lmiuix/animation/controller/FolmeTouch;->isOnTouchView(Landroid/view/View;[ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 18
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    iget-object p3, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 25
    if-eqz p3, :cond_1

    .line 27
    invoke-direct {p0, p2, p1}, Lmiuix/animation/controller/FolmeTouch;->isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 29
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 35
    invoke-virtual {p1, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->stop(Lmiuix/animation/controller/FolmeTouch;)V

    .line 37
    :cond_1
    :goto_0
    return-void
    .line 40
.end method

.method private varargs onEventUp([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    const-string v1, "onEventUp, touchUp"

    .line 15
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 20
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method private recordDownEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 10
    move-result v0

    .line 13
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 16
    move-result v0

    .line 19
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 22
    move-result p1

    .line 25
    iput p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    .line 26
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 29
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 31
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->startLongClickTask()V

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method private resetTouchStatus()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->stop(Lmiuix/animation/controller/FolmeTouch;)V

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 10
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    .line 12
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 15
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    .line 17
    return-void
    .line 19
.end method

.method private resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroid/view/View;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    :cond_0
    return-object p0
    .line 14
.end method

.method private resetViewTouch(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 2
    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    return-void
    .line 9
.end method

.method private setClickAndLongClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 4
    move-result-object v0

    .line 7
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    .line 8
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Lmiuix/animation/ViewTarget;

    .line 13
    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 15
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 24
    if-eqz v1, :cond_2

    .line 26
    if-nez p1, :cond_2

    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    goto :goto_1

    .line 33
    :cond_2
    if-eqz p1, :cond_3

    .line 34
    new-instance v1, Lmiuix/animation/controller/FolmeTouch$4;

    .line 36
    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeTouch$4;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_3
    :goto_1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 44
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 46
    if-eqz p1, :cond_4

    .line 48
    if-nez p2, :cond_4

    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 52
    goto :goto_2

    .line 55
    :cond_4
    if-eqz p2, :cond_5

    .line 56
    new-instance p1, Lmiuix/animation/controller/FolmeTouch$5;

    .line 58
    invoke-direct {p1, p0}, Lmiuix/animation/controller/FolmeTouch$5;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    .line 60
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 63
    :cond_5
    :goto_2
    iput-object p2, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 66
    return-void
    .line 68
.end method

.method private setHoverCorner(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    instance-of v0, p0, Landroid/view/View;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    check-cast p0, Landroid/view/View;

    .line 16
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    .line 18
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method private setTargetValue(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    instance-of v0, p0, Landroid/view/View;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    check-cast p0, Landroid/view/View;

    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method private setTintColor()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mSetTint:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x14

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 18
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    instance-of v2, v1, Landroid/view/View;

    .line 28
    if-eqz v2, :cond_1

    .line 30
    check-cast v1, Landroid/view/View;

    .line 32
    const v0, 0x7f06068f    # @color/miuix_folme_color_touch_tint '@color/miuix_folme_color_touch_tint_light'

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 41
    move-result v0

    .line 44
    :cond_1
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 45
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 47
    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 49
    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 51
    move-result-object v2

    .line 54
    int-to-double v3, v0

    .line 55
    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 56
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 59
    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 61
    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 63
    move-result-object p0

    .line 66
    const-wide/16 v2, 0x0

    .line 67
    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 69
    :cond_2
    :goto_0
    return-void
    .line 72
.end method

.method private setTouchView(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ne v0, p1, :cond_1

    .line 14
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 20
    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    .line 23
    const/4 p0, 0x1

    .line 25
    return p0
    .line 26
.end method

.method private startLongClickTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 7
    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 14
    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 17
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 19
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->start(Lmiuix/animation/controller/FolmeTouch;)V

    .line 21
    return-void
    .line 24
.end method


# virtual methods
.method public varargs bindViewOfListItem(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTouchView(Landroid/view/View;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$2;

    .line 9
    invoke-direct {v0, p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch$2;-><init>(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 11
    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 14
    return-void
    .line 17
.end method

.method public cancel()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->cancel()V

    .line 2
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeBase;->cancel()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public clean()V
    .locals 3

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    .line 2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lmiuix/animation/controller/FolmeFont;->clean()V

    .line 9
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 14
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    .line 17
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 22
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    .line 25
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 27
    if-eqz v0, :cond_3

    .line 29
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    const v2, 0x7f0a05e3    # @id/miuix_animation_tag_touch_listener

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 40
    :cond_2
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 43
    :cond_3
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    .line 45
    return-void
    .line 48
.end method

.method public clearTintColor()Lmiuix/animation/ITouchStyle;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 3
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 5
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 7
    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 9
    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 15
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 18
    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 20
    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 26
    return-object p0
    .line 29
.end method

.method public varargs handleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;[Lmiuix/animation/base/AnimConfig;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;[Lmiuix/animation/base/AnimConfig;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lmiuix/animation/controller/FolmeTouch;->handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public ignoreTouchOf(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->removeTouch(Lmiuix/animation/controller/FolmeTouch;)Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    sget-object p0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 3
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1, p1, v0}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 6
    return-void
    .line 9
.end method

.method public varargs onMotionEventEx(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 2
    return-void
    .line 5
.end method

.method public varargs setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;

    .line 4
    move-result-object p2

    .line 7
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 8
    move-result-object p2

    .line 11
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 12
    float-to-double v1, p1

    .line 14
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 15
    return-object p0
    .line 18
.end method

.method public setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 6
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundColor(I)Lmiuix/animation/ITouchStyle;
    .locals 4

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 2
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    int-to-double v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 3
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 4
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v1, v1

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setFontStyle(Lmiuix/animation/controller/FolmeFont;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 2
    return-void
    .line 4
.end method

.method public varargs setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;

    .line 2
    move-result-object p2

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 13
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 15
    move-result-object p2

    .line 18
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 19
    float-to-double v1, p1

    .line 21
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 22
    move-result-object p1

    .line 25
    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 26
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 28
    return-object p0
    .line 31
.end method

.method public setTint(FFFF)Lmiuix/animation/ITouchStyle;
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 4
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTint(I)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    return-object p0
.end method

.method public setTint(I)Lmiuix/animation/ITouchStyle;
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mSetTint:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setTintMode(I)Lmiuix/animation/ITouchStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 9
    return-object p0
    .line 12
.end method

.method public setTouchDown()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 2
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 5
    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 7
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 9
    return-void
    .line 12
.end method

.method public setTouchPadding(FFFF)Lmiuix/animation/ITouchStyle;
    .locals 2

    .line 1
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_padding_rect:I

    .line 2
    new-instance v1, Landroid/graphics/RectF;

    .line 4
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    invoke-direct {p0, v0, v1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 9
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_location_mode:I

    .line 12
    const/4 p2, 0x4

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p2

    .line 18
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 19
    return-object p0
    .line 22
.end method

.method public setTouchRadius(F)Lmiuix/animation/ITouchStyle;
    .locals 1

    .line 1
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_corners:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTouchRadius(FFFF)Lmiuix/animation/ITouchStyle;
    .locals 2

    .line 2
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_corners:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0, v1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTouchRect(Landroid/graphics/RectF;Lmiuix/animation/ITouchStyle$TouchRectGravity;)Lmiuix/animation/ITouchStyle;
    .locals 1

    .line 1
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect:I

    .line 2
    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 4
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_gravity:I

    .line 7
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 9
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_touch_rect_location_mode:I

    .line 12
    const/16 p2, 0x1008

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p2

    .line 19
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->setTargetValue(ILjava/lang/Object;)V

    .line 20
    return-object p0
    .line 23
.end method

.method public setTouchUp()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 4
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 6
    return-void
    .line 9
.end method

.method public varargs touchDown([Lmiuix/animation/base/AnimConfig;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->setHoverCorner(F)V

    .line 3
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 6
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getDownConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    .line 9
    move-result-object p1

    .line 12
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownWeight:I

    .line 17
    invoke-virtual {v0, v1, p1}, Lmiuix/animation/controller/FolmeFont;->to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;

    .line 19
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 22
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 24
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 26
    move-result-object v0

    .line 29
    invoke-direct {p0, v1}, Lmiuix/animation/controller/FolmeTouch;->isScaleSet(Lmiuix/animation/ITouchStyle$TouchType;)Z

    .line 30
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 36
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 38
    move-result-object v1

    .line 41
    sget-object v2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 42
    invoke-virtual {v1, v2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 44
    move-result v2

    .line 47
    sget-object v3, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 48
    invoke-virtual {v1, v3}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 50
    move-result v1

    .line 53
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 54
    move-result v1

    .line 57
    iget v2, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleDist:F

    .line 58
    sub-float v2, v1, v2

    .line 60
    div-float/2addr v2, v1

    .line 62
    const v1, 0x3f666666    # 0.9f

    .line 63
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 66
    move-result v1

    .line 69
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 70
    float-to-double v3, v1

    .line 72
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 73
    move-result-object v1

    .line 76
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 77
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 79
    :cond_1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 82
    invoke-interface {p0, v0, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 84
    return-void
    .line 87
.end method

.method public varargs touchUp([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getUpConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    .line 2
    move-result-object p1

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpWeight:I

    .line 10
    invoke-virtual {v0, v1, p1}, Lmiuix/animation/controller/FolmeFont;->to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;

    .line 12
    :cond_0
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 15
    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 17
    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 19
    move-result-object v0

    .line 22
    invoke-interface {p0, v0, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 23
    return-void
    .line 26
.end method

.method public useVarFont(Landroid/widget/TextView;III)Lmiuix/animation/ITouchStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iput p3, p0, Lmiuix/animation/controller/FolmeTouch;->mUpWeight:I

    .line 6
    iput p4, p0, Lmiuix/animation/controller/FolmeTouch;->mDownWeight:I

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/FolmeFont;->useAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;

    .line 10
    :cond_0
    return-object p0
    .line 13
.end method
