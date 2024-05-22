.class public final Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final backgroundPaint:Landroid/graphics/Paint;

.field public bitmapShader:Landroid/graphics/BitmapShader;

.field public final cornerRadius:I

.field public final paint:Landroid/graphics/Paint;

.field public final previewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

.field public final previewRect:Landroid/graphics/Rect;

.field public task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

.field public thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x10104e2    # @android:attr/colorBackgroundFloating

    .line 5
    filled-new-array {p2}, [I

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    const/high16 v0, -0x1000000

    .line 7
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    const-class p2, Landroid/view/WindowManager;

    sget-object v0, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 11
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/view/WindowManager;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->windowManager:Landroid/view/WindowManager;

    .line 13
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    .line 14
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->backgroundPaint:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707b6    # @dimen/media_projection_app_selector_task_rounded_corners '10.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->cornerRadius:I

    .line 16
    new-instance p1, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    invoke-direct {p1}, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final bindTask(Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 4
    const/high16 p2, -0x1000000

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;->colorBackground:Ljava/lang/Integer;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, p2

    .line 19
    :goto_0
    or-int/2addr p1, p2

    .line 20
    iget-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->backgroundPaint:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 31
    const/4 p2, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 36
    goto :goto_1

    .line 38
    :cond_1
    move-object p1, p2

    .line 39
    :goto_1
    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 42
    new-instance p2, Landroid/graphics/BitmapShader;

    .line 45
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 47
    invoke-direct {p2, p1, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 49
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 52
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->updateThumbnailMatrix()V

    .line 59
    goto :goto_2

    .line 62
    :cond_2
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 70
    return-void
    .line 73
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    const/4 v1, 0x0

    .line 2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    move-result v0

    .line 8
    int-to-float v3, v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v0

    .line 13
    const/4 v8, 0x1

    .line 14
    sub-int/2addr v0, v8

    .line 15
    int-to-float v4, v0

    .line 16
    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->cornerRadius:I

    .line 17
    int-to-float v5, v0

    .line 19
    int-to-float v6, v0

    .line 20
    iget-object v7, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->backgroundPaint:Landroid/graphics/Paint;

    .line 21
    move-object v0, p1

    .line 23
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->task:Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 31
    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 35
    if-nez v0, :cond_0

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    const/4 v8, 0x0

    .line 40
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 41
    return-void

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 46
    move-result v0

    .line 49
    int-to-float v3, v0

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    move-result v0

    .line 54
    int-to-float v4, v0

    .line 55
    iget v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->cornerRadius:I

    .line 56
    int-to-float v5, v0

    .line 58
    int-to-float v6, v0

    .line 59
    iget-object v7, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    .line 60
    move-object v0, p1

    .line 62
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 63
    return-void
    .line 66
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->updateThumbnailMatrix()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    return-void
    .line 8
.end method

.method public final updateThumbnailMatrix()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 9
    if-nez v1, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 14
    if-nez v2, :cond_1

    .line 16
    return-void

    .line 18
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 23
    move-result-object v3

    .line 26
    if-nez v3, :cond_2

    .line 27
    return-void

    .line 29
    :cond_2
    iget-object v4, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->windowManager:Landroid/view/WindowManager;

    .line 30
    invoke-interface {v4}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 32
    move-result-object v4

    .line 35
    iget-object v5, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewRect:Landroid/graphics/Rect;

    .line 36
    iget-object v6, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 40
    move-result v7

    .line 43
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 44
    move-result v6

    .line 47
    const/4 v8, 0x0

    .line 48
    invoke-virtual {v5, v8, v8, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 49
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    .line 52
    move-result v3

    .line 55
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 56
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 60
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 63
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 70
    move-result v4

    .line 73
    const/4 v5, 0x1

    .line 74
    if-ne v4, v5, :cond_3

    .line 75
    move v4, v5

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move v4, v8

    .line 79
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v6

    .line 83
    invoke-static {v6}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    .line 84
    move-result v6

    .line 87
    if-eqz v6, :cond_4

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 90
    move-result-object v7

    .line 93
    const v9, 0x10502cb    # @android:dimen/timepicker_edit_text_size

    .line 94
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    :cond_4
    iget-object v7, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    .line 100
    iget-object v9, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewRect:Landroid/graphics/Rect;

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 104
    move-result v10

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 108
    move-result v11

    .line 111
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    iget v12, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    .line 115
    sub-int/2addr v12, v3

    .line 117
    if-gez v12, :cond_5

    .line 118
    add-int/lit8 v12, v12, 0x4

    .line 120
    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    .line 122
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 124
    iget v13, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    .line 127
    if-ne v13, v5, :cond_6

    .line 129
    if-nez v6, :cond_6

    .line 131
    move v6, v5

    .line 133
    goto :goto_1

    .line 134
    :cond_6
    move v6, v8

    .line 135
    :goto_1
    const/4 v13, 0x3

    .line 136
    if-eq v12, v5, :cond_8

    .line 137
    if-ne v12, v13, :cond_7

    .line 139
    goto :goto_2

    .line 141
    :cond_7
    move v14, v8

    .line 142
    goto :goto_3

    .line 143
    :cond_8
    :goto_2
    move v14, v5

    .line 144
    :goto_3
    if-eqz v14, :cond_9

    .line 145
    if-eqz v6, :cond_9

    .line 147
    move v14, v5

    .line 149
    goto :goto_4

    .line 150
    :cond_9
    move v14, v8

    .line 151
    :goto_4
    const/4 v15, 0x0

    .line 152
    iget v8, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    .line 153
    if-eqz v10, :cond_18

    .line 155
    if-eqz v11, :cond_18

    .line 157
    cmpl-float v17, v8, v15

    .line 159
    if-nez v17, :cond_a

    .line 161
    goto/16 :goto_e

    .line 163
    :cond_a
    if-lez v12, :cond_b

    .line 165
    if-eqz v6, :cond_b

    .line 167
    move v6, v5

    .line 169
    goto :goto_5

    .line 170
    :cond_b
    const/4 v6, 0x0

    .line 171
    :goto_5
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 172
    move-result v13

    .line 175
    int-to-float v13, v13

    .line 176
    div-float/2addr v13, v8

    .line 177
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 178
    move-result v5

    .line 181
    int-to-float v5, v5

    .line 182
    div-float/2addr v5, v8

    .line 183
    int-to-float v10, v10

    .line 184
    int-to-float v11, v11

    .line 185
    div-float v18, v10, v11

    .line 186
    if-eqz v6, :cond_c

    .line 188
    div-float v19, v5, v13

    .line 190
    goto :goto_6

    .line 192
    :cond_c
    div-float v19, v13, v5

    .line 193
    :goto_6
    sub-float v20, v18, v19

    .line 195
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    .line 197
    move-result v20

    .line 200
    add-float v18, v18, v19

    .line 201
    const/high16 v19, 0x40000000    # 2.0f

    .line 203
    div-float v18, v18, v19

    .line 205
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    .line 207
    move-result v18

    .line 210
    div-float v20, v20, v18

    .line 211
    const v18, 0x3dcccccd    # 0.1f

    .line 213
    cmpl-float v18, v20, v18

    .line 216
    if-lez v18, :cond_d

    .line 218
    const/16 v18, 0x1

    .line 220
    goto :goto_7

    .line 222
    :cond_d
    const/16 v18, 0x0

    .line 223
    :goto_7
    if-eqz v6, :cond_e

    .line 225
    if-eqz v18, :cond_e

    .line 227
    const/4 v6, 0x0

    .line 229
    const/16 v16, 0x0

    .line 230
    goto :goto_8

    .line 232
    :cond_e
    move/from16 v16, v14

    .line 233
    :goto_8
    if-eqz v18, :cond_f

    .line 235
    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    .line 237
    iget v14, v2, Landroid/graphics/Rect;->left:I

    .line 239
    int-to-float v14, v14

    .line 241
    iput v14, v3, Landroid/graphics/RectF;->left:F

    .line 242
    iget v15, v2, Landroid/graphics/Rect;->right:I

    .line 244
    int-to-float v15, v15

    .line 246
    iput v15, v3, Landroid/graphics/RectF;->right:F

    .line 247
    move/from16 v19, v6

    .line 249
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 251
    int-to-float v6, v6

    .line 253
    iput v6, v3, Landroid/graphics/RectF;->top:F

    .line 254
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 256
    int-to-float v2, v2

    .line 258
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 259
    add-float/2addr v14, v15

    .line 261
    sub-float v14, v13, v14

    .line 262
    add-float/2addr v6, v2

    .line 264
    sub-float v2, v5, v6

    .line 265
    goto :goto_9

    .line 267
    :cond_f
    move/from16 v19, v6

    .line 268
    move v2, v5

    .line 270
    move v14, v13

    .line 271
    :goto_9
    if-eqz v16, :cond_10

    .line 272
    move/from16 v21, v11

    .line 274
    move v11, v10

    .line 276
    move/from16 v10, v21

    .line 277
    :cond_10
    div-float v6, v10, v11

    .line 279
    div-float v15, v14, v6

    .line 281
    cmpl-float v16, v15, v2

    .line 283
    if-lez v16, :cond_13

    .line 285
    cmpg-float v15, v2, v11

    .line 287
    if-gez v15, :cond_11

    .line 289
    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    .line 291
    move-result v5

    .line 294
    move v15, v5

    .line 295
    goto :goto_a

    .line 296
    :cond_11
    move v15, v2

    .line 297
    :goto_a
    mul-float v5, v15, v6

    .line 298
    cmpl-float v11, v5, v13

    .line 300
    if-lez v11, :cond_12

    .line 302
    div-float v15, v13, v6

    .line 304
    goto :goto_b

    .line 306
    :cond_12
    move v13, v5

    .line 307
    goto :goto_b

    .line 308
    :cond_13
    move v13, v14

    .line 309
    :goto_b
    if-eqz v4, :cond_14

    .line 310
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 312
    sub-float/2addr v14, v13

    .line 314
    add-float/2addr v14, v4

    .line 315
    iput v14, v3, Landroid/graphics/RectF;->left:F

    .line 316
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 318
    const/4 v5, 0x0

    .line 320
    cmpg-float v6, v4, v5

    .line 321
    if-gez v6, :cond_15

    .line 323
    add-float/2addr v14, v4

    .line 325
    iput v14, v3, Landroid/graphics/RectF;->left:F

    .line 326
    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 328
    goto :goto_c

    .line 330
    :cond_14
    const/4 v5, 0x0

    .line 331
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 332
    sub-float/2addr v14, v13

    .line 334
    add-float/2addr v14, v4

    .line 335
    iput v14, v3, Landroid/graphics/RectF;->right:F

    .line 336
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 338
    cmpg-float v6, v4, v5

    .line 340
    if-gez v6, :cond_15

    .line 342
    add-float/2addr v14, v4

    .line 344
    iput v14, v3, Landroid/graphics/RectF;->right:F

    .line 345
    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 347
    :cond_15
    :goto_c
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 349
    sub-float/2addr v2, v15

    .line 351
    add-float/2addr v2, v4

    .line 352
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 353
    iget v4, v3, Landroid/graphics/RectF;->top:F

    .line 355
    cmpg-float v6, v4, v5

    .line 357
    if-gez v6, :cond_16

    .line 359
    add-float/2addr v2, v4

    .line 361
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 362
    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 364
    goto :goto_d

    .line 366
    :cond_16
    cmpg-float v6, v2, v5

    .line 367
    if-gez v6, :cond_17

    .line 369
    add-float/2addr v4, v2

    .line 371
    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 372
    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 374
    :cond_17
    :goto_d
    mul-float/2addr v13, v8

    .line 376
    div-float/2addr v10, v13

    .line 377
    move/from16 v16, v19

    .line 378
    goto :goto_f

    .line 380
    :cond_18
    :goto_e
    move v5, v15

    .line 381
    move v10, v5

    .line 382
    const/16 v16, 0x0

    .line 383
    :goto_f
    iget-object v2, v7, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    .line 385
    if-nez v16, :cond_19

    .line 387
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 389
    neg-float v4, v4

    .line 391
    mul-float/2addr v4, v8

    .line 392
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 393
    neg-float v3, v3

    .line 395
    mul-float/2addr v3, v8

    .line 396
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 397
    goto :goto_12

    .line 400
    :cond_19
    mul-int/lit8 v3, v12, 0x5a

    .line 401
    int-to-float v3, v3

    .line 403
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 404
    const/4 v3, 0x1

    .line 407
    if-eq v12, v3, :cond_1c

    .line 408
    const/4 v3, 0x2

    .line 410
    if-eq v12, v3, :cond_1b

    .line 411
    const/4 v3, 0x3

    .line 413
    if-eq v12, v3, :cond_1a

    .line 414
    move v15, v5

    .line 416
    goto :goto_11

    .line 417
    :cond_1a
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 418
    move-result v3

    .line 421
    move v15, v5

    .line 422
    goto :goto_10

    .line 423
    :cond_1b
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 424
    move-result v3

    .line 427
    int-to-float v15, v3

    .line 428
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 429
    move-result v3

    .line 432
    :goto_10
    int-to-float v3, v3

    .line 433
    move v5, v3

    .line 434
    goto :goto_11

    .line 435
    :cond_1c
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 436
    move-result v3

    .line 439
    int-to-float v3, v3

    .line 440
    move v15, v3

    .line 441
    :goto_11
    invoke-virtual {v2, v15, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 442
    :goto_12
    invoke-virtual {v2, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 445
    iget-object v2, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->previewPositionHelper:Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;

    .line 448
    iget-object v2, v2, Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    .line 450
    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 452
    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->paint:Landroid/graphics/Paint;

    .line 455
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 457
    return-void
    .line 460
.end method
