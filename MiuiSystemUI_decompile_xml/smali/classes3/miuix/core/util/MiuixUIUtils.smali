.class public abstract Lmiuix/core/util/MiuixUIUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    return-void
    .line 7
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 10
    int-to-float p0, p0

    .line 12
    const/high16 v0, 0x43200000    # 160.0f

    .line 13
    const/high16 v1, 0x3f000000    # 0.5f

    .line 15
    invoke-static {p0, v0, p1, v1}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 17
    move-result p0

    .line 20
    float-to-int p0, p0

    .line 21
    return p0
    .line 22
.end method

.method public static isFreeformMode(Landroid/content/Context;)Z
    .locals 7

    .line 1
    const-string v0, "window"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Landroid/view/WindowManager;

    .line 8
    new-instance v2, Landroid/graphics/Point;

    .line 10
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 12
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 19
    new-instance v1, Landroid/graphics/Point;

    .line 22
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/view/WindowManager;

    .line 31
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 33
    move-result-object v3

    .line 36
    const/4 v4, 0x1

    .line 37
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    move-result-object v5

    .line 41
    const-string v6, "mDisplayInfo"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 42
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 44
    move-result-object v5

    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 48
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 54
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    move-result-object v5

    .line 58
    const-string v6, "logicalWidth"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 59
    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 61
    move-result-object v5

    .line 64
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 65
    :try_start_5
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object v5
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 71
    :try_start_6
    check-cast v5, Ljava/lang/Integer;

    .line 72
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v5

    .line 77
    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    move-result-object v5

    .line 83
    const-string v6, "logicalHeight"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 84
    :try_start_7
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 86
    move-result-object v5

    .line 89
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 90
    :try_start_8
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v3
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 96
    :try_start_9
    check-cast v3, Ljava/lang/Integer;

    .line 97
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 99
    move-result v3

    .line 102
    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 103
    goto :goto_0

    .line 105
    :catch_0
    move-exception v3

    .line 106
    new-instance v5, Ljava/lang/RuntimeException;

    .line 107
    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 109
    throw v5

    .line 112
    :catch_1
    move-exception v3

    .line 113
    new-instance v5, Ljava/lang/RuntimeException;

    .line 114
    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 116
    throw v5

    .line 119
    :catch_2
    move-exception v3

    .line 120
    new-instance v5, Ljava/lang/RuntimeException;

    .line 121
    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    throw v5

    .line 126
    :catch_3
    move-exception v3

    .line 127
    new-instance v5, Ljava/lang/RuntimeException;

    .line 128
    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 130
    throw v5

    .line 133
    :catch_4
    move-exception v3

    .line 134
    new-instance v5, Ljava/lang/RuntimeException;

    .line 135
    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 137
    throw v5

    .line 140
    :catch_5
    move-exception v3

    .line 141
    new-instance v5, Ljava/lang/RuntimeException;

    .line 142
    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 144
    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 147
    :catch_6
    move-exception v3

    .line 148
    new-instance v5, Landroid/util/DisplayMetrics;

    .line 149
    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 151
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 154
    move-result-object v0

    .line 157
    invoke-virtual {v0, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 158
    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 161
    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 163
    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 165
    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 167
    const-string v0, "MiuixUtils"

    .line 169
    const-string v5, "catch error! failed to get physical size"

    .line 171
    invoke-static {v0, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :goto_0
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 176
    int-to-float v0, v0

    .line 178
    const/4 v3, 0x0

    .line 179
    add-float/2addr v0, v3

    .line 180
    iget v5, v1, Landroid/graphics/Point;->x:I

    .line 181
    int-to-float v5, v5

    .line 183
    div-float/2addr v0, v5

    .line 184
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 185
    int-to-float v2, v2

    .line 187
    add-float/2addr v2, v3

    .line 188
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 189
    int-to-float v1, v1

    .line 191
    div-float/2addr v2, v1

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    move-result-object p0

    .line 196
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 197
    move-result-object p0

    .line 200
    invoke-virtual {p0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    .line 201
    move-result-object p0

    .line 204
    const-string v1, "mWindowingMode=freeform"

    .line 205
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 207
    move-result p0

    .line 210
    if-eqz p0, :cond_0

    .line 211
    const p0, 0x3f666666    # 0.9f

    .line 213
    cmpg-float v0, v0, p0

    .line 216
    if-lez v0, :cond_1

    .line 218
    cmpg-float p0, v2, p0

    .line 220
    if-gtz p0, :cond_0

    .line 222
    goto :goto_1

    .line 224
    :cond_0
    const/4 v4, 0x0

    .line 225
    :cond_1
    :goto_1
    return v4
    .line 226
.end method

.method public static isInMultiWindowMode(Landroid/content/Context;)Z
    .locals 1

    .line 1
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    instance-of v0, p0, Landroid/app/Activity;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    check-cast p0, Landroid/app/Activity;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    .line 17
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 19
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
    .line 25
.end method
