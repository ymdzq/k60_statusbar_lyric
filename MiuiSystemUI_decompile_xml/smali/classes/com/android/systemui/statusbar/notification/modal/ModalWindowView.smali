.class public Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final animationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

.field public mChildrenUpdateRequested:Z

.field public final mChildrenUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

.field public mContentView:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

.field public mDialogContainer:Landroid/widget/FrameLayout;

.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mFirstAddUpdateRequested:Z

.field public final mFirstAddUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

.field public mLayoutWidth:I

.field public mLeftInset:I

.field public mMaxModalBottom:I

.field public mMenuView:Landroid/view/View;

.field public final mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field public mModalDialog:Landroid/view/View;

.field public mModalDialogMarginTopDelta:I

.field public mModalDialogTempY:F

.field public final mModalDialogViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field public mModalMenuMarginTop:I

.field public mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;

.field public mRightInset:I

.field public mScreenHeight:I

.field public mShowMenu:Z

.field public mSidePaddings:I

.field public final mTmpLoc:[I

.field public final mTouchHelper:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

.field public final menuAnimationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mRightInset:I

    .line 3
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLeftInset:I

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdateRequested:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdateRequested:Z

    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    sget-object v1, Lcom/miui/systemui/events/MiniWindowEventSource;->MODAL_NOTIFICATION:Lcom/miui/systemui/events/MiniWindowEventSource;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;-><init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchCallback;Lcom/miui/systemui/events/MiniWindowEventSource;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTouchHelper:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTmpLoc:[I

    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;-><init>(I)V

    const-wide/16 v1, 0x12c

    .line 10
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->animationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 12
    new-instance v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;-><init>(I)V

    const-wide/16 v2, 0x96

    .line 13
    iput-wide v2, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 14
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-instance v3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 15
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->menuAnimationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    .line 17
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    .line 18
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;

    .line 19
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogTempY:F

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->updateResource()V

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mRightInset:I

    .line 26
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLeftInset:I

    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdateRequested:Z

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdateRequested:Z

    .line 29
    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 30
    new-instance p2, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    sget-object v0, Lcom/miui/systemui/events/MiniWindowEventSource;->MODAL_NOTIFICATION:Lcom/miui/systemui/events/MiniWindowEventSource;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;-><init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchCallback;Lcom/miui/systemui/events/MiniWindowEventSource;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTouchHelper:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 31
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTmpLoc:[I

    .line 32
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;-><init>(I)V

    const-wide/16 v0, 0x12c

    .line 33
    iput-wide v0, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 34
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->animationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 35
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;-><init>(I)V

    const-wide/16 v1, 0x96

    .line 36
    iput-wide v1, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 37
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 38
    invoke-virtual {p2, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->menuAnimationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 39
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    .line 40
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    .line 41
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;

    .line 42
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogTempY:F

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->updateResource()V

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mRightInset:I

    .line 49
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLeftInset:I

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdateRequested:Z

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdateRequested:Z

    .line 52
    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 53
    new-instance p2, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    sget-object p3, Lcom/miui/systemui/events/MiniWindowEventSource;->MODAL_NOTIFICATION:Lcom/miui/systemui/events/MiniWindowEventSource;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;-><init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchCallback;Lcom/miui/systemui/events/MiniWindowEventSource;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTouchHelper:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 54
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTmpLoc:[I

    .line 55
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;-><init>(I)V

    const-wide/16 v0, 0x12c

    .line 56
    iput-wide v0, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 57
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->animationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 58
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;-><init>(I)V

    const-wide/16 v0, 0x96

    .line 59
    iput-wide v0, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 60
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 61
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->menuAnimationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 62
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    .line 63
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    .line 64
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;

    .line 65
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogTempY:F

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->updateResource()V

    .line 68
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 69
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mRightInset:I

    .line 72
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLeftInset:I

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdateRequested:Z

    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdateRequested:Z

    .line 75
    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 76
    new-instance p2, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    sget-object p3, Lcom/miui/systemui/events/MiniWindowEventSource;->MODAL_NOTIFICATION:Lcom/miui/systemui/events/MiniWindowEventSource;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;-><init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchCallback;Lcom/miui/systemui/events/MiniWindowEventSource;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTouchHelper:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 77
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTmpLoc:[I

    .line 78
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;-><init>(I)V

    const-wide/16 p3, 0x12c

    .line 79
    iput-wide p3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 80
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->animationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 81
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;-><init>(I)V

    const-wide/16 v0, 0x96

    .line 82
    iput-wide v0, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 83
    sget-object p4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 84
    invoke-virtual {p2, p4, v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->menuAnimationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 85
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    .line 86
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    .line 87
    new-instance p1, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;

    .line 88
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogTempY:F

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->updateResource()V

    .line 91
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 92
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public static getRowTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 16
    move-result p0

    .line 19
    add-float/2addr p0, v0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 22
    move-result p0

    .line 25
    return p0
    .line 26
.end method


# virtual methods
.method public final addMenu(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 7
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    const/4 v1, -0x2

    .line 25
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 26
    const/4 v1, 0x1

    .line 29
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 32
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 37
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 39
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->getRowTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)F

    .line 41
    move-result v1

    .line 44
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 45
    move-result p1

    .line 48
    int-to-float p1, p1

    .line 49
    add-float/2addr v1, p1

    .line 50
    iget p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalMenuMarginTop:I

    .line 51
    int-to-float p1, p1

    .line 53
    add-float/2addr v1, p1

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 55
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 58
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 64
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 79
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 81
    move-result-object v1

    .line 84
    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 85
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 87
    move-result v0

    .line 90
    int-to-float v0, v0

    .line 91
    add-float/2addr v1, v0

    .line 92
    iget v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalMenuMarginTop:I

    .line 93
    int-to-float v0, v0

    .line 95
    add-float/2addr v1, v0

    .line 96
    iput v1, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 99
    const/high16 p1, 0x3f800000    # 1.0f

    .line 101
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 103
    return-void
    .line 105
.end method

.method public final addRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 14
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetUserExpansion()V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 32
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 35
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 41
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 49
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 52
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 54
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 60
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->getRowTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)F

    .line 63
    move-result p1

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 67
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 74
    move-result v0

    .line 77
    int-to-float v0, v0

    .line 78
    add-float/2addr v0, p1

    .line 79
    iget v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMaxModalBottom:I

    .line 80
    int-to-float v1, v1

    .line 82
    sub-float/2addr v0, v1

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 85
    move-result v0

    .line 88
    sub-float/2addr p1, v0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 92
    move-result-object p0

    .line 95
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 96
    return-void
    .line 98
.end method

.method public final canChildBePicked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    return v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    move-result p0

    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 16
    move-result p0

    .line 19
    const/4 p1, 0x4

    .line 20
    if-ne p0, p1, :cond_1

    .line 21
    const-class p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 23
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 29
    sget-object p1, Lcom/miui/systemui/events/ModalExitMode;->OTHER:Lcom/miui/systemui/events/ModalExitMode;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->animExitModal(Ljava/lang/String;)V

    .line 37
    return v0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return p0
    .line 42
.end method

.method public final enterModal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5
    if-nez v0, :cond_1

    .line 7
    return-void

    .line 9
    :cond_1
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mShowMenu:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->removeRow()V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 15
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_2

    .line 18
    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 21
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->removeContentView()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 29
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 33
    move-result v0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz v0, :cond_4

    .line 38
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 42
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    goto :goto_1

    .line 48
    :cond_3
    const/4 v0, 0x0

    .line 49
    goto :goto_2

    .line 50
    :cond_4
    :goto_1
    move v0, v2

    .line 51
    :goto_2
    if-eqz v0, :cond_5

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdateRequested:Z

    .line 54
    if-nez v0, :cond_5

    .line 56
    if-eqz p2, :cond_5

    .line 58
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdateRequested:Z

    .line 60
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 67
    move-result-object p1

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 73
    return-void

    .line 76
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->addRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 77
    if-eqz p2, :cond_6

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->addMenu(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 82
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->animationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 85
    iput-object v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->requestChildrenUpdate()V

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 92
    const/high16 p1, 0x3f800000    # 1.0f

    .line 94
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/RowAnimationUtils;->startTouchAnimationIfNeed(FLcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 96
    return-void
    .line 99
.end method

.method public final exitModal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialog:Landroid/view/View;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->removeModalDialogImmediately()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 12
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->getRowTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)F

    .line 23
    move-result v2

    .line 26
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 29
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->getRowTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)F

    .line 31
    move-result v2

    .line 34
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 35
    move-result v3

    .line 38
    int-to-float v3, v3

    .line 39
    add-float/2addr v2, v3

    .line 40
    iget v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalMenuMarginTop:I

    .line 41
    int-to-float v3, v3

    .line 43
    add-float/2addr v2, v3

    .line 44
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 47
    const/4 v2, 0x0

    .line 49
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 50
    if-eqz p2, :cond_2

    .line 52
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 54
    move-result p2

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 60
    move-result v0

    .line 63
    if-eq p2, v0, :cond_2

    .line 64
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 66
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    .line 68
    move-result p1

    .line 71
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 72
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 75
    const/4 p2, 0x1

    .line 77
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->requestChildrenUpdate()V

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->animationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 84
    new-instance p2, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$$ExternalSyntheticLambda0;

    .line 86
    invoke-direct {p2, p0, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;I)V

    .line 88
    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 91
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 94
    return-void
    .line 96
.end method

.method public final getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTmpLoc:[I

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTmpLoc:[I

    .line 17
    const/4 v2, 0x0

    .line 19
    aget v1, v1, v2

    .line 20
    int-to-float v2, v1

    .line 22
    cmpl-float v2, p1, v2

    .line 23
    if-lez v2, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 27
    move-result v2

    .line 30
    add-int/2addr v2, v1

    .line 31
    int-to-float v1, v2

    .line 32
    cmpg-float p1, p1, v1

    .line 33
    if-gez p1, :cond_0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTmpLoc:[I

    .line 37
    const/4 p1, 0x1

    .line 39
    aget p0, p0, p1

    .line 40
    int-to-float p1, p0

    .line 42
    cmpl-float p1, p2, p1

    .line 43
    if-lez p1, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 47
    move-result p1

    .line 50
    add-int/2addr p1, p0

    .line 51
    int-to-float p0, p1

    .line 52
    cmpg-float p0, p2, p0

    .line 53
    if-gez p0, :cond_0

    .line 55
    return-object v0

    .line 57
    :cond_0
    const/4 p0, 0x0

    .line 58
    return-object p0
    .line 59
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFitsSystemWindows()Z

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    iget v1, v0, Landroid/graphics/Insets;->top:I

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 20
    move-result v4

    .line 23
    if-ne v1, v4, :cond_1

    .line 24
    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 28
    move-result v4

    .line 31
    if-eq v1, v4, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    move v2, v3

    .line 35
    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 36
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 38
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 42
    move-result v1

    .line 45
    iget v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mSidePaddings:I

    .line 46
    if-ne v1, v4, :cond_4

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 50
    move-result v1

    .line 53
    iget v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mSidePaddings:I

    .line 54
    if-ne v1, v4, :cond_4

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 58
    move-result v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 64
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    goto :goto_1

    .line 70
    :cond_3
    move v2, v3

    .line 71
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 72
    iget v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mSidePaddings:I

    .line 74
    invoke-virtual {p0, v1, v3, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 76
    :cond_5
    :goto_2
    iput v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLeftInset:I

    .line 79
    iput v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mRightInset:I

    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 83
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 87
    move-result-object v1

    .line 90
    if-eqz v1, :cond_6

    .line 91
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 93
    move-result v2

    .line 96
    iput v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLeftInset:I

    .line 97
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 99
    move-result v1

    .line 102
    iput v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mRightInset:I

    .line 103
    :cond_6
    iget v1, v0, Landroid/graphics/Insets;->left:I

    .line 105
    iget v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLeftInset:I

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 109
    move-result v1

    .line 112
    iput v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLeftInset:I

    .line 113
    iget v0, v0, Landroid/graphics/Insets;->right:I

    .line 115
    iget v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mRightInset:I

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 119
    move-result v0

    .line 122
    iput v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mRightInset:I

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 125
    move-result-object v0

    .line 128
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 129
    if-eqz v0, :cond_8

    .line 131
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    move-result-object v0

    .line 136
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 139
    iget v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mRightInset:I

    .line 141
    if-ne v1, v2, :cond_7

    .line 143
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 145
    iget v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLeftInset:I

    .line 147
    if-eq v1, v3, :cond_8

    .line 149
    :cond_7
    div-int/lit8 v2, v2, 0x2

    .line 151
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 153
    iget v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLeftInset:I

    .line 155
    div-int/lit8 v1, v1, 0x2

    .line 157
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :cond_8
    return-object p1
    .line 164
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->updateResource()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object p1

    .line 11
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    iget v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLayoutWidth:I

    .line 14
    if-eq v0, v1, :cond_0

    .line 16
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mShowMenu:Z

    .line 23
    if-nez p1, :cond_2

    .line 25
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialog:Landroid/view/View;

    .line 27
    if-eqz p1, :cond_1

    .line 29
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    if-nez p1, :cond_3

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 36
    if-eqz p1, :cond_4

    .line 38
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 40
    if-nez p1, :cond_4

    .line 42
    :cond_3
    const-class p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 44
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->exitModalImmediately()V

    .line 52
    return-void

    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->removeModalDialogImmediately()V

    .line 56
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 59
    if-eqz p1, :cond_8

    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdateRequested:Z

    .line 63
    if-eqz v0, :cond_5

    .line 65
    goto :goto_2

    .line 67
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->removeRow()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 71
    if-nez v0, :cond_6

    .line 73
    goto :goto_1

    .line 75
    :cond_6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 76
    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 80
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->removeContentView()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->addRow(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mShowMenu:Z

    .line 88
    if-eqz v0, :cond_7

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->addMenu(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 92
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->requestChildrenUpdate()V

    .line 95
    :cond_8
    :goto_2
    return-void
    .line 98
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTouchHelper:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
    .line 16
.end method

.method public final onMiniWindowAppLaunched()V
    .locals 0

    .line 1
    const-class p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->exitModalImmediately()V

    .line 10
    return-void
    .line 13
.end method

.method public final onMiniWindowReset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 2
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    cmpl-float v1, v1, v2

    .line 8
    if-eqz v1, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 15
    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->requestChildrenUpdate()V

    .line 19
    :cond_1
    return-void
    .line 22
.end method

.method public final onMiniWindowTrackingUpdate(F)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float p1, p1, v0

    .line 3
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    move p1, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v2

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 16
    iget v3, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 18
    cmpl-float v3, v3, v0

    .line 20
    if-eqz v3, :cond_2

    .line 22
    goto :goto_1

    .line 24
    :cond_2
    move v1, v2

    .line 25
    :goto_1
    iput v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 26
    if-eqz v1, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->requestChildrenUpdate()V

    .line 30
    :cond_3
    return-void
    .line 33
.end method

.method public final onStartMiniWindowExpandAnimation()V
    .locals 6

    .line 1
    const-class p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 9
    const-wide/16 v1, 0x1f4

    .line 11
    const/4 v3, 0x0

    .line 13
    sget-object p0, Lcom/miui/systemui/events/ModalExitMode;->DOWNPULL:Lcom/miui/systemui/events/ModalExitMode;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->animExitModal(JZLjava/lang/String;Z)V

    .line 21
    const-class p0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 24
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 30
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 33
    return-void
    .line 36
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mTouchHelper:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
    .line 16
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public final removeContentView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mContentView:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mContentView:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 10
    :cond_0
    return-void
    .line 12
.end method

.method public final removeModalDialogImmediately()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mDialogContainer:Landroid/widget/FrameLayout;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialog:Landroid/view/View;

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mDialogContainer:Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 16
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialog:Landroid/view/View;

    .line 20
    :cond_1
    :goto_0
    return-void
    .line 22
.end method

.method public final removeRow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    .line 13
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 16
    return-void
    .line 18
.end method

.method public final requestChildrenUpdate()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdateRequested:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdater:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 12
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdateRequested:Z

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final showMiPlay(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mContentView:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    new-instance p3, Lcom/android/systemui/qs/miplay/MiPlayDetailAdapter;

    .line 7
    invoke-direct {p3}, Lcom/android/systemui/qs/miplay/MiPlayDetailAdapter;-><init>()V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    move-object p3, v0

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz p3, :cond_1

    .line 19
    move v3, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v3, v2

    .line 23
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 24
    if-eqz v4, :cond_2

    .line 26
    move v5, v1

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move v5, v2

    .line 30
    :goto_2
    if-eqz v3, :cond_3

    .line 31
    if-eqz v5, :cond_3

    .line 33
    if-ne v4, p3, :cond_3

    .line 35
    goto/16 :goto_8

    .line 37
    :cond_3
    if-nez v3, :cond_4

    .line 39
    if-nez v5, :cond_4

    .line 41
    goto/16 :goto_8

    .line 43
    :cond_4
    const/16 v5, 0x490

    .line 45
    if-eqz v3, :cond_7

    .line 47
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 49
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 54
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mContext:Landroid/content/Context;

    .line 56
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v6

    .line 63
    check-cast v6, Landroid/view/View;

    .line 64
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 66
    invoke-interface {p3, v4, v6, v7}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    move-result-object p3

    .line 71
    instance-of v4, p3, Lcom/android/systemui/qs/QSDetailContent;

    .line 72
    if-eqz v4, :cond_5

    .line 74
    move-object v4, p3

    .line 76
    check-cast v4, Lcom/android/systemui/qs/QSDetailContent;

    .line 77
    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/QSDetailContent;->setDetailShowing(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->updateContainerHeight()V

    .line 82
    goto :goto_3

    .line 85
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 86
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    move-result-object v4

    .line 91
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 92
    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getContainerHeight()I

    .line 94
    move-result v6

    .line 97
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    :goto_3
    if-eqz p3, :cond_6

    .line 100
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 102
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 104
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 107
    invoke-virtual {v4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    iput v5, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mCurrentDetailIndex:I

    .line 112
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 114
    invoke-virtual {v4, v5, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mContext:Landroid/content/Context;

    .line 119
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 121
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 123
    move-result v4

    .line 126
    invoke-static {p3, v4}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 127
    goto :goto_5

    .line 130
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 131
    const-string p1, "Must return detail view"

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p0

    .line 138
    :cond_7
    if-eqz v4, :cond_a

    .line 139
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 141
    move-result p1

    .line 144
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 145
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 147
    move-result-object p1

    .line 150
    check-cast p1, Landroid/view/View;

    .line 151
    instance-of p3, p1, Lcom/android/systemui/qs/QSDetailContent;

    .line 153
    if-eqz p3, :cond_8

    .line 155
    check-cast p1, Lcom/android/systemui/qs/QSDetailContent;

    .line 157
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSDetailContent;->isItemClicked()Z

    .line 159
    move-result p3

    .line 162
    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSDetailContent;->setItemClicked(Z)V

    .line 163
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSDetailContent;->getSuffix()Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 169
    goto :goto_4

    .line 170
    :cond_8
    const-string p1, ""

    .line 171
    move p3, v2

    .line 173
    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    move-result v4

    .line 177
    if-nez v4, :cond_9

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->updateContainerHeight()V

    .line 180
    const-class v4, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 183
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    move-result-object v4

    .line 188
    check-cast v4, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 189
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    new-instance v6, Lcom/miui/systemui/events/QSDetailExitEvent;

    .line 194
    const-string v7, "back_pressed"

    .line 196
    invoke-direct {v6, p1, v7, p3, v2}, Lcom/miui/systemui/events/QSDetailExitEvent;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 198
    iget-object p1, v4, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 201
    invoke-interface {p1, v6}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 203
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mContext:Landroid/content/Context;

    .line 206
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 208
    invoke-interface {p3}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 210
    move-result p3

    .line 213
    invoke-static {p1, p3}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 214
    :cond_a
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 217
    move-object p1, v0

    .line 219
    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 220
    const-string v4, "animateDetailVisibleDiff: show = "

    .line 222
    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 227
    const-string v4, ", tileView = "

    .line 230
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object p3

    .line 241
    const-string v4, "QSDetail"

    .line 242
    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-eqz v3, :cond_d

    .line 247
    const/4 p3, 0x4

    .line 249
    if-nez p1, :cond_b

    .line 250
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 252
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 254
    goto :goto_7

    .line 257
    :cond_b
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 258
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 261
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailContainer:Landroid/view/View;

    .line 263
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mToView:Landroid/view/View;

    .line 265
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mTranslateView:Landroid/view/View;

    .line 267
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 269
    if-eqz v0, :cond_c

    .line 271
    const/high16 p1, 0x3f800000    # 1.0f

    .line 273
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 275
    goto :goto_6

    .line 278
    :cond_c
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->animateDetailAlphaWithRotation(Landroid/view/View;Z)V

    .line 279
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mAnimateShowRunnable:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;

    .line 282
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 284
    goto :goto_7

    .line 287
    :cond_d
    sget-boolean p1, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 288
    if-nez p1, :cond_e

    .line 290
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 292
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->animateDetailAlphaWithRotation(Landroid/view/View;Z)V

    .line 294
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mFromView:Landroid/view/View;

    .line 297
    if-eqz p1, :cond_f

    .line 299
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mAnimateHideRunnable:Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail$3;

    .line 301
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 303
    goto :goto_7

    .line 306
    :cond_f
    const/16 p1, 0x8

    .line 307
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 309
    :goto_7
    const/16 p1, 0x20

    .line 312
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 314
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalQSControlDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 317
    invoke-virtual {p0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 319
    move-result-object p0

    .line 322
    check-cast p0, Landroid/view/View;

    .line 323
    const-class p1, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 325
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 327
    move-result-object p1

    .line 330
    check-cast p1, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 331
    if-eqz v3, :cond_10

    .line 333
    iget-object p1, p1, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 335
    if-eqz p1, :cond_11

    .line 337
    invoke-interface {p1, p0, p2}, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;->showMiPlayDetailView(Landroid/view/View;Ljava/lang/String;)V

    .line 339
    goto :goto_8

    .line 342
    :cond_10
    iget-object p1, p1, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 343
    if-eqz p1, :cond_11

    .line 345
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;->hideMiPlayDetailView(Landroid/view/View;)V

    .line 347
    :cond_11
    :goto_8
    return-void
    .line 350
.end method

.method public final updateResource()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070c29    # @dimen/modal_dialog_d_margin_top '18.18dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 9
    move-result v1

    .line 12
    iput v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogMarginTopDelta:I

    .line 13
    const v1, 0x7f070dcd    # @dimen/notification_modal_menu_margin_top '25.0dp'

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 18
    move-result v1

    .line 21
    iput v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalMenuMarginTop:I

    .line 22
    const v1, 0x7f070de1    # @dimen/notification_panel_width '@dimen/match_parent'

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 27
    move-result v1

    .line 30
    iput v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mLayoutWidth:I

    .line 31
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 33
    move-result-object v1

    .line 36
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 37
    iput v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mScreenHeight:I

    .line 39
    const v2, 0x7f070dcc    # @dimen/notification_modal_menu_bottom_max '190.0dp'

    .line 41
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 44
    move-result v2

    .line 47
    sub-int/2addr v1, v2

    .line 48
    iput v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMaxModalBottom:I

    .line 49
    const v1, 0x7f070dfa    # @dimen/notification_side_paddings '14.0dp'

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    move-result v0

    .line 57
    iput v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mSidePaddings:I

    .line 58
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 61
    return-void
    .line 64
.end method
