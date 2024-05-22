.class public Landroidx/core/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mIsNestedScrollingEnabled:Z

.field public mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field public mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field public mTempNestedScrollConsumed:[I

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final dispatchNestedFling(FFZ)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 13
    :try_start_0
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    .line 15
    move-result v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    const-string p2, "ViewParent "

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string p2, " does not implement interface method onNestedFling"

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    const-string p2, "ViewParentCompat"

    .line 40
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_0
    :goto_0
    return v1
    .line 45
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 13
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    .line 15
    move-result v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    const-string p2, "ViewParent "

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string p2, " does not implement interface method onNestedPreFling"

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    const-string p2, "ViewParentCompat"

    .line 40
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_0
    :goto_0
    return v1
    .line 45
.end method

.method public dispatchNestedPreScroll(III[I[I)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v2, p1

    .line 3
    move v3, p2

    .line 4
    move/from16 v5, p3

    .line 5
    move-object/from16 v6, p5

    .line 7
    iget-boolean v1, v0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 9
    const/4 v7, 0x0

    .line 11
    if-eqz v1, :cond_a

    .line 12
    invoke-virtual {p0, v5}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 14
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    return v7

    .line 20
    :cond_0
    const/4 v8, 0x1

    .line 21
    if-nez v2, :cond_2

    .line 22
    if-eqz v3, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    if-eqz v6, :cond_a

    .line 27
    aput v7, v6, v7

    .line 29
    aput v7, v6, v8

    .line 31
    goto/16 :goto_4

    .line 33
    :cond_2
    :goto_0
    iget-object v9, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 35
    if-eqz v6, :cond_3

    .line 37
    invoke-virtual {v9, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 39
    aget v4, v6, v7

    .line 42
    aget v10, v6, v8

    .line 44
    move v11, v10

    .line 46
    move v10, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move v10, v7

    .line 49
    move v11, v10

    .line 50
    :goto_1
    if-nez p4, :cond_5

    .line 51
    iget-object v4, v0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 53
    if-nez v4, :cond_4

    .line 55
    const/4 v4, 0x2

    .line 57
    new-array v4, v4, [I

    .line 58
    iput-object v4, v0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 60
    :cond_4
    iget-object v4, v0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 62
    move-object v12, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    move-object/from16 v12, p4

    .line 66
    :goto_2
    aput v7, v12, v7

    .line 68
    aput v7, v12, v8

    .line 70
    iget-object v4, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 72
    instance-of v0, v1, Landroidx/core/view/NestedScrollingParent2;

    .line 74
    if-eqz v0, :cond_6

    .line 76
    move-object v0, v1

    .line 78
    check-cast v0, Landroidx/core/view/NestedScrollingParent2;

    .line 79
    move-object v1, v4

    .line 81
    move v2, p1

    .line 82
    move v3, p2

    .line 83
    move-object v4, v12

    .line 84
    move/from16 v5, p3

    .line 85
    invoke-interface/range {v0 .. v5}, Landroidx/core/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 87
    goto :goto_3

    .line 90
    :cond_6
    if-nez v5, :cond_7

    .line 91
    :try_start_0
    invoke-interface {v1, v4, p1, p2, v12}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_3

    .line 96
    :catch_0
    move-exception v0

    .line 97
    move-object v2, v0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    const-string v3, "ViewParent "

    .line 101
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, " does not implement interface method onNestedPreScroll"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 117
    const-string v1, "ViewParentCompat"

    .line 118
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    .line 123
    invoke-virtual {v9, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 125
    aget v0, v6, v7

    .line 128
    sub-int/2addr v0, v10

    .line 130
    aput v0, v6, v7

    .line 131
    aget v0, v6, v8

    .line 133
    sub-int/2addr v0, v11

    .line 135
    aput v0, v6, v8

    .line 136
    :cond_8
    aget v0, v12, v7

    .line 138
    if-nez v0, :cond_9

    .line 140
    aget v0, v12, v8

    .line 142
    if-eqz v0, :cond_a

    .line 144
    :cond_9
    move v7, v8

    .line 146
    :cond_a
    :goto_4
    return v7
    .line 147
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    return-void
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    move-result p0

    return p0
.end method

.method public final dispatchNestedScrollInternal(IIII[II[I)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p5

    .line 3
    move/from16 v6, p6

    .line 5
    iget-boolean v1, v0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 7
    const/4 v9, 0x0

    .line 9
    if-eqz v1, :cond_a

    .line 10
    invoke-virtual {p0, v6}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 12
    move-result-object v7

    .line 15
    if-nez v7, :cond_0

    .line 16
    return v9

    .line 18
    :cond_0
    const/4 v10, 0x1

    .line 19
    if-nez p1, :cond_2

    .line 20
    if-nez p2, :cond_2

    .line 22
    if-nez p3, :cond_2

    .line 24
    if-eqz p4, :cond_1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    if-eqz v8, :cond_a

    .line 29
    aput v9, v8, v9

    .line 31
    aput v9, v8, v10

    .line 33
    goto/16 :goto_4

    .line 35
    :cond_2
    :goto_0
    iget-object v11, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 37
    if-eqz v8, :cond_3

    .line 39
    invoke-virtual {v11, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 41
    aget v1, v8, v9

    .line 44
    aget v2, v8, v10

    .line 46
    move v12, v1

    .line 48
    move v13, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move v12, v9

    .line 51
    move v13, v12

    .line 52
    :goto_1
    if-nez p7, :cond_5

    .line 53
    iget-object v1, v0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 55
    if-nez v1, :cond_4

    .line 57
    const/4 v1, 0x2

    .line 59
    new-array v1, v1, [I

    .line 60
    iput-object v1, v0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 62
    :cond_4
    iget-object v1, v0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 64
    aput v9, v1, v9

    .line 66
    aput v9, v1, v10

    .line 68
    move-object v14, v1

    .line 70
    goto :goto_2

    .line 71
    :cond_5
    move-object/from16 v14, p7

    .line 72
    :goto_2
    iget-object v1, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 74
    instance-of v0, v7, Landroidx/core/view/NestedScrollingParent3;

    .line 76
    if-eqz v0, :cond_6

    .line 78
    move-object v0, v7

    .line 80
    check-cast v0, Landroidx/core/view/NestedScrollingParent3;

    .line 81
    move/from16 v2, p1

    .line 83
    move/from16 v3, p2

    .line 85
    move/from16 v4, p3

    .line 87
    move/from16 v5, p4

    .line 89
    move/from16 v6, p6

    .line 91
    move-object v7, v14

    .line 93
    invoke-interface/range {v0 .. v7}, Landroidx/core/view/NestedScrollingParent3;->onNestedScroll(Landroid/view/View;IIIII[I)V

    .line 94
    goto :goto_3

    .line 97
    :cond_6
    aget v0, v14, v9

    .line 98
    add-int v0, v0, p3

    .line 100
    aput v0, v14, v9

    .line 102
    aget v0, v14, v10

    .line 104
    add-int v0, v0, p4

    .line 106
    aput v0, v14, v10

    .line 108
    instance-of v0, v7, Landroidx/core/view/NestedScrollingParent2;

    .line 110
    if-eqz v0, :cond_7

    .line 112
    move-object v0, v7

    .line 114
    check-cast v0, Landroidx/core/view/NestedScrollingParent2;

    .line 115
    move/from16 v2, p1

    .line 117
    move/from16 v3, p2

    .line 119
    move/from16 v4, p3

    .line 121
    move/from16 v5, p4

    .line 123
    move/from16 v6, p6

    .line 125
    invoke-interface/range {v0 .. v6}, Landroidx/core/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 127
    goto :goto_3

    .line 130
    :cond_7
    if-nez v6, :cond_8

    .line 131
    move-object v0, v7

    .line 133
    move/from16 v2, p1

    .line 134
    move/from16 v3, p2

    .line 136
    move/from16 v4, p3

    .line 138
    move/from16 v5, p4

    .line 140
    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_3

    .line 145
    :catch_0
    move-exception v0

    .line 146
    move-object v1, v0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    const-string v2, "ViewParent "

    .line 150
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    const-string v2, " does not implement interface method onNestedScroll"

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 166
    const-string v2, "ViewParentCompat"

    .line 167
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :cond_8
    :goto_3
    if-eqz v8, :cond_9

    .line 172
    invoke-virtual {v11, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 174
    aget v0, v8, v9

    .line 177
    sub-int/2addr v0, v12

    .line 179
    aput v0, v8, v9

    .line 180
    aget v0, v8, v10

    .line 182
    sub-int/2addr v0, v13

    .line 184
    aput v0, v8, v10

    .line 185
    :cond_9
    return v10

    .line 187
    :cond_a
    :goto_4
    return v9
    .line 188
.end method

.method public final getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    .line 9
    return-object p0

    .line 11
    :cond_1
    iget-object p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 12
    return-object p0
    .line 14
.end method

.method public final hasNestedScrollingParent(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 6
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 8
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api21Impl;->stopNestedScroll(Landroid/view/View;)V

    .line 10
    :cond_0
    iput-boolean p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 13
    return-void
    .line 15
.end method

.method public final startNestedScroll(II)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p2}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 10
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_9

    .line 13
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v3

    .line 20
    move-object v4, v0

    .line 21
    :goto_0
    if-eqz v3, :cond_9

    .line 22
    instance-of v5, v3, Landroidx/core/view/NestedScrollingParent2;

    .line 24
    const-string v6, "ViewParentCompat"

    .line 26
    const-string v7, "ViewParent "

    .line 28
    if-eqz v5, :cond_1

    .line 30
    move-object v8, v3

    .line 32
    check-cast v8, Landroidx/core/view/NestedScrollingParent2;

    .line 33
    invoke-interface {v8, v4, v0, p1, p2}, Landroidx/core/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    .line 35
    move-result v8

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-nez p2, :cond_2

    .line 40
    :try_start_0
    invoke-interface {v3, v4, v0, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    .line 42
    move-result v8
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v8

    .line 47
    new-instance v9, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string v10, " does not implement interface method onStartNestedScroll"

    .line 56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v9

    .line 64
    invoke-static {v6, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :cond_2
    move v8, v2

    .line 68
    :goto_1
    if-eqz v8, :cond_7

    .line 69
    if-eqz p2, :cond_4

    .line 71
    if-eq p2, v1, :cond_3

    .line 73
    goto :goto_2

    .line 75
    :cond_3
    iput-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    .line 76
    goto :goto_2

    .line 78
    :cond_4
    iput-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 79
    :goto_2
    if-eqz v5, :cond_5

    .line 81
    check-cast v3, Landroidx/core/view/NestedScrollingParent2;

    .line 83
    invoke-interface {v3, v4, v0, p1, p2}, Landroidx/core/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 85
    goto :goto_3

    .line 88
    :cond_5
    if-nez p2, :cond_6

    .line 89
    :try_start_1
    invoke-interface {v3, v4, v0, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    goto :goto_3

    .line 94
    :catch_1
    move-exception p0

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string p2, " does not implement interface method onNestedScrollAccepted"

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 112
    invoke-static {v6, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :cond_6
    :goto_3
    return v1

    .line 116
    :cond_7
    instance-of v5, v3, Landroid/view/View;

    .line 117
    if-eqz v5, :cond_8

    .line 119
    move-object v4, v3

    .line 121
    check-cast v4, Landroid/view/View;

    .line 122
    :cond_8
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 124
    move-result-object v3

    .line 127
    goto :goto_0

    .line 128
    :cond_9
    return v2
    .line 129
.end method

.method public final stopNestedScroll(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    instance-of v1, v0, Landroidx/core/view/NestedScrollingParent2;

    .line 8
    iget-object v2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Landroidx/core/view/NestedScrollingParent2;

    .line 14
    invoke-interface {v0, p1, v2}, Landroidx/core/view/NestedScrollingParent2;->onStopNestedScroll(ILandroid/view/View;)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    :try_start_0
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "ViewParent "

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string v0, " does not implement interface method onStopNestedScroll"

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    const-string v2, "ViewParentCompat"

    .line 46
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_3

    .line 52
    const/4 v1, 0x1

    .line 54
    if-eq p1, v1, :cond_2

    .line 55
    goto :goto_1

    .line 57
    :cond_2
    iput-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    .line 58
    goto :goto_1

    .line 60
    :cond_3
    iput-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 61
    :cond_4
    :goto_1
    return-void
.end method
