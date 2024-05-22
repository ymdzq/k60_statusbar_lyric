.class public abstract Landroidx/transition/Transition;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_MATCH_ORDER:[I

.field public static final STRAIGHT_PATH_MOTION:Landroidx/transition/Transition$1;

.field public static final sRunningAnimators:Ljava/lang/ThreadLocal;


# instance fields
.field public mAnimators:Ljava/util/ArrayList;

.field public final mCurrentAnimators:Ljava/util/ArrayList;

.field public mDuration:J

.field public mEndValues:Landroidx/transition/TransitionValuesMaps;

.field public mEndValuesList:Ljava/util/ArrayList;

.field public mEnded:Z

.field public mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

.field public mInterpolator:Landroid/animation/TimeInterpolator;

.field public mListeners:Ljava/util/ArrayList;

.field public mMatchOrder:[I

.field public final mName:Ljava/lang/String;

.field public mNumInstances:I

.field public mParent:Landroidx/transition/TransitionSet;

.field public mPathMotion:Landroidx/transition/PathMotion;

.field public mPaused:Z

.field public mPropagation:Landroidx/transition/TransitionPropagation;

.field public mStartDelay:J

.field public mStartValues:Landroidx/transition/TransitionValuesMaps;

.field public mStartValuesList:Ljava/util/ArrayList;

.field public final mTargetIds:Ljava/util/ArrayList;

.field public final mTargets:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x4

    .line 5
    filled-new-array {v0, v1, v2, v3}, [I

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 10
    new-instance v0, Landroidx/transition/Transition$1;

    .line 12
    invoke-direct {v0}, Landroidx/transition/Transition$1;-><init>()V

    .line 14
    sput-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/Transition$1;

    .line 17
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 19
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 21
    sput-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    .line 24
    return-void
    .line 26
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 4
    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 9
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 10
    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 11
    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 14
    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 15
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 16
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 18
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/Transition$1;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 22
    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 27
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 28
    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 29
    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 31
    iput v2, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 32
    iput-boolean v2, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 33
    iput-boolean v2, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 34
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 36
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/Transition$1;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 37
    sget-object v0, Landroidx/transition/Styleable;->TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v3, "duration"

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 39
    invoke-static {v0, p2, v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v6, v3

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    .line 40
    invoke-virtual {p0, v6, v7}, Landroidx/transition/Transition;->setDuration(J)V

    :cond_0
    const-string/jumbo v3, "startDelay"

    const/4 v6, 0x2

    .line 41
    invoke-static {v0, p2, v3, v6, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v10, v3

    cmp-long v3, v10, v8

    if-lez v3, :cond_1

    .line 42
    invoke-virtual {p0, v10, v11}, Landroidx/transition/Transition;->setStartDelay(J)V

    :cond_1
    const-string v3, "interpolator"

    .line 43
    invoke-static {p2, v3}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    :goto_0
    if-lez v3, :cond_3

    .line 45
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    const-string p1, "matchOrder"

    const/4 v3, 0x3

    .line 46
    invoke-static {v0, p2, p1, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 47
    new-instance p2, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {p2, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array p1, p1, [I

    move v5, v2

    .line 49
    :goto_1
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_9

    .line 50
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v9, "id"

    .line 51
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 52
    aput v3, p1, v5

    goto :goto_2

    :cond_4
    const-string v9, "instance"

    .line 53
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 54
    aput v4, p1, v5

    goto :goto_2

    :cond_5
    const-string v9, "name"

    .line 55
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 56
    aput v6, p1, v5

    goto :goto_2

    :cond_6
    const-string v9, "itemId"

    .line 57
    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 58
    aput v8, p1, v5

    goto :goto_2

    .line 59
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 60
    array-length v7, p1

    sub-int/2addr v7, v4

    new-array v7, v7, [I

    .line 61
    invoke-static {p1, v2, v7, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, -0x1

    move-object p1, v7

    :goto_2
    add-int/2addr v5, v4

    goto :goto_1

    .line 62
    :cond_8
    new-instance p0, Landroid/view/InflateException;

    const-string p1, "Unknown match type in matchOrder: \'"

    const-string p2, "\'"

    .line 63
    invoke-static {p1, v7, p2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_9
    array-length p2, p1

    if-nez p2, :cond_a

    .line 66
    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    goto :goto_7

    :cond_a
    move p2, v2

    .line 67
    :goto_3
    array-length v1, p1

    if-ge p2, v1, :cond_10

    .line 68
    aget v1, p1, p2

    if-lt v1, v4, :cond_b

    if-gt v1, v8, :cond_b

    move v3, v4

    goto :goto_4

    :cond_b
    move v3, v2

    :goto_4
    if-eqz v3, :cond_f

    move v3, v2

    :goto_5
    if-ge v3, p2, :cond_d

    .line 69
    aget v5, p1, v3

    if-ne v5, v1, :cond_c

    move v1, v4

    goto :goto_6

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    move v1, v2

    :goto_6
    if-nez v1, :cond_e

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 70
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "matches contains a duplicate value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "matches contains invalid value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_10
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 73
    :cond_11
    :goto_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p2

    .line 10
    const/4 v0, 0x0

    .line 11
    if-ltz p2, :cond_1

    .line 12
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 16
    move-result v2

    .line 19
    if-ltz v2, :cond_0

    .line 20
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    :cond_1
    :goto_0
    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 29
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 34
    if-eqz p2, :cond_3

    .line 35
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    .line 37
    invoke-virtual {v1, p2}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {v1, p2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v1, p2, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    move-result-object p2

    .line 55
    instance-of p2, p2, Landroid/widget/ListView;

    .line 56
    if-eqz p2, :cond_5

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 60
    move-result-object p2

    .line 63
    check-cast p2, Landroid/widget/ListView;

    .line 64
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 66
    move-result-object v1

    .line 69
    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    .line 70
    move-result v1

    .line 73
    if-eqz v1, :cond_5

    .line 74
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    .line 76
    move-result v1

    .line 79
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    .line 80
    move-result-wide v1

    .line 83
    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 84
    invoke-virtual {p0, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    .line 86
    move-result p2

    .line 89
    if-ltz p2, :cond_4

    .line 90
    invoke-virtual {p0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 92
    move-result-object p1

    .line 95
    check-cast p1, Landroid/view/View;

    .line 96
    if-eqz p1, :cond_5

    .line 98
    const/4 p2, 0x0

    .line 100
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api16Impl;->setHasTransientState(Landroid/view/View;Z)V

    .line 101
    invoke-virtual {p0, v0, v1, v2}, Landroidx/collection/LongSparseArray;->put(Ljava/lang/Object;J)V

    .line 104
    goto :goto_2

    .line 107
    :cond_4
    const/4 p2, 0x1

    .line 108
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api16Impl;->setHasTransientState(Landroid/view/View;Z)V

    .line 109
    invoke-virtual {p0, p1, v1, v2}, Landroidx/collection/LongSparseArray;->put(Ljava/lang/Object;J)V

    .line 112
    :cond_5
    :goto_2
    return-void
    .line 115
.end method

.method public static getRunningAnimators()Landroidx/collection/ArrayMap;
    .locals 2

    .line 1
    sget-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/collection/ArrayMap;

    .line 8
    if-nez v1, :cond_0

    .line 10
    new-instance v1, Landroidx/collection/ArrayMap;

    .line 12
    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    :cond_0
    return-object v1
    .line 20
.end method

.method public static isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 2
    check-cast p0, Ljava/util/HashMap;

    .line 4
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 10
    check-cast p1, Ljava/util/HashMap;

    .line 12
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    if-nez p0, :cond_0

    .line 18
    if-nez p1, :cond_0

    .line 20
    const/4 p0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 p2, 0x1

    .line 24
    if-eqz p0, :cond_2

    .line 25
    if-nez p1, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 33
    xor-int/2addr p0, p2

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    move p0, p2

    .line 36
    :goto_1
    return p0
    .line 37
.end method


# virtual methods
.method public addListener(Landroidx/transition/Transition$TransitionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
    .line 18
.end method

.method public addTarget(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 8
    if-ltz v0, :cond_0

    .line 10
    iget-object v1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/animation/Animator;

    .line 18
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v0

    .line 31
    if-lez v0, :cond_1

    .line 32
    iget-object p0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 39
    check-cast p0, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v0

    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_1
    if-ge v1, v0, :cond_1

    .line 47
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    check-cast v2, Landroidx/transition/Transition$TransitionListener;

    .line 53
    invoke-interface {v2}, Landroidx/transition/Transition$TransitionListener;->onTransitionCancel()V

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_1

    .line 60
    :cond_1
    return-void
    .line 61
.end method

.method public abstract captureEndValues(Landroidx/transition/TransitionValues;)V
.end method

.method public final captureHierarchy(Landroid/view/View;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 11
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 12
    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Landroidx/transition/TransitionValues;

    .line 16
    invoke-direct {v0, p1}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 18
    if-eqz p2, :cond_1

    .line 21
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 27
    :goto_0
    iget-object v1, v0, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 35
    if-eqz p2, :cond_2

    .line 38
    iget-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 40
    invoke-static {v1, p1, v0}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 42
    goto :goto_1

    .line 45
    :cond_2
    iget-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 46
    invoke-static {v1, p1, v0}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 48
    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 51
    if-eqz v0, :cond_4

    .line 53
    check-cast p1, Landroid/view/ViewGroup;

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 58
    move-result v1

    .line 61
    if-ge v0, v1, :cond_4

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 67
    invoke-virtual {p0, v1, p2}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 71
    goto :goto_2

    .line 73
    :cond_4
    return-void
    .line 74
.end method

.method public capturePropagationValues(Landroidx/transition/TransitionValues;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    move-object v1, v0

    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_3

    .line 15
    iget-object v1, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    sget-object v1, Landroidx/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    .line 22
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x2

    .line 27
    if-ge v3, v5, :cond_1

    .line 28
    aget-object v6, v1, v3

    .line 30
    move-object v7, v0

    .line 32
    check-cast v7, Ljava/util/HashMap;

    .line 33
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    move-result v6

    .line 38
    if-nez v6, :cond_0

    .line 39
    move v1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    move v1, v4

    .line 46
    :goto_1
    if-nez v1, :cond_3

    .line 47
    iget-object p0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 49
    check-cast p0, Landroidx/transition/VisibilityPropagation;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    check-cast v0, Ljava/util/HashMap;

    .line 56
    const-string p0, "android:visibility:visibility"

    .line 58
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 63
    check-cast p0, Ljava/lang/Integer;

    .line 64
    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 66
    if-nez p0, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 70
    move-result p0

    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object p0

    .line 77
    :cond_2
    const-string v1, "android:visibilityPropagation:visibility"

    .line 78
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-array p0, v5, [I

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 85
    aget v1, p0, v2

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 90
    move-result v3

    .line 93
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 94
    move-result v3

    .line 97
    add-int/2addr v3, v1

    .line 98
    aput v3, p0, v2

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 101
    move-result v1

    .line 104
    div-int/2addr v1, v5

    .line 105
    add-int/2addr v1, v3

    .line 106
    aput v1, p0, v2

    .line 107
    aget v1, p0, v4

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 111
    move-result v2

    .line 114
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 115
    move-result v2

    .line 118
    add-int/2addr v2, v1

    .line 119
    aput v2, p0, v4

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 122
    move-result p1

    .line 125
    div-int/2addr p1, v5

    .line 126
    add-int/2addr p1, v2

    .line 127
    aput p1, p0, v4

    .line 128
    const-string p1, "android:visibilityPropagation:center"

    .line 130
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_3
    return-void
    .line 135
.end method

.method public abstract captureStartValues(Landroidx/transition/TransitionValues;)V
.end method

.method public final captureValues(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Landroidx/transition/Transition;->clearValues(Z)V

    .line 2
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    if-gtz v0, :cond_1

    .line 11
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 22
    goto/16 :goto_7

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 27
    move v1, v0

    .line 28
    :goto_1
    iget-object v2, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v2

    .line 34
    if-ge v1, v2, :cond_5

    .line 35
    iget-object v2, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/Integer;

    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v2

    .line 48
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    new-instance v3, Landroidx/transition/TransitionValues;

    .line 55
    invoke-direct {v3, v2}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 57
    if-eqz p2, :cond_2

    .line 60
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 62
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 66
    :goto_2
    iget-object v4, v3, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 74
    if-eqz p2, :cond_3

    .line 77
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 79
    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 81
    goto :goto_3

    .line 84
    :cond_3
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 85
    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 87
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 90
    goto :goto_1

    .line 92
    :cond_5
    :goto_4
    iget-object p1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 95
    move-result p1

    .line 98
    if-ge v0, p1, :cond_8

    .line 99
    iget-object p1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 106
    check-cast p1, Landroid/view/View;

    .line 107
    new-instance v1, Landroidx/transition/TransitionValues;

    .line 109
    invoke-direct {v1, p1}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 111
    if-eqz p2, :cond_6

    .line 114
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 116
    goto :goto_5

    .line 119
    :cond_6
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 120
    :goto_5
    iget-object v2, v1, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 128
    if-eqz p2, :cond_7

    .line 131
    iget-object v2, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 133
    invoke-static {v2, p1, v1}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 135
    goto :goto_6

    .line 138
    :cond_7
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 139
    invoke-static {v2, p1, v1}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 141
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 144
    goto :goto_4

    .line 146
    :cond_8
    :goto_7
    return-void
    .line 147
.end method

.method public final clearValues(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 4
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 6
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 8
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 11
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 15
    iget-object p0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 18
    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 20
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 26
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 28
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 30
    iget-object p1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 33
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 37
    iget-object p0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 40
    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 42
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 44
    :goto_0
    return-void
    .line 47
.end method

.method public clone()Landroidx/transition/Transition;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/Transition;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 5
    new-instance v0, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 7
    iput-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 4
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    .line 6
    move-result-object v8

    .line 9
    new-instance v9, Landroid/util/SparseIntArray;

    .line 10
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 12
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v10

    .line 18
    const-wide v0, 0x7fffffffffffffffL

    .line 19
    const/4 v12, 0x0

    .line 24
    :goto_0
    if-ge v12, v10, :cond_d

    .line 25
    move-object/from16 v13, p4

    .line 27
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/transition/TransitionValues;

    .line 33
    move-object/from16 v14, p5

    .line 35
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 40
    check-cast v3, Landroidx/transition/TransitionValues;

    .line 41
    if-eqz v2, :cond_0

    .line 43
    iget-object v5, v2, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result v5

    .line 50
    if-nez v5, :cond_0

    .line 51
    const/4 v2, 0x0

    .line 53
    :cond_0
    if-eqz v3, :cond_1

    .line 54
    iget-object v5, v3, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    move-result v5

    .line 61
    if-nez v5, :cond_1

    .line 62
    const/4 v3, 0x0

    .line 64
    :cond_1
    if-nez v2, :cond_3

    .line 65
    if-nez v3, :cond_3

    .line 67
    :cond_2
    move/from16 v16, v10

    .line 69
    goto/16 :goto_7

    .line 71
    :cond_3
    if-eqz v2, :cond_5

    .line 73
    if-eqz v3, :cond_5

    .line 75
    invoke-virtual {v6, v2, v3}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    .line 77
    move-result v5

    .line 80
    if-eqz v5, :cond_4

    .line 81
    goto :goto_1

    .line 83
    :cond_4
    const/4 v5, 0x0

    .line 84
    goto :goto_2

    .line 85
    :cond_5
    :goto_1
    const/4 v5, 0x1

    .line 86
    :goto_2
    if-eqz v5, :cond_2

    .line 87
    invoke-virtual {v6, v7, v2, v3}, Landroidx/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    .line 89
    move-result-object v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    if-eqz v3, :cond_a

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    .line 97
    move-result-object v15

    .line 100
    iget-object v4, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 101
    if-eqz v15, :cond_8

    .line 103
    array-length v11, v15

    .line 105
    if-lez v11, :cond_8

    .line 106
    new-instance v11, Landroidx/transition/TransitionValues;

    .line 108
    invoke-direct {v11, v4}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 110
    move-object/from16 v17, v5

    .line 113
    move/from16 v16, v10

    .line 115
    move-object/from16 v10, p3

    .line 117
    iget-object v5, v10, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 119
    invoke-virtual {v5, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-result-object v5

    .line 124
    check-cast v5, Landroidx/transition/TransitionValues;

    .line 125
    if-eqz v5, :cond_6

    .line 127
    const/4 v10, 0x0

    .line 129
    :goto_3
    array-length v13, v15

    .line 130
    if-ge v10, v13, :cond_6

    .line 131
    iget-object v13, v11, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 133
    aget-object v14, v15, v10

    .line 135
    move-object/from16 v18, v15

    .line 137
    iget-object v15, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 139
    check-cast v15, Ljava/util/HashMap;

    .line 141
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-result-object v15

    .line 146
    check-cast v13, Ljava/util/HashMap;

    .line 147
    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v10, v10, 0x1

    .line 152
    move-object/from16 v14, p5

    .line 154
    move-object/from16 v15, v18

    .line 156
    goto :goto_3

    .line 158
    :cond_6
    iget v5, v8, Landroidx/collection/SimpleArrayMap;->size:I

    .line 159
    const/4 v10, 0x0

    .line 161
    :goto_4
    if-ge v10, v5, :cond_9

    .line 162
    invoke-virtual {v8, v10}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 164
    move-result-object v13

    .line 167
    check-cast v13, Landroid/animation/Animator;

    .line 168
    invoke-virtual {v8, v13}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object v13

    .line 173
    check-cast v13, Landroidx/transition/Transition$AnimationInfo;

    .line 174
    iget-object v14, v13, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    .line 176
    if-eqz v14, :cond_7

    .line 178
    iget-object v14, v13, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 180
    if-ne v14, v4, :cond_7

    .line 182
    iget-object v14, v6, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    .line 184
    iget-object v15, v13, Landroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 186
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    move-result v14

    .line 191
    if-eqz v14, :cond_7

    .line 192
    iget-object v13, v13, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    .line 194
    invoke-virtual {v13, v11}, Landroidx/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v13

    .line 199
    if-eqz v13, :cond_7

    .line 200
    const/16 v17, 0x0

    .line 202
    goto :goto_5

    .line 204
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 205
    goto :goto_4

    .line 207
    :cond_8
    move-object/from16 v17, v5

    .line 208
    move/from16 v16, v10

    .line 210
    const/4 v11, 0x0

    .line 212
    :cond_9
    :goto_5
    move-object v5, v11

    .line 213
    move-object/from16 v10, v17

    .line 214
    goto :goto_6

    .line 216
    :cond_a
    move-object/from16 v17, v5

    .line 217
    move/from16 v16, v10

    .line 219
    iget-object v4, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 221
    move-object/from16 v10, v17

    .line 223
    const/4 v5, 0x0

    .line 225
    :goto_6
    if-eqz v10, :cond_c

    .line 226
    iget-object v11, v6, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 228
    if-eqz v11, :cond_b

    .line 230
    invoke-virtual {v11, v7, v6, v2, v3}, Landroidx/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J

    .line 232
    move-result-wide v2

    .line 235
    iget-object v11, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 236
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 238
    move-result v11

    .line 241
    long-to-int v13, v2

    .line 242
    invoke-virtual {v9, v11, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 246
    move-result-wide v0

    .line 249
    :cond_b
    move-wide v13, v0

    .line 250
    new-instance v11, Landroidx/transition/Transition$AnimationInfo;

    .line 251
    iget-object v2, v6, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    .line 253
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 255
    new-instance v15, Landroidx/transition/WindowIdApi18;

    .line 257
    invoke-direct {v15, v7}, Landroidx/transition/WindowIdApi18;-><init>(Landroid/view/View;)V

    .line 259
    move-object v0, v11

    .line 262
    move-object v1, v4

    .line 263
    move-object/from16 v3, p0

    .line 264
    move-object v4, v15

    .line 266
    invoke-direct/range {v0 .. v5}, Landroidx/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroidx/transition/WindowIdApi18;Landroidx/transition/TransitionValues;)V

    .line 267
    invoke-virtual {v8, v10, v11}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 273
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    move-wide v0, v13

    .line 278
    :cond_c
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 279
    move/from16 v10, v16

    .line 281
    goto/16 :goto_0

    .line 283
    :cond_d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 285
    move-result v2

    .line 288
    if-eqz v2, :cond_e

    .line 289
    const/4 v11, 0x0

    .line 291
    :goto_8
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 292
    move-result v2

    .line 295
    if-ge v11, v2, :cond_e

    .line 296
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 298
    move-result v2

    .line 301
    iget-object v3, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 302
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    move-result-object v2

    .line 307
    check-cast v2, Landroid/animation/Animator;

    .line 308
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 310
    move-result v3

    .line 313
    int-to-long v3, v3

    .line 314
    sub-long/2addr v3, v0

    .line 315
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    .line 316
    move-result-wide v7

    .line 319
    add-long/2addr v7, v3

    .line 320
    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 321
    add-int/lit8 v11, v11, 0x1

    .line 324
    goto :goto_8

    .line 326
    :cond_e
    return-void
    .line 327
.end method

.method public final end()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 2
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 6
    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 10
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v3

    .line 32
    move v4, v2

    .line 33
    :goto_0
    if-ge v4, v3, :cond_0

    .line 34
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 39
    check-cast v5, Landroidx/transition/Transition$TransitionListener;

    .line 40
    invoke-interface {v5, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionEnd(Landroidx/transition/Transition;)V

    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_0

    .line 47
    :cond_0
    move v0, v2

    .line 48
    :goto_1
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 49
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 51
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    .line 53
    move-result v3

    .line 56
    if-ge v0, v3, :cond_2

    .line 57
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 59
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 61
    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 66
    check-cast v3, Landroid/view/View;

    .line 67
    if-eqz v3, :cond_1

    .line 69
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 71
    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat$Api16Impl;->setHasTransientState(Landroid/view/View;Z)V

    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_1

    .line 78
    :cond_2
    move v0, v2

    .line 79
    :goto_2
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 80
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 82
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    .line 84
    move-result v3

    .line 87
    if-ge v0, v3, :cond_4

    .line 88
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 90
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    .line 92
    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 94
    move-result-object v3

    .line 97
    check-cast v3, Landroid/view/View;

    .line 98
    if-eqz v3, :cond_3

    .line 100
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 102
    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat$Api16Impl;->setHasTransientState(Landroid/view/View;Z)V

    .line 104
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 107
    goto :goto_2

    .line 109
    :cond_4
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 110
    :cond_5
    return-void
    .line 112
.end method

.method public final getEpicenter()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    return-object v0

    .line 7
    :cond_0
    check-cast p0, Landroidx/transition/FragmentTransitionSupport$1;

    .line 8
    iget v1, p0, Landroidx/transition/FragmentTransitionSupport$1;->$r8$classId:I

    .line 10
    iget-object p0, p0, Landroidx/transition/FragmentTransitionSupport$1;->val$epicenter:Landroid/graphics/Rect;

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 14
    if-eqz p0, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, p0

    .line 26
    :cond_2
    :goto_0
    move-object p0, v0

    .line 27
    :pswitch_0
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method

.method public final getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 16
    :goto_0
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_2

    .line 19
    return-object v1

    .line 21
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_1
    if-ge v3, v2, :cond_5

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 32
    check-cast v4, Landroidx/transition/TransitionValues;

    .line 33
    if-nez v4, :cond_3

    .line 35
    return-object v1

    .line 37
    :cond_3
    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 38
    if-ne v4, p1, :cond_4

    .line 40
    goto :goto_2

    .line 42
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_1

    .line 45
    :cond_5
    const/4 v3, -0x1

    .line 46
    :goto_2
    if-ltz v3, :cond_7

    .line 47
    if-eqz p2, :cond_6

    .line 49
    iget-object p0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 51
    goto :goto_3

    .line 53
    :cond_6
    iget-object p0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 54
    :goto_3
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    move-object v1, p0

    .line 60
    check-cast v1, Landroidx/transition/TransitionValues;

    .line 61
    :cond_7
    return-object v1
    .line 63
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    iget-object p0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    iget-object p0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 16
    :goto_0
    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    .line 18
    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Landroidx/transition/TransitionValues;

    .line 24
    return-object p0
    .line 26
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz p0, :cond_1

    .line 12
    array-length v2, p0

    .line 14
    move v3, v0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_3

    .line 16
    aget-object v4, p0, v3

    .line 18
    invoke-static {p1, p2, v4}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    .line 20
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 30
    check-cast p0, Ljava/util/HashMap;

    .line 32
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 34
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p0

    .line 41
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    invoke-static {p1, p2, v2}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    .line 54
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    :goto_1
    move v0, v1

    .line 60
    :cond_3
    return v0
    .line 61
.end method

.method public final isValidTarget(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v1, :cond_0

    .line 13
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    return v2

    .line 23
    :cond_0
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    iget-object p0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :cond_2
    :goto_0
    return v2
    .line 47
.end method

.method public pause(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 2
    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    sub-int/2addr p1, v0

    .line 13
    :goto_0
    if-ltz p1, :cond_0

    .line 14
    iget-object v1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Landroid/animation/Animator;

    .line 22
    invoke-virtual {v1}, Landroid/animation/Animator;->pause()V

    .line 24
    add-int/lit8 p1, p1, -0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 30
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result p1

    .line 37
    if-lez p1, :cond_1

    .line 38
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 45
    check-cast p1, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_1
    if-ge v2, v1, :cond_1

    .line 53
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 58
    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    .line 59
    invoke-interface {v3}, Landroidx/transition/Transition$TransitionListener;->onTransitionPause()V

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_1

    .line 66
    :cond_1
    iput-boolean v0, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 67
    :cond_2
    return-void
    .line 69
.end method

.method public removeListener(Landroidx/transition/Transition$TransitionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 19
    :cond_1
    return-void
    .line 21
.end method

.method public removeTarget(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public resume(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 2
    if-eqz p1, :cond_2

    .line 4
    iget-boolean p1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 6
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result p1

    .line 16
    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 17
    if-ltz p1, :cond_0

    .line 19
    iget-object v1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Landroid/animation/Animator;

    .line 27
    invoke-virtual {v1}, Landroid/animation/Animator;->resume()V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 33
    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result p1

    .line 40
    if-lez p1, :cond_1

    .line 41
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 48
    check-cast p1, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v1

    .line 54
    move v2, v0

    .line 55
    :goto_1
    if-ge v2, v1, :cond_1

    .line 56
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 61
    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    .line 62
    invoke-interface {v3}, Landroidx/transition/Transition$TransitionListener;->onTransitionResume()V

    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_1

    .line 69
    :cond_1
    iput-boolean v0, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 70
    :cond_2
    return-void
    .line 72
.end method

.method public runAnimators()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    .line 2
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    .line 5
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 18
    if-eqz v2, :cond_4

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Landroid/animation/Animator;

    .line 25
    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    .line 33
    if-eqz v2, :cond_0

    .line 36
    new-instance v3, Landroidx/transition/Transition$2;

    .line 38
    invoke-direct {v3, p0, v0}, Landroidx/transition/Transition$2;-><init>(Landroidx/transition/Transition;Landroidx/collection/ArrayMap;)V

    .line 40
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    iget-wide v3, p0, Landroidx/transition/Transition;->mDuration:J

    .line 46
    const-wide/16 v5, 0x0

    .line 48
    cmp-long v7, v3, v5

    .line 50
    if-ltz v7, :cond_1

    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 54
    :cond_1
    iget-wide v3, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 57
    cmp-long v5, v3, v5

    .line 59
    if-ltz v5, :cond_2

    .line 61
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    .line 63
    move-result-wide v5

    .line 66
    add-long/2addr v5, v3

    .line 67
    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 68
    :cond_2
    iget-object v3, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 71
    if-eqz v3, :cond_3

    .line 73
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    :cond_3
    new-instance v3, Landroidx/transition/Transition$3;

    .line 78
    invoke-direct {v3, p0}, Landroidx/transition/Transition$3;-><init>(Landroidx/transition/Transition;)V

    .line 80
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 83
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 86
    goto :goto_0

    .line 89
    :cond_4
    iget-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    .line 95
    return-void
    .line 98
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/transition/Transition;->mDuration:J

    .line 2
    return-void
    .line 4
.end method

.method public setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    .line 2
    return-void
    .line 4
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 2
    return-void
    .line 4
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    sget-object p1, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/Transition$1;

    .line 4
    iput-object p1, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 9
    :goto_0
    return-void
    .line 11
.end method

.method public setPropagation(Landroidx/transition/TransitionPropagation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 2
    return-void
    .line 4
.end method

.method public setStartDelay(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 2
    return-void
    .line 4
.end method

.method public final start()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v2

    .line 28
    move v3, v1

    .line 29
    :goto_0
    if-ge v3, v2, :cond_0

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 35
    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    .line 36
    invoke-interface {v4, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionStart(Landroidx/transition/Transition;)V

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 44
    :cond_1
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 48
    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 50
    return-void
    .line 52
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 122
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, ") "

    if-eqz v0, :cond_0

    const-string v0, "dur("

    .line 5
    invoke-static {p1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    iget-wide v4, p0, Landroidx/transition/Transition;->mDuration:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_0
    iget-wide v4, p0, Landroidx/transition/Transition;->mStartDelay:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    const-string v0, "dly("

    .line 8
    invoke-static {p1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 9
    iget-wide v2, p0, Landroidx/transition/Transition;->mStartDelay:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    const-string v0, "interp("

    .line 11
    invoke-static {p1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 12
    iget-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_2
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_3
    const-string/jumbo v0, "tgts("

    .line 14
    invoke-static {p1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_5

    move v0, v2

    .line 16
    :goto_0
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lez v0, :cond_4

    .line 17
    invoke-static {p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_4
    invoke-static {p1}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 19
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_5
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 21
    :goto_1
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-lez v2, :cond_6

    .line 22
    invoke-static {p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    :cond_6
    invoke-static {p1}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 24
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string p0, ")"

    .line 25
    invoke-static {p1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method
