.class Lmiuix/preference/PreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Lmiuix/animation/internal/BlinkStateObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    }
.end annotation


# static fields
.field private static final STATES_TAGS:[I

.field private static final STATE_SET_FIRST:[I

.field private static final STATE_SET_LAST:[I

.field private static final STATE_SET_MIDDLE:[I

.field private static final STATE_SET_NO_LINE:[I

.field private static final STATE_SET_NO_TITLE:[I

.field private static final STATE_SET_SINGLE:[I


# instance fields
.field private mCheckableFilterColorChecked:I

.field private mCheckableFilterColorNormal:I

.field private mClipPaint:Landroid/graphics/Paint;

.field private mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

.field private mExtraPaddingHorizontal:I

.field private mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

.field private mHighlightItemView:Landroid/view/View;

.field private mHighlightPosition:I

.field private mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private mMaskPaddingBottom:I

.field private mMaskPaddingEnd:I

.field private mMaskPaddingStart:I

.field private mMaskPaddingTop:I

.field private mMaskRadius:I

.field private mNeedCancelHighlightRequest:Z

.field private final mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

.field private mPreferenceHighLightChildRadius:I

.field private mRadioSetItemPaddingEndExtra:I

.field private mRadioSetItemPaddingStartExtra:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a3    # @android:attr/state_single

    aput v2, v0, v1

    const/4 v1, 0x1

    const v3, 0x10100a4    # @android:attr/state_first

    aput v3, v0, v1

    const/4 v1, 0x2

    const v4, 0x10100a5    # @android:attr/state_middle

    aput v4, v0, v1

    const/4 v1, 0x3

    const v5, 0x10100a6    # @android:attr/state_last

    aput v5, v0, v1

    .line 45
    sget v1, Lmiuix/preference/R$attr;->state_no_title:I

    const/4 v6, 0x4

    aput v1, v0, v6

    sget v6, Lmiuix/preference/R$attr;->state_no_line:I

    const/4 v7, 0x5

    aput v6, v0, v7

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    .line 55
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 64
    filled-new-array {v2}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    .line 65
    filled-new-array {v3}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    .line 66
    filled-new-array {v4}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    .line 67
    filled-new-array {v5}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    .line 68
    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    .line 69
    filled-new-array {v6}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_LINE:[I

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 96
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 72
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lmiuix/preference/PreferenceGroupAdapter$1;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingEndExtra:I

    .line 86
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    const/4 v1, -0x1

    .line 87
    iput v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    .line 89
    iput-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    .line 91
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 93
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 97
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 98
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->initAttr(Landroid/content/Context;)V

    return-void
.end method

.method private ableToUseFolmeAnim(Landroidx/preference/Preference;)Z
    .locals 0

    .line 512
    instance-of p0, p1, Landroidx/preference/PreferenceCategory;

    if-nez p0, :cond_2

    instance-of p0, p1, Lmiuix/preference/RadioButtonPreference;

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p0

    instance-of p0, p0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz p0, :cond_2

    :cond_0
    instance-of p0, p1, Lmiuix/preference/FolmeAnimationController;

    if-eqz p0, :cond_1

    check-cast p1, Lmiuix/preference/FolmeAnimationController;

    .line 514
    invoke-interface {p1}, Lmiuix/preference/FolmeAnimationController;->isTouchAnimationEnable()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic access$002(Lmiuix/preference/PreferenceGroupAdapter;[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;)[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    .locals 0

    .line 43
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    return-object p1
.end method

.method static synthetic access$100(Lmiuix/preference/PreferenceGroupAdapter;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/preference/PreferenceGroupAdapter;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    return p0
.end method

.method static synthetic access$202(Lmiuix/preference/PreferenceGroupAdapter;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    return p1
.end method

.method static synthetic access$300(Lmiuix/preference/PreferenceGroupAdapter;)I
    .locals 0

    .line 43
    iget p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    return p0
.end method

.method static synthetic access$302(Lmiuix/preference/PreferenceGroupAdapter;I)I
    .locals 0

    .line 43
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    return p1
.end method

.method private drawDrawable(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 8

    .line 743
    instance-of v0, p1, Lmiuix/preference/drawable/MaskTaggingDrawable;

    if-eqz v0, :cond_0

    .line 744
    check-cast p1, Lmiuix/preference/drawable/MaskTaggingDrawable;

    const/4 v0, 0x1

    .line 745
    invoke-virtual {p1, v0}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setMaskEnabled(Z)V

    .line 746
    iget-object v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mClipPaint:Landroid/graphics/Paint;

    iget v3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingTop:I

    iget v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingBottom:I

    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingStart:I

    iget v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    add-int v5, v0, v1

    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingEnd:I

    add-int v6, v0, v1

    iget v7, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    .line 749
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 750
    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getLeftAndRightWithRTL(Landroidx/recyclerview/widget/RecyclerView;Z)Landroid/util/Pair;

    move-result-object p0

    .line 751
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, v1, p0, v0}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setLeftRight(IIZ)V

    .line 752
    invoke-virtual {p1, p2, p3}, Lmiuix/preference/drawable/MaskTaggingDrawable;->updateDrawCorner(ZZ)V

    :cond_0
    return-void
.end method

.method private drawRadioSetPreferenceCategory(Lmiuix/preference/RadioButtonPreferenceCategory;)V
    .locals 4

    .line 693
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 695
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 696
    instance-of v3, v2, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v3, :cond_0

    .line 697
    check-cast v2, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 698
    invoke-direct {p0, v2}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V
    .locals 5

    .line 704
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 705
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 707
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 709
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 711
    iget-object v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 713
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 718
    :cond_1
    invoke-direct {p0, v1}, Lmiuix/preference/PreferenceGroupAdapter;->drawViews(Ljava/util/List;)V

    return-void
.end method

.method private drawView(Landroid/view/View;ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/PreferenceGroupAdapter;->drawDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    :cond_0
    return-void
.end method

.method private drawViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 722
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v0

    .line 728
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_1

    goto :goto_2

    :cond_1
    move v2, v0

    .line 731
    :goto_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 732
    invoke-direct {p0, v4, v3, v2}, Lmiuix/preference/PreferenceGroupAdapter;->drawView(Landroid/view/View;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 668
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 669
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 670
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 671
    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getPreferenceDescriptor(Landroidx/preference/Preference;I)V
    .locals 7

    if-ltz p2, :cond_1

    .line 526
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 527
    aget-object v1, v0, p2

    if-nez v1, :cond_0

    .line 528
    new-instance v1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    aput-object v1, v0, p2

    .line 530
    :cond_0
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v0, v0, p2

    iget-object v0, v0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_c

    .line 533
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 535
    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v0

    .line 536
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 541
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 542
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    move v1, v2

    goto :goto_1

    .line 544
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_4

    .line 545
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    const/4 v1, 0x2

    goto :goto_1

    .line 547
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    if-nez v0, :cond_5

    .line 548
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    const/4 v1, 0x4

    goto :goto_1

    .line 551
    :cond_5
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    const/4 v1, 0x3

    .line 554
    :goto_1
    instance-of v4, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v4, :cond_b

    .line 555
    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 558
    instance-of v4, p1, Lmiuix/preference/PreferenceCategory;

    if-eqz v4, :cond_7

    .line 559
    check-cast p1, Lmiuix/preference/PreferenceCategory;

    invoke-virtual {p1}, Lmiuix/preference/PreferenceCategory;->isDividerLineNeeded()Z

    move-result v4

    xor-int/2addr v4, v2

    .line 562
    invoke-virtual {p1}, Lmiuix/preference/PreferenceCategory;->hasTitle()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_2

    .line 566
    :cond_7
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    move v4, v3

    :goto_2
    if-nez v4, :cond_8

    if-eqz v2, :cond_b

    :cond_8
    if-eqz v4, :cond_9

    .line 573
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_LINE:[I

    array-length v4, p1

    new-array v4, v4, [I

    .line 574
    array-length v5, p1

    invoke-static {p1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_9
    new-array v4, v3, [I

    :goto_3
    if-eqz v2, :cond_a

    .line 579
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    array-length v2, p1

    new-array v2, v2, [I

    .line 580
    array-length v5, p1

    invoke-static {p1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_a
    new-array v2, v3, [I

    .line 584
    :goto_4
    array-length p1, v4

    array-length v5, v2

    add-int/2addr p1, v5

    array-length v5, v0

    add-int/2addr p1, v5

    new-array p1, p1, [I

    .line 585
    array-length v5, v4

    invoke-static {v4, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    array-length v5, v4

    array-length v6, v2

    invoke-static {v2, v3, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    array-length v4, v4

    array-length v2, v2

    add-int/2addr v4, v2

    array-length v2, v0

    invoke-static {v0, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    .line 595
    :cond_b
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p0, p0, p2

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 596
    iput v1, p0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    :cond_c
    return-void
.end method

.method private isArrowRightVisible(Landroidx/preference/Preference;)Z
    .locals 0

    .line 518
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_2

    .line 519
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 520
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz p0, :cond_2

    :cond_0
    instance-of p0, p1, Landroidx/preference/DialogPreference;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setPreferenceItemForegroundForHighLightChild(Landroid/view/View;Lmiuix/appcompat/app/AlphaBlendingDrawable;)V
    .locals 5

    .line 275
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 276
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CardView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 284
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    .line 285
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 286
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 287
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    .line 289
    :cond_0
    iget p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mPreferenceHighLightChildRadius:I

    invoke-virtual {p2, p0}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setRadius(I)V

    .line 290
    invoke-virtual {p2, v1, v2, v3, p1}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setInset(IIII)V

    :cond_1
    return-void
.end method

.method private startHighlight(Landroid/view/View;)V
    .locals 3

    .line 342
    sget v0, Lmiuix/preference/R$id;->preference_highlighted:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    if-nez v0, :cond_0

    .line 344
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->blink()Lmiuix/animation/IBlinkStyle;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeBlink;

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    .line 346
    :cond_0
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeBlink;->attach(Lmiuix/animation/internal/BlinkStateObserver;)V

    .line 347
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    const/4 v1, 0x0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/controller/FolmeBlink;->startBlink(I[Lmiuix/animation/base/AnimConfig;)V

    .line 348
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    return-void
.end method

.method private updateViewBackgroundMask(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 679
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 680
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-eqz v0, :cond_0

    .line 681
    check-cast p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 682
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioButtonPreferenceCategory;)V

    goto :goto_0

    .line 683
    :cond_0
    instance-of v0, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_1

    .line 684
    check-cast p1, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 685
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V

    goto :goto_0

    .line 686
    :cond_1
    instance-of p0, p1, Lmiuix/preference/RadioButtonPreference;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public checkHighlight(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 1

    .line 320
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 321
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v0, :cond_2

    .line 322
    iget-boolean p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    if-nez p2, :cond_1

    .line 323
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v0, Lmiuix/preference/R$id;->preference_highlighted:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->startHighlight(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 328
    iput-boolean p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    goto :goto_0

    .line 330
    :cond_2
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v0, Lmiuix/preference/R$id;->preference_highlighted:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 331
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getLeftAndRightWithRTL(Landroidx/recyclerview/widget/RecyclerView;Z)Landroid/util/Pair;
    .locals 0

    .line 491
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollBarSize()I

    move-result p0

    if-eqz p2, :cond_0

    mul-int/lit8 p0, p0, 0x3

    .line 499
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    mul-int/lit8 p0, p0, 0x3

    sub-int/2addr p1, p0

    const/4 p0, 0x0

    .line 508
    :goto_0
    new-instance p2, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method getPositionType(I)I
    .locals 0

    .line 624
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p0, p0, p1

    iget p0, p0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    return p0
.end method

.method public initAttr(Landroid/content/Context;)V
    .locals 1

    .line 102
    sget v0, Lmiuix/preference/R$attr;->preferenceRadioSetChildExtraPaddingStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    .line 103
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterChecked:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    .line 104
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/preference/R$dimen;->miuix_preference_high_light_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mPreferenceHighLightChildRadius:I

    return-void
.end method

.method public isHighlightRequested()Z
    .locals 1

    .line 337
    iget p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 603
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 604
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 605
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 138
    invoke-super/range {p0 .. p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    .line 139
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 140
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 141
    instance-of v5, v3, Landroidx/preference/PreferenceCategory;

    if-nez v5, :cond_0

    .line 142
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    filled-new-array {v5}, [Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v5

    invoke-interface {v5}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v5

    sget-object v6, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v5, v6}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v5

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-array v7, v4, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v5, v6, v7}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 144
    :cond_0
    invoke-direct {v0, v3, v2}, Lmiuix/preference/PreferenceGroupAdapter;->getPreferenceDescriptor(Landroidx/preference/Preference;I)V

    .line 145
    iget-object v5, v0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v5, v5, v2

    iget-object v5, v5, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 147
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 148
    iget v13, v0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    .line 149
    instance-of v7, v6, Landroid/graphics/drawable/LayerDrawable;

    const/4 v14, 0x0

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    .line 150
    move-object v7, v6

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v7

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 153
    instance-of v8, v3, Lmiuix/preference/RadioButtonPreference;

    if-nez v8, :cond_2

    instance-of v8, v3, Landroidx/preference/PreferenceCategory;

    if-nez v8, :cond_2

    .line 155
    invoke-virtual {v3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v8

    instance-of v8, v8, Lmiuix/preference/RadioSetPreferenceCategory;

    if-nez v8, :cond_2

    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v9, Lmiuix/preference/R$id;->miuix_preference_navigation:I

    .line 156
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v6, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 166
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 167
    move-object v8, v6

    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v8, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 168
    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v13

    .line 169
    iget v9, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v13

    .line 170
    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v11, v7, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v8, v11, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v9, v13

    move v11, v13

    .line 157
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 160
    new-instance v7, Lmiuix/preference/drawable/MaskTaggingDrawable;

    invoke-direct {v7, v6}, Lmiuix/preference/drawable/MaskTaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {v7, v14}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object v6, v7

    .line 174
    :cond_3
    :goto_1
    instance-of v7, v6, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_4

    move-object v7, v6

    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    sget-object v8, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    invoke-static {v7, v8}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 175
    new-instance v7, Lmiuix/preference/drawable/MaskTaggingDrawable;

    invoke-direct {v7, v6}, Lmiuix/preference/drawable/MaskTaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v6, v7

    .line 179
    :cond_4
    instance-of v7, v6, Lmiuix/preference/drawable/MaskTaggingDrawable;

    if-eqz v7, :cond_11

    .line 180
    check-cast v6, Lmiuix/preference/drawable/MaskTaggingDrawable;

    if-eqz v5, :cond_5

    .line 182
    invoke-virtual {v6, v5}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    .line 185
    :cond_5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 188
    invoke-virtual {v6, v5}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;->getPadding(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 189
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 190
    iget v8, v5, Landroid/graphics/Rect;->right:I

    .line 191
    invoke-virtual {v3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v9

    instance-of v9, v9, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v9, :cond_6

    .line 192
    iget v9, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingEndExtra:I

    add-int/2addr v8, v9

    .line 194
    :cond_6
    iget-object v9, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v7

    goto :goto_2

    :cond_7
    move v9, v8

    :goto_2
    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 195
    iget-object v9, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v7, v8

    :cond_8
    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 196
    invoke-virtual {v3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v7

    instance-of v7, v7, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v7, :cond_e

    .line 197
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 199
    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_9

    .line 200
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_3

    .line 202
    :cond_9
    new-instance v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v7, v8

    .line 205
    :goto_3
    iget-object v8, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getScrollBarSize()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 209
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {v3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v7

    check-cast v7, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 211
    invoke-virtual {v6, v4}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setMaskEnabled(Z)V

    .line 213
    invoke-virtual {v7}, Lmiuix/preference/RadioSetPreferenceCategory;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    iget v7, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    goto :goto_4

    :cond_a
    iget v7, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    :goto_4
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 212
    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 215
    iget-object v7, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_f

    .line 216
    instance-of v8, v3, Lmiuix/preference/RadioButtonPreference;

    .line 217
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getScrollBarSize()I

    move-result v7

    .line 218
    iget-object v9, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v9}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 219
    iget v9, v5, Landroid/graphics/Rect;->right:I

    if-eqz v8, :cond_b

    move v8, v4

    goto :goto_5

    :cond_b
    iget v8, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    :goto_5
    add-int/2addr v9, v8

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 220
    iget v8, v5, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v7, v7, 0x3

    sub-int/2addr v8, v7

    iput v8, v5, Landroid/graphics/Rect;->left:I

    goto :goto_7

    .line 222
    :cond_c
    iget v9, v5, Landroid/graphics/Rect;->left:I

    if-eqz v8, :cond_d

    move v8, v4

    goto :goto_6

    :cond_d
    iget v8, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    :goto_6
    add-int/2addr v9, v8

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 223
    iget v8, v5, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v7, v7, 0x3

    sub-int/2addr v8, v7

    iput v8, v5, Landroid/graphics/Rect;->right:I

    goto :goto_7

    .line 227
    :cond_e
    invoke-virtual {v6, v14}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 229
    :cond_f
    :goto_7
    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v13

    .line 230
    iget v8, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v13

    goto :goto_8

    :cond_10
    move v7, v4

    move v8, v7

    .line 232
    :goto_8
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v7, v10, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 233
    instance-of v5, v3, Lmiuix/preference/RadioButtonPreference;

    if-eqz v5, :cond_11

    move-object v5, v3

    check-cast v5, Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v5}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_11

    const v5, 0x10100a0    # @android:attr/state_checked

    .line 234
    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v6, v5}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    .line 238
    :cond_11
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v6, Lmiuix/preference/R$id;->arrow_right:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 240
    invoke-direct {v0, v3}, Lmiuix/preference/PreferenceGroupAdapter;->isArrowRightVisible(Landroidx/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_12

    move v6, v4

    goto :goto_9

    :cond_12
    const/16 v6, 0x8

    :goto_9
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_13
    invoke-direct {v0, v3}, Lmiuix/preference/PreferenceGroupAdapter;->ableToUseFolmeAnim(Landroidx/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 244
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v6, Lmiuix/preference/R$id;->miuix_preference_navigation:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_15

    .line 245
    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lmiuix/preference/R$attr;->preferenceItemForeground:I

    invoke-static {v5, v6}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 246
    instance-of v6, v5, Lmiuix/appcompat/app/AlphaBlendingDrawable;

    if-eqz v6, :cond_14

    .line 247
    move-object v6, v5

    check-cast v6, Lmiuix/appcompat/app/AlphaBlendingDrawable;

    invoke-virtual {v6, v4}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setRadius(I)V

    .line 248
    invoke-virtual {v6, v4, v4, v4, v4}, Lmiuix/appcompat/app/AlphaBlendingDrawable;->setInset(IIII)V

    .line 249
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v4, v6}, Lmiuix/preference/PreferenceGroupAdapter;->setPreferenceItemForegroundForHighLightChild(Landroid/view/View;Lmiuix/appcompat/app/AlphaBlendingDrawable;)V

    .line 251
    :cond_14
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 253
    :cond_15
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lmiuix/preference/R$attr;->navigationPreferenceItemForeground:I

    invoke-static {v5, v6}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 255
    instance-of v5, v4, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_16

    .line 256
    move-object v7, v4

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v9, v13

    move v11, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 263
    :cond_16
    :goto_a
    invoke-virtual/range {p0 .. p2}, Lmiuix/preference/PreferenceGroupAdapter;->checkHighlight(Landroidx/preference/PreferenceViewHolder;I)V

    .line 264
    instance-of v0, v3, Lmiuix/preference/PreferenceExtraPadding;

    if-eqz v0, :cond_17

    .line 265
    check-cast v3, Lmiuix/preference/PreferenceExtraPadding;

    invoke-interface {v3, v1, v13}, Lmiuix/preference/PreferenceExtraPadding;->onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V

    :cond_17
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 42
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lmiuix/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 610
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 611
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 p1, 0x0

    .line 612
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;)V
    .locals 1

    .line 649
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceChange(Landroidx/preference/Preference;)V

    .line 650
    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object p0

    .line 651
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 652
    invoke-virtual {p1}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 654
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 655
    instance-of v0, p0, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 656
    check-cast p0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 658
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 661
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 617
    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->updateViewBackgroundMask(Landroidx/preference/Preference;)V

    .line 620
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 303
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 304
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 42
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->onViewDetachedFromWindow(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 297
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 298
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 42
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->onViewRecycled(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public requestHighlight(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .locals 3

    .line 372
    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->isHighlightRequested()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 375
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_1

    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_2

    .line 382
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$2;

    invoke-direct {v0, p0}, Lmiuix/preference/PreferenceGroupAdapter$2;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 406
    :cond_2
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-nez v0, :cond_3

    .line 407
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$3;

    invoke-direct {v0, p0}, Lmiuix/preference/PreferenceGroupAdapter$3;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 458
    :cond_3
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 459
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 460
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 462
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 463
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 464
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ge v2, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :cond_5
    :goto_0
    if-nez v1, :cond_6

    .line 471
    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    .line 472
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 474
    :cond_6
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 475
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$4;

    invoke-direct {v0, p0, p2}, Lmiuix/preference/PreferenceGroupAdapter$4;-><init>(Lmiuix/preference/PreferenceGroupAdapter;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setClipPaint(Landroid/graphics/Paint;IIIII)V
    .locals 0

    .line 120
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mClipPaint:Landroid/graphics/Paint;

    .line 121
    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingTop:I

    .line 122
    iput p3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingBottom:I

    .line 123
    iput p4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingStart:I

    .line 124
    iput p5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingEnd:I

    .line 125
    iput p6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    return-void
.end method

.method protected setExtraPaddingHorizontal(I)Z
    .locals 1

    .line 129
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    if-eq v0, p1, :cond_0

    .line 130
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public stopHighlight()V
    .locals 1

    .line 308
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    .line 310
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeBlink;->detach(Lmiuix/animation/internal/BlinkStateObserver;)V

    :cond_0
    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    :cond_1
    return-void
.end method

.method public stopHighlight(Landroid/view/View;)V
    .locals 3

    .line 353
    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->isHighlightRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lmiuix/preference/R$id;->preference_highlighted:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->blink()Lmiuix/animation/IBlinkStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IBlinkStyle;->stopBlink()V

    .line 357
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    .line 359
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    :cond_1
    const/4 p1, -0x1

    .line 361
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    .line 362
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    .line 363
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 364
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 365
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 366
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateBlinkState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 630
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 631
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 632
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 633
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 634
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 635
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    if-eqz p1, :cond_0

    .line 636
    invoke-virtual {p1, p0}, Lmiuix/animation/controller/FolmeBlink;->detach(Lmiuix/animation/internal/BlinkStateObserver;)V

    :cond_0
    return-void
.end method
