.class Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field finalBounds:Landroid/graphics/Rect;

.field finalRadius:F

.field pendingChanges:Ljava/util/concurrent/ArrayBlockingQueue;

.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 7
    const/4 v0, 0x3

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->pendingChanges:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 13
    new-instance p1, Landroid/graphics/Rect;

    .line 15
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->finalBounds:Landroid/graphics/Rect;

    .line 20
    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->finalRadius:F

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public addPendingSizeChange(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->pendingChanges:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 10
    new-instance v0, Landroid/util/Pair;

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    .line 14
    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 16
    invoke-direct {v0, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    const-string p2, "addPendingSizeChange error, windowBounds :"

    .line 32
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    const-string p1, "MiuiInfinityModeSurfaceAnimable"

    .line 44
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 p0, 0x0

    .line 49
    return p0
    .line 50
.end method

.method public applyResizingDirectly()V
    .locals 8

    .line 1
    const-string v0, "MiuiInfinityModeSurfaceAnimable"

    .line 2
    const-string v1, "applyResizingDirectly,   size:"

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->pendingChanges:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 6
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    .line 8
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->pendingChanges:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 21
    move-result v1

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->pendingChanges:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 35
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    check-cast v1, Landroid/util/Pair;

    .line 41
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->finalBounds:Landroid/graphics/Rect;

    .line 43
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 45
    move-result v2

    .line 48
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->finalBounds:Landroid/graphics/Rect;

    .line 49
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 51
    move-result v3

    .line 54
    int-to-float v2, v2

    .line 55
    const/high16 v4, 0x3f800000    # 1.0f

    .line 56
    mul-float/2addr v2, v4

    .line 58
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 59
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 61
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 63
    move-result v5

    .line 66
    int-to-float v5, v5

    .line 67
    div-float/2addr v2, v5

    .line 68
    int-to-float v3, v3

    .line 69
    mul-float/2addr v3, v4

    .line 70
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 71
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskBounds:Landroid/graphics/Rect;

    .line 73
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 75
    move-result v4

    .line 78
    int-to-float v4, v4

    .line 79
    div-float/2addr v3, v4

    .line 80
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->finalRadius:F

    .line 81
    div-float v5, v4, v2

    .line 83
    div-float/2addr v4, v3

    .line 85
    new-instance v6, Landroid/view/SurfaceControl$Transaction;

    .line 86
    invoke-direct {v6}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 88
    new-instance v7, Landroid/graphics/Matrix;

    .line 91
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 93
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 96
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 99
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 101
    move-result-object v2

    .line 104
    invoke-virtual {v6, v2, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 105
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 108
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 110
    move-result-object v2

    .line 113
    const/16 v3, 0x9

    .line 114
    new-array v3, v3, [F

    .line 116
    invoke-virtual {v6, v2, v7, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 118
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 121
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 123
    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->finalBounds:Landroid/graphics/Rect;

    .line 127
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 129
    int-to-float v4, v4

    .line 131
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 132
    int-to-float v3, v3

    .line 134
    invoke-virtual {v6, v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 135
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 138
    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 140
    invoke-virtual {v6, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 142
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    const-string v3, "applyResizingDirectly, InterruptedException :"

    .line 153
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->applyResizingDirectly()V

    .line 168
    :cond_0
    return-void
    .line 171
.end method

.method public resizingMergeNextFrame(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 4

    const-string v0, "MiuiInfinityModeSurfaceAnimable"

    const-string v1, "resizingMergeNextFrame, mTaskBounds:"

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->pendingChanges:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->pendingChanges:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 12
    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 14
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 15
    invoke-virtual {p3, p2, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 16
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "resizingMergeNextFrame, InterruptedException :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3
.end method

.method public resizingMergeNextFrame(Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)Z
    .locals 4

    const-string v0, "MiuiInfinityModeSurfaceAnimable"

    const-string v1, "resizingMergeNextFrame, mTaskBounds:"

    .line 1
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->pendingChanges:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->pendingChanges:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 3
    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 6
    invoke-virtual {p2, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;

    .line 7
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "resizingMergeNextFrame, InterruptedException :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3
.end method

.method public updateFinalBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->finalBounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public updateFinalRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$PendingResizingWindowSuturer;->finalRadius:F

    .line 2
    return-void
    .line 4
.end method
