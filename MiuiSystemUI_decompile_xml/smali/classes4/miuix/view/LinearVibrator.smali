.class Lmiuix/view/LinearVibrator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/view/HapticFeedbackProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearVibrator"


# instance fields
.field private final mIds:Landroidx/collection/SparseArrayCompat;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lmiuix/view/LinearVibrator;->initialize()V

    .line 2
    return-void
    .line 5
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 5
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 10
    invoke-direct {p0}, Lmiuix/view/LinearVibrator;->buildIds()V

    .line 12
    return-void
    .line 15
.end method

.method private buildIds()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 2
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 4
    const/high16 v2, 0x10000000

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 15
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 17
    const v2, 0x10000001

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 29
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK:I

    .line 31
    const v2, 0x10000002

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 43
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 45
    const v2, 0x10000003

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 57
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_HEAVY:I

    .line 59
    const v2, 0x10000004

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 71
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 73
    const v2, 0x10000005

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 85
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    .line 87
    const v2, 0x10000006

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 99
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_LONG_PRESS:I

    .line 101
    const v2, 0x10000007

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 113
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    .line 115
    const v2, 0x10000008

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 127
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    .line 129
    const v2, 0x10000009

    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 138
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 141
    const/4 v1, 0x2

    .line 143
    if-ge v0, v1, :cond_0

    .line 144
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 147
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_PICK_UP:I

    .line 149
    const v3, 0x1000000a

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object v3

    .line 157
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 161
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    .line 163
    const v3, 0x1000000b

    .line 165
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v3

    .line 171
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 175
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TRIGGER_DRAWER:I

    .line 177
    const v3, 0x1000000c

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    move-result-object v3

    .line 185
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 186
    const/4 v1, 0x3

    .line 189
    if-ge v0, v1, :cond_1

    .line 190
    return-void

    .line 192
    :cond_1
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 193
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    .line 195
    const v3, 0x1000000d

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    move-result-object v3

    .line 203
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 204
    const/4 v1, 0x4

    .line 207
    if-ge v0, v1, :cond_2

    .line 208
    return-void

    .line 210
    :cond_2
    iget-object v1, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 211
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    .line 213
    const v3, 0x1000000e

    .line 215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    move-result-object v3

    .line 221
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 222
    const/4 v1, 0x5

    .line 225
    if-ge v0, v1, :cond_3

    .line 226
    return-void

    .line 228
    :cond_3
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 229
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_SPATIAL:I

    .line 231
    const v2, 0x1000000f

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    move-result-object v2

    .line 239
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 243
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_TIME:I

    .line 245
    const v2, 0x10000010

    .line 247
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    move-result-object v2

    .line 253
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 257
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_LARGE:I

    .line 259
    const v2, 0x10000011

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    move-result-object v2

    .line 267
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 271
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    .line 273
    const v2, 0x10000012

    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    move-result-object v2

    .line 281
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 285
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 287
    const v2, 0x10000013

    .line 289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    move-result-object v2

    .line 295
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 299
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    .line 301
    const v2, 0x10000014

    .line 303
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    move-result-object v2

    .line 309
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 313
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    .line 315
    const v2, 0x10000015

    .line 317
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    move-result-object v2

    .line 323
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 327
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_KEYBOARD:I

    .line 329
    const v2, 0x10000016

    .line 331
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    move-result-object v2

    .line 337
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 341
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    .line 343
    const v2, 0x10000017

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    move-result-object v2

    .line 351
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 352
    iget-object p0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 355
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 357
    const v1, 0x10000018

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    move-result-object v1

    .line 365
    invoke-virtual {p0, v0, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 366
    return-void
    .line 369
.end method

.method private static initialize()V
    .locals 3

    .line 1
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const-string v2, "LinearVibrator"

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    const-string v0, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    .line 9
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    .line 15
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    const-string v1, "MIUI Haptic Implementation is not available"

    .line 21
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-nez v0, :cond_1

    .line 27
    const-string v0, "linear motor is not supported in this platform."

    .line 29
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 34
    :cond_1
    new-instance v0, Lmiuix/view/LinearVibrator;

    .line 35
    invoke-direct {v0}, Lmiuix/view/LinearVibrator;-><init>()V

    .line 37
    invoke-static {v0}, Lmiuix/view/HapticCompat;->registerProvider(Lmiuix/view/HapticFeedbackProvider;)V

    .line 40
    const-string v0, "setup LinearVibrator success."

    .line 43
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
    .line 48
.end method


# virtual methods
.method public obtainFeedBack(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 2
    iget-object v1, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 4
    iget v0, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 6
    invoke-static {v0, p1, v1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 8
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    iget-object p0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 14
    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 16
    aget-object p0, p0, p1

    .line 18
    check-cast p0, Ljava/lang/Integer;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, -0x1

    .line 27
    return p0
    .line 28
.end method

.method public performHapticFeedback(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 2
    iget-object v1, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 4
    iget v0, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 6
    invoke-static {v0, p2, v1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "LinearVibrator"

    .line 13
    if-gez v0, :cond_2

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p0

    .line 20
    sget-object p1, Lmiuix/view/HapticFeedbackConstants;->NAMES:Landroidx/collection/SparseArrayCompat;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object v0, Landroidx/collection/SparseArrayCompatKt;->DELETED:Ljava/lang/Object;

    .line 26
    iget-object v0, p1, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 28
    iget v3, p1, Landroidx/collection/SparseArrayCompat;->size:I

    .line 30
    invoke-static {v3, p2, v0}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 32
    move-result p2

    .line 35
    if-ltz p2, :cond_0

    .line 36
    iget-object p1, p1, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 38
    aget-object p1, p1, p2

    .line 40
    sget-object p2, Landroidx/collection/SparseArrayCompatKt;->DELETED:Ljava/lang/Object;

    .line 42
    if-ne p1, p2, :cond_1

    .line 44
    :cond_0
    const-string p1, "IllegalFeedback"

    .line 46
    :cond_1
    check-cast p1, Ljava/lang/String;

    .line 48
    sget p2, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p2

    .line 55
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    const-string p1, "feedback(0x%08x-%s) is not found in current platform(v%d)"

    .line 60
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v1

    .line 69
    :cond_2
    iget-object p0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 70
    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 72
    aget-object p0, p0, v0

    .line 74
    check-cast p0, Ljava/lang/Integer;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 78
    move-result p0

    .line 81
    invoke-static {p0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 82
    move-result p2

    .line 85
    if-nez p2, :cond_3

    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object p0

    .line 91
    sget p1, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object p1

    .line 97
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 101
    const-string p1, "unsupported feedback: 0x%08x. platform version: %d"

    .line 102
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 107
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v1

    .line 111
    :cond_3
    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 112
    move-result p0

    .line 115
    return p0
    .line 116
.end method

.method public supportLinearMotor(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 2
    iget-object v1, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 4
    iget v0, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 6
    invoke-static {v0, p1, v1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "LinearVibrator"

    .line 13
    if-gez v0, :cond_2

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p0

    .line 20
    sget-object v0, Lmiuix/view/HapticFeedbackConstants;->NAMES:Landroidx/collection/SparseArrayCompat;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object v3, Landroidx/collection/SparseArrayCompatKt;->DELETED:Ljava/lang/Object;

    .line 26
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 28
    iget v4, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 30
    invoke-static {v4, p1, v3}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 32
    move-result p1

    .line 35
    if-ltz p1, :cond_0

    .line 36
    iget-object v0, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 38
    aget-object p1, v0, p1

    .line 40
    sget-object v0, Landroidx/collection/SparseArrayCompatKt;->DELETED:Ljava/lang/Object;

    .line 42
    if-ne p1, v0, :cond_1

    .line 44
    :cond_0
    const-string p1, "IllegalFeedback"

    .line 46
    :cond_1
    check-cast p1, Ljava/lang/String;

    .line 48
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v0

    .line 55
    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    const-string p1, "feedback(0x%08x-%s) is not found in current platform(v%d)"

    .line 60
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v1

    .line 69
    :cond_2
    iget-object p0, p0, Lmiuix/view/LinearVibrator;->mIds:Landroidx/collection/SparseArrayCompat;

    .line 70
    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 72
    aget-object p0, p0, v0

    .line 74
    check-cast p0, Ljava/lang/Integer;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 78
    move-result p0

    .line 81
    invoke-static {p0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 82
    move-result p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object p0

    .line 91
    sget p1, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object p1

    .line 97
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 101
    const-string p1, "unsupported feedback: 0x%08x. platform version: %d"

    .line 102
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 107
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v1

    .line 111
    :cond_3
    invoke-static {p0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 112
    move-result p0

    .line 115
    return p0
    .line 116
.end method
