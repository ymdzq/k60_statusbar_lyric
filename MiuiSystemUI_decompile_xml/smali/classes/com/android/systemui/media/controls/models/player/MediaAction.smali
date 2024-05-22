.class public final Lcom/android/systemui/media/controls/models/player/MediaAction;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final action:Ljava/lang/Runnable;

.field public final contentDescription:Ljava/lang/CharSequence;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final notificationAction:Landroid/app/Notification$Action;

.field public final rebindId:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/controls/models/player/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/app/Notification$Action;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/app/Notification$Action;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->action:Ljava/lang/Runnable;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->notificationAction:Landroid/app/Notification$Action;

    .line 7
    iput-object p5, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->rebindId:Ljava/lang/Integer;

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
    instance-of v1, p1, Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 12
    iget-object v1, p1, Lcom/android/systemui/media/controls/models/player/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

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
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->action:Ljava/lang/Runnable;

    .line 25
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaAction;->action:Ljava/lang/Runnable;

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
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    .line 36
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    const/4 v1, 0x0

    .line 47
    invoke-static {v1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 51
    if-nez v1, :cond_5

    .line 52
    return v2

    .line 54
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->notificationAction:Landroid/app/Notification$Action;

    .line 55
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaAction;->notificationAction:Landroid/app/Notification$Action;

    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result v1

    .line 62
    if-nez v1, :cond_6

    .line 63
    return v2

    .line 65
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->rebindId:Ljava/lang/Integer;

    .line 66
    iget-object p1, p1, Lcom/android/systemui/media/controls/models/player/MediaAction;->rebindId:Ljava/lang/Integer;

    .line 68
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    move-result p0

    .line 73
    if-nez p0, :cond_7

    .line 74
    return v2

    .line 76
    :cond_7
    return v0
    .line 77
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v1, :cond_0

    .line 5
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    .line 9
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget-object v2, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->action:Ljava/lang/Runnable;

    .line 15
    if-nez v2, :cond_1

    .line 17
    move v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    iget-object v2, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    .line 28
    if-nez v2, :cond_2

    .line 30
    move v2, v0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v1, v2

    .line 38
    mul-int/lit8 v1, v1, 0x1f

    .line 39
    add-int/2addr v1, v0

    .line 41
    mul-int/lit8 v1, v1, 0x1f

    .line 42
    iget-object v2, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->notificationAction:Landroid/app/Notification$Action;

    .line 44
    if-nez v2, :cond_3

    .line 46
    move v2, v0

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    invoke-virtual {v2}, Landroid/app/Notification$Action;->hashCode()I

    .line 50
    move-result v2

    .line 53
    :goto_3
    add-int/2addr v1, v2

    .line 54
    mul-int/lit8 v1, v1, 0x1f

    .line 55
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->rebindId:Ljava/lang/Integer;

    .line 57
    if-nez p0, :cond_4

    .line 59
    goto :goto_4

    .line 61
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 62
    move-result v0

    .line 65
    :goto_4
    add-int/2addr v1, v0

    .line 66
    return v1
    .line 67
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MediaAction(icon="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", action="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->action:Ljava/lang/Runnable;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", contentDescription="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", background=null, notificationAction="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->notificationAction:Landroid/app/Notification$Action;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", rebindId="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaAction;->rebindId:Ljava/lang/Integer;

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string p0, ")"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    return-object p0
    .line 63
.end method
