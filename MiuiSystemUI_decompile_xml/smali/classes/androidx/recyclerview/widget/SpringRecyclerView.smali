.class public abstract Landroidx/recyclerview/widget/SpringRecyclerView;
.super Landroidx/recyclerview/widget/RemixRecyclerView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

.field public static final NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;

.field public static final VIEW_FLINGER:Ljava/lang/reflect/Field;


# instance fields
.field public mHorizontalOverScrolling:Z

.field public mManagedScrollState:I

.field public final mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

.field public final mSpringHelper:Lmiuix/spring/view/SpringHelper;

.field public final mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

.field public mVerticalOverScrolling:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    const-string v1, "mViewFlinger"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    .line 10
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    const-string v2, "mScrollingChildHelper"

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 20
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    new-instance v0, Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;

    .line 29
    invoke-direct {v0}, Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;-><init>()V

    .line 31
    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;

    .line 34
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    .line 38
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    throw v1

    .line 43
    :catch_1
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    .line 45
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    throw v1
    .line 50
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04063b    # @attr/recyclerViewStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RemixRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 5
    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$1;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 6
    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    .line 7
    new-instance p3, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    invoke-direct {p3, p0, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;Landroid/view/View;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 9
    :try_start_0
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    sget-object p2, Landroidx/recyclerview/widget/SpringRecyclerView;->NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    sget-object p2, Landroidx/recyclerview/widget/SpringRecyclerView;->NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;

    invoke-super {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    .line 12
    sget-boolean p2, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 2
    iget-object v1, v0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$1;

    .line 4
    iget v1, v1, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 6
    float-to-int v1, v1

    .line 8
    iget-object v0, v0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$1;

    .line 9
    iget v0, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 11
    float-to-int v0, v0

    .line 13
    if-nez v1, :cond_1

    .line 14
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 19
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 23
    move-result v2

    .line 26
    neg-int v1, v1

    .line 27
    int-to-float v1, v1

    .line 28
    neg-int v0, v0

    .line 29
    int-to-float v0, v0

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 34
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 37
    :goto_1
    return-void
    .line 40
.end method

.method public getSpringEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isOverScrolling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-boolean p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
    .line 14
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->springAvailable()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    iget-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 14
    if-nez p1, :cond_1

    .line 16
    iget-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 18
    if-eqz p1, :cond_2

    .line 20
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->stop()V

    .line 24
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 28
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 30
    :cond_2
    return-void
    .line 32
.end method

.method public bridge synthetic setOverScrollMode(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->setOverScrollMode(I)V

    .line 2
    return-void
    .line 5
.end method

.method public final setScrollState(I)V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_3

    .line 5
    if-nez p1, :cond_3

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 9
    iget-object v2, v0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$1;

    .line 11
    iget v2, v2, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 13
    float-to-int v2, v2

    .line 15
    iget-object v0, v0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$1;

    .line 16
    iget v0, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 18
    float-to-int v0, v0

    .line 20
    if-nez v2, :cond_0

    .line 21
    if-eqz v0, :cond_3

    .line 23
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    .line 25
    if-eqz v2, :cond_1

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 29
    iput-boolean v1, p1, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 31
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 35
    iput-boolean v1, p1, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 37
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 39
    const/4 v1, 0x2

    .line 41
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->resetFlingPosition()V

    .line 45
    iget-object v3, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 48
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    neg-int v7, v2

    .line 52
    neg-int v9, v0

    .line 53
    move v6, v7

    .line 54
    move v8, v9

    .line 55
    invoke-virtual/range {v3 .. v9}, Lmiuix/overscroller/widget/OverScroller;->springBack(IIIIII)Z

    .line 56
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->postOnAnimation()V

    .line 59
    return-void

    .line 62
    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 63
    return-void
    .line 66
.end method

.method public setSpringEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public final springAvailable()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->getSpringEnabled()Z

    .line 9
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
    .line 18
.end method
