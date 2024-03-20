.class public Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;
.super Ljava/lang/Object;
.source "MiuiFaceEnrollDimenHelper.java"


# direct methods
.method public static getCameraContainerHeight(Landroid/content/Context;)I
    .locals 2

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {p0, v1}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static getCameraPreviewExtraCircle(Landroid/content/Context;)I
    .locals 1

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 99
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_extra_circles_land:I

    goto :goto_0

    .line 100
    :cond_0
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_extra_circles:I

    .line 97
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getCameraPreviewHeight(Landroid/content/Context;)I
    .locals 1

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 46
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_height_land:I

    goto :goto_0

    .line 47
    :cond_0
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_height:I

    .line 44
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getCameraPreviewOffSet(Landroid/content/Context;)I
    .locals 6

    .line 109
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_width_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_height_land:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 115
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraContainerHeight(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, v0

    .line 116
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p0

    return v1

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_cover_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getCameraPreviewTop(Landroid/content/Context;)I
    .locals 5

    .line 84
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_width_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 88
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraContainerHeight(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, v1

    .line 89
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    return p0

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_iner_top:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getCameraPreviewWidth(Landroid/content/Context;)I
    .locals 1

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 34
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_width_land:I

    goto :goto_0

    .line 35
    :cond_0
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_width:I

    .line 32
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getEnrollDetectEnd(Landroid/content/Context;)I
    .locals 1

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 252
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 253
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_detect_image_end_land:I

    goto :goto_0

    .line 254
    :cond_0
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_detect_image_end:I

    .line 251
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getEnrollDetectRepeatEnd(Landroid/content/Context;)I
    .locals 1

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 259
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 260
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_detect_image_repeta_end_land:I

    goto :goto_0

    .line 261
    :cond_0
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_detect_image_repeta_end:I

    .line 258
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getEnrollSuggestionDetectEnd(Landroid/content/Context;)I
    .locals 1

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 238
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 239
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_suggesiton_detect_image_end_land:I

    goto :goto_0

    .line 240
    :cond_0
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_suggesiton_detect_image_end:I

    .line 237
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getEnrollSuggestionDetectRepeatEnd(Landroid/content/Context;)I
    .locals 1

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 245
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 246
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_suggesiton_detect_image_repeta_end_land:I

    goto :goto_0

    .line 247
    :cond_0
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_suggesiton_detect_image_repeta_end:I

    .line 244
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getGridLineEndPointX(Landroid/content/Context;)I
    .locals 1

    .line 186
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getGridLineStartPointX(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getPreviewCircleRadius(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_line_end_xposition:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getGridLineEndPointY(Landroid/content/Context;)I
    .locals 1

    .line 195
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getGridLineStartPointY(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getPreviewCircleRadius(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_line_end_yposition:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getGridLineStartPointX(Landroid/content/Context;)I
    .locals 2

    .line 165
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getPreviewCircleRadius(Landroid/content/Context;)I

    move-result v0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_width_land:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    .line 169
    div-int/lit8 p0, p0, 0x2

    return p0

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_line_start_xposition:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getGridLineStartPointY(Landroid/content/Context;)I
    .locals 1

    .line 177
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraPreviewTop(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getGridLineStartPointX(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_line_start_yposition:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getPreviewCircleRadius(Landroid/content/Context;)I
    .locals 1

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 160
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_circle_radius_land:I

    goto :goto_0

    .line 161
    :cond_0
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_circle_radius:I

    .line 158
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getPreviewDetectInitX(Landroid/content/Context;)I
    .locals 2

    .line 131
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_width_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$dimen;->miui_face_enroll_detect_size_land:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_detect_initX:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getPreviewDetectInitY(Landroid/content/Context;)I
    .locals 2

    .line 147
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miui_face_enroll_camera_preview_width_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 150
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraContainerHeight(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    return p0

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_detect_initY:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getPreviewDetectSize(Landroid/content/Context;)I
    .locals 1

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 126
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_detect_size_land:I

    goto :goto_0

    .line 127
    :cond_0
    sget p0, Lcom/android/settings/R$dimen;->miui_face_enroll_detect_size:I

    .line 124
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getProgressCircleLeft(Landroid/content/Context;)I
    .locals 2

    .line 204
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miui_face_enroll_progress_circle_offset_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 207
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getGridLineStartPointX(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr p0, v0

    return p0

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_progress_circle_left:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getProgressCircleTop(Landroid/content/Context;)I
    .locals 2

    .line 215
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miui_face_enroll_progress_circle_offset_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 218
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getGridLineStartPointY(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr p0, v0

    return p0

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_progress_circle_top:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getProgressCircleWidth(Landroid/content/Context;)I
    .locals 2

    .line 226
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miui_face_enroll_progress_circle_offset_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 229
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getPreviewCircleRadius(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    return p0

    .line 231
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_progress_circle_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getSuggestionVideoMarginTop(Landroid/content/Context;)I
    .locals 3

    .line 67
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraContainerHeight(Landroid/content/Context;)I

    move-result v0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->miui_face_enroll_suggestion_video_height_land:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x41700000    # 15.0f

    .line 71
    invoke-static {p0, v1}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->miui_face_enroll_suggestion_video_top:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static isUseLandVersionLayout(Landroid/content/Context;)Z
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/settings/MiuiKeyguardSettingsUtils;->HAS_CAMERA_IN_LARGESCREEN:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
