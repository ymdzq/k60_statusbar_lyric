.class public abstract Lcom/android/systemui/screenshot/ScreenshotPolicyImplKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final toDisplayContentInfo(Landroid/app/ActivityTaskManager$RootTaskInfo;)Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    .line 6
    array-length v2, v1

    .line 8
    add-int/lit8 v2, v2, -0x1

    .line 9
    aget v1, v1, v2

    .line 11
    iget-object v3, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    .line 13
    aget v3, v3, v2

    .line 15
    iget-object p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    .line 17
    aget-object p0, p0, v2

    .line 19
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    .line 21
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 23
    move-result-object v3

    .line 26
    invoke-direct {v2, v0, p0, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;-><init>(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/UserHandle;I)V

    .line 27
    return-object v2

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    const-string/jumbo v0, "should not be null"

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
    .line 43
.end method
