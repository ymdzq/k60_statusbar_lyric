.class public final Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final anchorBounds:Landroid/graphics/Rect;

.field public final bounds:Landroid/graphics/Rect;

.field public final stashType:I

.field public final triggerStash:Z

.field public final unstashDestinationBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 3
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->anchorBounds:Landroid/graphics/Rect;

    .line 4
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->stashType:I

    .line 5
    iput-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->unstashDestinationBounds:Landroid/graphics/Rect;

    .line 6
    iput-boolean p5, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->triggerStash:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    .line 12
    iget-object v1, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 14
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 16
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->anchorBounds:Landroid/graphics/Rect;

    .line 25
    iget-object v3, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->anchorBounds:Landroid/graphics/Rect;

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->stashType:I

    .line 36
    iget v3, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->stashType:I

    .line 38
    if-eq v1, v3, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->unstashDestinationBounds:Landroid/graphics/Rect;

    .line 43
    iget-object v3, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->unstashDestinationBounds:Landroid/graphics/Rect;

    .line 45
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    return v2

    .line 53
    :cond_5
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->triggerStash:Z

    .line 54
    iget-boolean p1, p1, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->triggerStash:Z

    .line 56
    if-eq p0, p1, :cond_6

    .line 58
    return v2

    .line 60
    :cond_6
    return v0
    .line 61
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->anchorBounds:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    .line 12
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->stashType:I

    .line 19
    const/16 v2, 0x1f

    .line 21
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 23
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->unstashDestinationBounds:Landroid/graphics/Rect;

    .line 27
    if-nez v1, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    .line 33
    move-result v1

    .line 36
    :goto_0
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->triggerStash:Z

    .line 40
    if-eqz p0, :cond_1

    .line 42
    const/4 p0, 0x1

    .line 44
    :cond_1
    add-int/2addr v0, p0

    .line 45
    return v0
    .line 46
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Placement(bounds="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->bounds:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", anchorBounds="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->anchorBounds:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", stashType="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->stashType:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", unstashDestinationBounds="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->unstashDestinationBounds:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", triggerStash="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->triggerStash:Z

    .line 49
    const-string v1, ")"

    .line 51
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    return-object p0
    .line 57
.end method
