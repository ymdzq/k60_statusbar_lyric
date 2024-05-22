.class public final Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;
.super Landroid/app/Dialog;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final LEFT_CORNERS_INDICES:[I

.field public static final RIGHT_CORNERS_INDICES:[I


# instance fields
.field public final backgroundColor:I

.field public currentLevel:I

.field public final defaultIconBackgroundColor:I

.field public final defaultIconColor:I

.field public final dialogBottomMargin:I

.field public final dimmedIconBackgroundColor:I

.field public final dimmedIconColor:I

.field public final emptyRectangleColor:I

.field public final filledRectangleColor:I

.field public iconProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;

.field public maxLevel:I

.field public rootProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

.field public rootView:Landroid/widget/LinearLayout;

.field public stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    filled-new-array {v2, v3, v0, v1}, [I

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->LEFT_CORNERS_INDICES:[I

    .line 10
    const/4 v0, 0x4

    .line 12
    const/4 v1, 0x5

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x3

    .line 15
    filled-new-array {v2, v3, v0, v1}, [I

    .line 16
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->RIGHT_CORNERS_INDICES:[I

    .line 20
    return-void
    .line 22
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 1
    const v0, 0x7f140564    # @style/Theme.SystemUI.Dialog

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    const/16 p1, 0xd0

    .line 8
    iput p1, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dialogBottomMargin:I

    .line 10
    const p1, 0x11200a4    # @android:^attr-private/materialColorPrimaryContainer

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    .line 15
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->filledRectangleColor:I

    .line 19
    const v0, 0x11200a3    # @android:^attr-private/materialColorPrimary

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    .line 24
    move-result v0

    .line 27
    iput v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->emptyRectangleColor:I

    .line 28
    const v0, 0x11200ae    # @android:^attr-private/materialColorSurfaceContainer

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    .line 33
    move-result v0

    .line 36
    iput v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->backgroundColor:I

    .line 37
    const v0, 0x1120093    # @android:^attr-private/materialColorOnPrimaryContainer

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    .line 42
    move-result v0

    .line 45
    iput v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->defaultIconColor:I

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    .line 48
    move-result p1

    .line 51
    iput p1, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->defaultIconBackgroundColor:I

    .line 52
    const p1, 0x112009b    # @android:^attr-private/materialColorOnSurfaceInverse

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    .line 57
    move-result p1

    .line 60
    iput p1, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dimmedIconColor:I

    .line 61
    const p1, 0x11200b4    # @android:^attr-private/materialColorSurfaceInverse

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->getColorFromStyle(I)I

    .line 66
    move-result p1

    .line 69
    iput p1, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dimmedIconBackgroundColor:I

    .line 70
    iput p2, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->currentLevel:I

    .line 72
    iput p3, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    .line 74
    return-void
    .line 76
.end method

.method public static updateColor(Landroid/graphics/drawable/ShapeDrawable;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 6
    move-result v0

    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 19
    :cond_0
    return-void
    .line 22
.end method


# virtual methods
.method public final getColorFromStyle(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 9
    const/16 v2, 0x7e1

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 14
    const/high16 v2, 0xa0000

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 19
    const/4 v2, 0x2

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 23
    const v2, 0x106000d    # @android:color/transparent

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 29
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 32
    move-result-object v0

    .line 35
    const-string v2, "KeyboardBacklightDialog"

    .line 36
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 44
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    const/16 v2, 0x51

    .line 50
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 52
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 55
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 57
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 60
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 64
    iget v3, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dialogBottomMargin:I

    .line 67
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    move-result-object v0

    .line 81
    new-instance v2, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

    .line 82
    const v3, 0x7f0700b1    # @dimen/backlight_indicator_root_corner_radius '48.0dp'

    .line 84
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    move-result v3

    .line 90
    int-to-float v3, v3

    .line 91
    const v4, 0x7f0700b3    # @dimen/backlight_indicator_root_vertical_padding '8.0dp'

    .line 92
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 95
    move-result v4

    .line 98
    const v5, 0x7f0700b2    # @dimen/backlight_indicator_root_horizontal_padding '6.0dp'

    .line 99
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 102
    move-result v5

    .line 105
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;-><init>(FII)V

    .line 106
    iput-object v2, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

    .line 109
    new-instance v2, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;

    .line 111
    const v3, 0x7f0700b0    # @dimen/backlight_indicator_icon_width '22.0dp'

    .line 113
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 116
    move-result v3

    .line 119
    const v4, 0x7f0700ae    # @dimen/backlight_indicator_icon_height '11.0dp'

    .line 120
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 123
    move-result v4

    .line 126
    const v5, 0x7f0700af    # @dimen/backlight_indicator_icon_padding '10.0dp'

    .line 127
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 130
    move-result v5

    .line 133
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;-><init>(III)V

    .line 134
    iput-object v2, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->iconProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;

    .line 137
    new-instance v2, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    .line 139
    const v3, 0x7f0700b8    # @dimen/backlight_indicator_step_width '52.0dp'

    .line 141
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 144
    move-result v8

    .line 147
    const v3, 0x7f0700b4    # @dimen/backlight_indicator_step_height '40.0dp'

    .line 148
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 151
    move-result v9

    .line 154
    const v3, 0x7f0700b5    # @dimen/backlight_indicator_step_horizontal_margin '2.0dp'

    .line 155
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 158
    move-result v10

    .line 161
    const v3, 0x7f0700b7    # @dimen/backlight_indicator_step_small_radius '4.0dp'

    .line 162
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 165
    move-result v3

    .line 168
    int-to-float v7, v3

    .line 169
    const v3, 0x7f0700b6    # @dimen/backlight_indicator_step_large_radius '28.0dp'

    .line 170
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 173
    move-result v0

    .line 176
    int-to-float v11, v0

    .line 177
    move-object v6, v2

    .line 178
    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;-><init>(FIIIF)V

    .line 179
    iput-object v2, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    .line 182
    new-instance v0, Landroid/widget/LinearLayout;

    .line 184
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 186
    move-result-object v2

    .line 189
    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 190
    const v2, 0x7f0a0465    # @id/keyboard_backlight_dialog_container

    .line 193
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 196
    const/4 v2, 0x0

    .line 199
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    const/4 v4, -0x2

    .line 205
    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 206
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v3, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

    .line 212
    const/4 v4, 0x0

    .line 214
    if-nez v3, :cond_2

    .line 215
    move-object v5, v4

    .line 217
    goto :goto_0

    .line 218
    :cond_2
    move-object v5, v3

    .line 219
    :goto_0
    iget v5, v5, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->horizontalPadding:I

    .line 220
    if-nez v3, :cond_3

    .line 222
    move-object v6, v4

    .line 224
    goto :goto_1

    .line 225
    :cond_3
    move-object v6, v3

    .line 226
    :goto_1
    iget v6, v6, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->verticalPadding:I

    .line 227
    if-nez v3, :cond_4

    .line 229
    move-object v7, v4

    .line 231
    goto :goto_2

    .line 232
    :cond_4
    move-object v7, v3

    .line 233
    :goto_2
    iget v7, v7, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->horizontalPadding:I

    .line 234
    if-nez v3, :cond_5

    .line 236
    move-object v3, v4

    .line 238
    :cond_5
    iget v3, v3, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->verticalPadding:I

    .line 239
    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 241
    const/16 v3, 0x8

    .line 244
    new-array v5, v3, [F

    .line 246
    :goto_3
    if-ge v2, v3, :cond_7

    .line 248
    iget-object v6, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

    .line 250
    if-nez v6, :cond_6

    .line 252
    move-object v6, v4

    .line 254
    :cond_6
    iget v6, v6, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->cornerRadius:F

    .line 255
    aput v6, v5, v2

    .line 257
    add-int/lit8 v2, v2, 0x1

    .line 259
    goto :goto_3

    .line 261
    :cond_7
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 262
    invoke-direct {v2, v5, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 264
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    .line 267
    invoke-direct {v3, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 269
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 272
    move-result-object v2

    .line 275
    iget v4, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->backgroundColor:I

    .line 276
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iput-object v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    .line 284
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 286
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 289
    iget p1, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->currentLevel:I

    .line 292
    iget v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    .line 294
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->updateState(IIZ)V

    .line 296
    return-void
    .line 299
.end method

.method public final updateState(IIZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    iget v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    .line 6
    const v3, 0x7f0a0108    # @id/backlight_icon

    .line 8
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-ne v2, v1, :cond_0

    .line 13
    if-eqz p3, :cond_12

    .line 15
    :cond_0
    iput v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    .line 17
    iget-object v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    .line 19
    if-nez v1, :cond_1

    .line 21
    move-object v1, v5

    .line 23
    :cond_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 24
    iget-object v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    .line 27
    if-nez v1, :cond_2

    .line 29
    move-object v1, v5

    .line 31
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    .line 32
    if-nez v2, :cond_3

    .line 34
    move-object v2, v5

    .line 36
    :cond_3
    iget v2, v2, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->height:I

    .line 37
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    .line 39
    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    .line 41
    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 43
    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 46
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 49
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 52
    new-instance v7, Landroid/widget/ImageView;

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v8

    .line 60
    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    const v8, 0x7f08102a    # @drawable/ic_keyboard_backlight 'res/drawable/ic_keyboard_backlight.xml'

    .line 64
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 70
    iget v8, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->defaultIconColor:I

    .line 73
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 75
    iget-object v8, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->iconProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;

    .line 78
    if-nez v8, :cond_4

    .line 80
    move-object v8, v5

    .line 82
    :cond_4
    iget v8, v8, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$BacklightIconProperties;->padding:I

    .line 83
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 85
    new-instance v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    invoke-direct {v8, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 90
    iget-object v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    .line 93
    if-nez v2, :cond_5

    .line 95
    move-object v9, v5

    .line 97
    goto :goto_0

    .line 98
    :cond_5
    move-object v9, v2

    .line 99
    :goto_0
    iget v9, v9, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->horizontalMargin:I

    .line 100
    if-nez v2, :cond_6

    .line 102
    move-object v2, v5

    .line 104
    :cond_6
    iget v2, v2, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->horizontalMargin:I

    .line 105
    const/4 v10, 0x0

    .line 107
    invoke-virtual {v8, v9, v10, v2, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 108
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 120
    iget v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    .line 122
    invoke-direct {v1, v4, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    .line 127
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 129
    move-result v6

    .line 132
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 136
    move-result-object v1

    .line 139
    :goto_1
    iget-boolean v6, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 140
    if-eqz v6, :cond_10

    .line 142
    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 144
    move-result v6

    .line 147
    new-instance v7, Landroid/widget/FrameLayout;

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 150
    move-result-object v8

    .line 153
    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 157
    iget-object v9, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    .line 159
    if-nez v9, :cond_7

    .line 161
    move-object v11, v5

    .line 163
    goto :goto_2

    .line 164
    :cond_7
    move-object v11, v9

    .line 165
    :goto_2
    iget v11, v11, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->width:I

    .line 166
    if-nez v9, :cond_8

    .line 168
    move-object v9, v5

    .line 170
    :cond_8
    iget v9, v9, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->height:I

    .line 171
    invoke-direct {v8, v11, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 173
    iget-object v9, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    .line 176
    if-nez v9, :cond_9

    .line 178
    move-object v11, v5

    .line 180
    goto :goto_3

    .line 181
    :cond_9
    move-object v11, v9

    .line 182
    :goto_3
    iget v11, v11, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->horizontalMargin:I

    .line 183
    if-nez v9, :cond_a

    .line 185
    move-object v9, v5

    .line 187
    :cond_a
    iget v9, v9, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->horizontalMargin:I

    .line 188
    invoke-virtual {v8, v11, v10, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    .line 196
    new-instance v9, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 198
    iget v11, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->maxLevel:I

    .line 200
    iget-object v12, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->stepProperties:Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;

    .line 202
    if-nez v12, :cond_b

    .line 204
    move-object v13, v5

    .line 206
    goto :goto_4

    .line 207
    :cond_b
    move-object v13, v12

    .line 208
    :goto_4
    iget v13, v13, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->smallRadius:F

    .line 209
    if-nez v12, :cond_c

    .line 211
    move-object v12, v5

    .line 213
    :cond_c
    iget v12, v12, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$StepViewProperties;->largeRadius:F

    .line 214
    const/16 v14, 0x8

    .line 216
    new-array v15, v14, [F

    .line 218
    :goto_5
    if-ge v10, v14, :cond_d

    .line 220
    aput v13, v15, v10

    .line 222
    add-int/lit8 v10, v10, 0x1

    .line 224
    goto :goto_5

    .line 226
    :cond_d
    const/4 v10, 0x4

    .line 227
    if-ne v6, v4, :cond_e

    .line 228
    sget-object v13, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->LEFT_CORNERS_INDICES:[I

    .line 230
    const/4 v14, 0x0

    .line 232
    :goto_6
    if-ge v14, v10, :cond_e

    .line 233
    aget v16, v13, v14

    .line 235
    aput v12, v15, v16

    .line 237
    add-int/lit8 v14, v14, 0x1

    .line 239
    goto :goto_6

    .line 241
    :cond_e
    if-ne v6, v11, :cond_f

    .line 242
    sget-object v6, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->RIGHT_CORNERS_INDICES:[I

    .line 244
    const/4 v11, 0x0

    .line 246
    :goto_7
    if-ge v11, v10, :cond_f

    .line 247
    aget v13, v6, v11

    .line 249
    aput v12, v15, v13

    .line 251
    add-int/lit8 v11, v11, 0x1

    .line 253
    goto :goto_7

    .line 255
    :cond_f
    invoke-direct {v9, v15, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 256
    invoke-direct {v8, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 259
    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 262
    move-result-object v6

    .line 265
    iget v9, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->emptyRectangleColor:I

    .line 266
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 271
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const/4 v10, 0x0

    .line 277
    goto/16 :goto_1

    .line 278
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 280
    move-result-object v1

    .line 283
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    move-result v2

    .line 287
    if-eqz v2, :cond_12

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    move-result-object v2

    .line 293
    check-cast v2, Landroid/widget/FrameLayout;

    .line 294
    iget-object v6, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    .line 296
    if-nez v6, :cond_11

    .line 298
    move-object v6, v5

    .line 300
    :cond_11
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    goto :goto_8

    .line 304
    :cond_12
    move/from16 v1, p1

    .line 305
    iput v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->currentLevel:I

    .line 307
    iget-object v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    .line 309
    if-nez v1, :cond_13

    .line 311
    move-object v1, v5

    .line 313
    :cond_13
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 314
    move-result-object v1

    .line 317
    check-cast v1, Landroid/widget/ImageView;

    .line 318
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 320
    move-result-object v2

    .line 323
    check-cast v2, Landroid/graphics/drawable/ShapeDrawable;

    .line 324
    iget v3, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->currentLevel:I

    .line 326
    if-nez v3, :cond_14

    .line 328
    iget v3, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dimmedIconColor:I

    .line 330
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 332
    iget v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->dimmedIconBackgroundColor:I

    .line 335
    invoke-static {v2, v1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->updateColor(Landroid/graphics/drawable/ShapeDrawable;I)V

    .line 337
    goto :goto_9

    .line 340
    :cond_14
    iget v3, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->defaultIconColor:I

    .line 341
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 343
    iget v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->defaultIconBackgroundColor:I

    .line 346
    invoke-static {v2, v1}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->updateColor(Landroid/graphics/drawable/ShapeDrawable;I)V

    .line 348
    :goto_9
    iget-object v1, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    .line 351
    if-nez v1, :cond_15

    .line 353
    move-object v1, v5

    .line 355
    :cond_15
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 356
    move-result v1

    .line 359
    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 360
    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 364
    move-result-object v1

    .line 367
    :goto_a
    iget-boolean v2, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 368
    if-eqz v2, :cond_18

    .line 370
    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 372
    move-result v2

    .line 375
    iget-object v3, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->rootView:Landroid/widget/LinearLayout;

    .line 376
    if-nez v3, :cond_16

    .line 378
    move-object v3, v5

    .line 380
    :cond_16
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 381
    move-result-object v3

    .line 384
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 385
    move-result-object v3

    .line 388
    check-cast v3, Landroid/graphics/drawable/ShapeDrawable;

    .line 389
    iget v4, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->currentLevel:I

    .line 391
    if-gt v2, v4, :cond_17

    .line 393
    iget v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->filledRectangleColor:I

    .line 395
    goto :goto_b

    .line 397
    :cond_17
    iget v2, v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->emptyRectangleColor:I

    .line 398
    :goto_b
    invoke-static {v3, v2}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;->updateColor(Landroid/graphics/drawable/ShapeDrawable;I)V

    .line 400
    goto :goto_a

    .line 403
    :cond_18
    return-void
    .line 404
.end method
