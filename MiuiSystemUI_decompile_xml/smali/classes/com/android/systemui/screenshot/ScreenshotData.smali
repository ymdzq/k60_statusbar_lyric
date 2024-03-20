.class public final Lcom/android/systemui/screenshot/ScreenshotData;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public contextUrl:Landroid/net/Uri;

.field public insets:Landroid/graphics/Insets;

.field public screenBounds:Landroid/graphics/Rect;

.field public final source:I

.field public taskId:I

.field public topComponent:Landroid/content/ComponentName;

.field public type:I

.field public userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(IILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/graphics/Rect;ILandroid/graphics/Insets;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 5
    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    .line 13
    iput p6, p0, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    .line 15
    iput-object p7, p0, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->contextUrl:Landroid/net/Uri;

    .line 22
    return-void
    .line 24
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
    instance-of v1, p1, Lcom/android/systemui/screenshot/ScreenshotData;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotData;

    .line 12
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 14
    iget v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 16
    if-eq v1, v3, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    .line 21
    iget v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 28
    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 30
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    .line 39
    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    .line 41
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    .line 50
    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    .line 52
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    return v2

    .line 60
    :cond_6
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    .line 61
    iget v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    .line 63
    if-eq v1, v3, :cond_7

    .line 65
    return v2

    .line 67
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    .line 68
    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    .line 70
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 75
    if-nez v1, :cond_8

    .line 76
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 79
    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 81
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    return v2

    .line 89
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->contextUrl:Landroid/net/Uri;

    .line 90
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotData;->contextUrl:Landroid/net/Uri;

    .line 92
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    move-result p0

    .line 97
    if-nez p0, :cond_a

    .line 98
    return v2

    .line 100
    :cond_a
    return v0
    .line 101
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 18
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_0

    .line 21
    move v1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    .line 25
    move-result v1

    .line 28
    :goto_0
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    .line 32
    if-nez v1, :cond_1

    .line 34
    move v1, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    .line 38
    move-result v1

    .line 41
    :goto_1
    add-int/2addr v0, v1

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    .line 45
    if-nez v1, :cond_2

    .line 47
    move v1, v2

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    .line 51
    move-result v1

    .line 54
    :goto_2
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    .line 58
    const/16 v3, 0x1f

    .line 60
    invoke-static {v1, v0, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 62
    move-result v0

    .line 65
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Insets;->hashCode()I

    .line 68
    move-result v1

    .line 71
    add-int/2addr v1, v0

    .line 72
    mul-int/lit8 v1, v1, 0x1f

    .line 73
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 75
    if-nez v0, :cond_3

    .line 77
    move v0, v2

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hashCode()I

    .line 81
    move-result v0

    .line 84
    :goto_3
    add-int/2addr v1, v0

    .line 85
    mul-int/lit8 v1, v1, 0x1f

    .line 86
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->contextUrl:Landroid/net/Uri;

    .line 88
    if-nez p0, :cond_4

    .line 90
    goto :goto_4

    .line 92
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->hashCode()I

    .line 93
    move-result v2

    .line 96
    :goto_4
    add-int/2addr v1, v2

    .line 97
    return v1
    .line 98
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    .line 8
    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    .line 10
    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    .line 12
    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 14
    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotData;->contextUrl:Landroid/net/Uri;

    .line 16
    const-string v8, "ScreenshotData(type="

    .line 18
    const-string v9, ", source="

    .line 20
    invoke-static {v8, v0, v9}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v0

    .line 25
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string p0, ", userHandle="

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string p0, ", topComponent="

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string p0, ", screenBounds="

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string p0, ", taskId="

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string p0, ", insets="

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string p0, ", bitmap="

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string p0, ", contextUrl="

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string p0, ")"

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 95
    return-object p0
    .line 96
.end method
