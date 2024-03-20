.class public abstract Lmiuix/spring/view/SpringHelper;
.super Ljava/lang/Object;
.source "SpringHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/spring/view/SpringHelper$AxisHandler;
    }
.end annotation


# instance fields
.field private mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

.field private mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lmiuix/spring/view/SpringHelper$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/spring/view/SpringHelper$1;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    .line 27
    new-instance v0, Lmiuix/spring/view/SpringHelper$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/spring/view/SpringHelper$2;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    return-void
.end method


# virtual methods
.method protected abstract canScrollHorizontally()Z
.end method

.method protected abstract canScrollVertically()Z
.end method

.method protected abstract dispatchNestedPreScroll(II[I[II)Z
.end method

.method protected abstract dispatchNestedScroll(IIII[II[I)V
.end method

.method protected abstract getHeight()I
.end method

.method public getHorizontalDistance()I
    .locals 0

    .line 48
    iget-object p0, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget p0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    float-to-int p0, p0

    return p0
.end method

.method public getVerticalDistance()I
    .locals 0

    .line 52
    iget-object p0, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget p0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    float-to-int p0, p0

    return p0
.end method

.method protected abstract getWidth()I
.end method

.method public handleNestedPreScroll(II[I[II)Z
    .locals 10

    const/4 v6, 0x0

    .line 56
    filled-new-array {v6, v6}, [I

    move-result-object v7

    .line 59
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->springAvailable()Z

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    if-nez p5, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v6

    .line 61
    :goto_0
    filled-new-array {p1, p2}, [I

    move-result-object v2

    .line 62
    iget-object v3, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {v3, v2, v7, v1}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedPreScroll([I[IZ)Z

    move-result v3

    .line 63
    iget-object v4, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {v4, v2, v7, v1}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedPreScroll([I[IZ)Z

    move-result v1

    or-int/2addr v1, v3

    .line 64
    aget v3, v2, v6

    .line 65
    aget v2, v2, v8

    move v9, v1

    goto :goto_1

    :cond_1
    move v3, p1

    move v2, p2

    move v9, v6

    :goto_1
    if-eqz v9, :cond_2

    .line 71
    aget v1, v7, v6

    sub-int/2addr v3, v1

    .line 72
    aget v1, v7, v8

    sub-int/2addr v2, v1

    :cond_2
    move v1, v3

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 75
    invoke-virtual/range {v0 .. v5}, Lmiuix/spring/view/SpringHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    or-int/2addr v0, v9

    if-eqz p3, :cond_3

    .line 79
    aget v1, p3, v6

    aget v2, v7, v6

    add-int/2addr v1, v2

    aput v1, p3, v6

    .line 80
    aget v1, p3, v8

    aget v2, v7, v8

    add-int/2addr v1, v2

    aput v1, p3, v8

    :cond_3
    return v0
.end method

.method public handleNestedScroll(IIII[II[I)V
    .locals 13

    move-object v8, p0

    move-object/from16 v9, p5

    move/from16 v10, p6

    const/4 v11, 0x0

    if-nez p7, :cond_0

    .line 88
    filled-new-array {v11, v11}, [I

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p7

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v12

    .line 91
    invoke-virtual/range {v0 .. v7}, Lmiuix/spring/view/SpringHelper;->dispatchNestedScroll(IIII[II[I)V

    .line 93
    aget v0, v12, v11

    sub-int v0, p3, v0

    const/4 v1, 0x1

    .line 94
    aget v1, v12, v1

    sub-int v1, p4, v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 96
    :cond_1
    iget-object v2, v8, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {v2, v0, v9, v10, v12}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedScroll(I[II[I)V

    .line 97
    iget-object v0, v8, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {v0, v1, v9, v10, v12}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedScroll(I[II[I)V

    :cond_2
    return-void
.end method

.method protected abstract springAvailable()Z
.end method

.method protected abstract vibrate()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
