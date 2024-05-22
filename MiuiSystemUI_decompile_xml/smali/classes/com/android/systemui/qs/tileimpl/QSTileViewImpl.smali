.class public Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/qs/tileimpl/HeightOverrideable;
.implements Lcom/android/systemui/animation/LaunchableView;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _icon:Lcom/android/systemui/plugins/qs/QSIconView;

.field public _position:I

.field public accessibilityClass:Ljava/lang/String;

.field public chevronView:Landroid/widget/ImageView;

.field public final colorActive:I

.field public colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public final colorInactive:I

.field public final colorLabelActive:I

.field public final colorLabelInactive:I

.field public final colorLabelUnavailable:I

.field public final colorSecondaryLabelActive:I

.field public final colorSecondaryLabelInactive:I

.field public final colorSecondaryLabelUnavailable:I

.field public final colorUnavailable:I

.field public customDrawableView:Landroid/widget/ImageView;

.field public heightOverride:I

.field public label:Landroid/widget/TextView;

.field public labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

.field public lastDisabledByPolicy:Z

.field public lastState:I

.field public lastStateDescription:Ljava/lang/CharSequence;

.field public final launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

.field public final locInScreen:[I

.field public mQsLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public paintColor:I

.field public ripple:Landroid/graphics/drawable/RippleDrawable;

.field public secondaryLabel:Landroid/widget/TextView;

.field public showRippleEffect:Z

.field public sideView:Landroid/view/ViewGroup;

.field public final singleAnimator:Landroid/animation/ValueAnimator;

.field public squishinessFraction:F

.field public stateDescriptionDeltas:Ljava/lang/CharSequence;

.field public tileState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 5
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_position:I

    .line 8
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    .line 14
    const v1, 0x1120026    # @android:^attr-private/colorAccentPrimary

    .line 16
    const/4 v2, 0x0

    .line 19
    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 20
    move-result v1

    .line 23
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorActive:I

    .line 24
    const v1, 0x7f040581    # @attr/offStateColor

    .line 26
    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 29
    move-result v1

    .line 32
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorInactive:I

    .line 33
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 35
    move-result v3

    .line 38
    int-to-float v3, v3

    .line 39
    const v4, 0x3e99999a    # 0.3f

    .line 40
    mul-float/2addr v3, v4

    .line 43
    float-to-int v3, v3

    .line 44
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 45
    move-result v4

    .line 48
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 49
    move-result v5

    .line 52
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 53
    move-result v1

    .line 56
    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 57
    move-result v1

    .line 60
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorUnavailable:I

    .line 61
    const v1, 0x1120123    # @android:^attr-private/textColorSearchUrl

    .line 63
    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 66
    move-result v1

    .line 69
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    .line 70
    const v1, 0x1010036    # @android:attr/textColorPrimary

    .line 72
    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 75
    move-result v1

    .line 78
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelInactive:I

    .line 79
    const v1, 0x1010212    # @android:attr/textColorTertiary

    .line 81
    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 84
    move-result v3

    .line 87
    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    .line 88
    const v3, 0x101003a    # @android:attr/textColorSecondaryInverse

    .line 90
    invoke-static {p1, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 93
    move-result v3

    .line 96
    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelActive:I

    .line 97
    const v3, 0x1010038    # @android:attr/textColorSecondary

    .line 99
    invoke-static {p1, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 102
    move-result v3

    .line 105
    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelInactive:I

    .line 106
    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 108
    move-result p1

    .line 111
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelUnavailable:I

    .line 112
    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    .line 115
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 117
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 119
    const-wide/16 v3, 0x15e

    .line 122
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 124
    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;

    .line 127
    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    .line 129
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 132
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    .line 135
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    .line 137
    new-instance v0, Lcom/android/systemui/animation/LaunchableViewDelegate;

    .line 139
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$launchableViewDelegate$1;

    .line 141
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$launchableViewDelegate$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    .line 143
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 146
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    .line 149
    const/4 v0, 0x2

    .line 151
    new-array v1, v0, [I

    .line 152
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    .line 154
    invoke-static {}, Landroid/widget/LinearLayout;->generateViewId()I

    .line 156
    move-result v1

    .line 159
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 160
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 163
    const v1, 0x800013

    .line 166
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 172
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 175
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 178
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 181
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 184
    const v3, 0x7f081777    # @drawable/qs_tile_background 'res/drawable/qs_tile_background.xml'

    .line 186
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 189
    move-result-object v1

    .line 192
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 193
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->ripple:Landroid/graphics/drawable/RippleDrawable;

    .line 195
    const v3, 0x7f0a0100    # @id/background

    .line 197
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 200
    move-result-object v1

    .line 203
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->ripple:Landroid/graphics/drawable/RippleDrawable;

    .line 206
    const/4 v3, 0x0

    .line 208
    if-nez v1, :cond_0

    .line 209
    move-object v1, v3

    .line 211
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(IZ)I

    .line 215
    move-result v1

    .line 218
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    if-nez v4, :cond_1

    .line 221
    move-object v4, v3

    .line 223
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 224
    move-result-object v4

    .line 227
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 228
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paintColor:I

    .line 231
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 233
    move-result-object v1

    .line 236
    const v4, 0x7f070fff    # @dimen/qs_tile_padding '12.0dp'

    .line 237
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 240
    move-result v1

    .line 243
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 244
    move-result-object v4

    .line 247
    const v5, 0x7f071004    # @dimen/qs_tile_start_padding '16.0dp'

    .line 248
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 251
    move-result v4

    .line 254
    invoke-virtual {p0, v4, v1, v1, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 255
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 258
    move-result-object v1

    .line 261
    const v4, 0x7f070fad    # @dimen/qs_icon_size '20.0dp'

    .line 262
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 265
    move-result v1

    .line 268
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 269
    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    invoke-virtual {p0, p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 277
    move-result-object p2

    .line 280
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 281
    move-result-object p2

    .line 284
    const v1, 0x7f0d030c    # @layout/qs_tile_label 'res/layout/qs_tile_label.xml'

    .line 285
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 288
    move-result-object p2

    .line 291
    check-cast p2, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 292
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 294
    const v1, 0x7f0a0985    # @id/tile_label

    .line 296
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 299
    move-result-object p2

    .line 302
    check-cast p2, Landroid/widget/TextView;

    .line 303
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 305
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 307
    if-nez p2, :cond_2

    .line 309
    move-object p2, v3

    .line 311
    :cond_2
    const v1, 0x7f0a00ce    # @id/app_label

    .line 312
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 315
    move-result-object p2

    .line 318
    check-cast p2, Landroid/widget/TextView;

    .line 319
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    .line 321
    if-eqz p3, :cond_5

    .line 323
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 325
    if-nez p2, :cond_3

    .line 327
    move-object p2, v3

    .line 329
    :cond_3
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->setIgnoreLastView(Z)V

    .line 330
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 333
    if-nez p2, :cond_4

    .line 335
    move-object p2, v3

    .line 337
    :cond_4
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->setForceUnspecifiedMeasure(Z)V

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 341
    move-result-object p1

    .line 344
    const/4 p2, 0x0

    .line 345
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 346
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(IZ)I

    .line 349
    move-result p1

    .line 352
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 353
    if-nez p2, :cond_6

    .line 355
    move-object p2, v3

    .line 357
    :cond_6
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    .line 361
    move-result p1

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 365
    move-result-object p2

    .line 368
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 372
    if-nez p1, :cond_7

    .line 374
    move-object p1, v3

    .line 376
    :cond_7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 380
    move-result-object p1

    .line 383
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 384
    move-result-object p1

    .line 387
    const p2, 0x7f0d030d    # @layout/qs_tile_side_icon 'res/layout/qs_tile_side_icon.xml'

    .line 388
    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 391
    move-result-object p1

    .line 394
    check-cast p1, Landroid/view/ViewGroup;

    .line 395
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    .line 397
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    .line 399
    move-result-object p1

    .line 402
    const p2, 0x7f0a0276    # @id/customDrawable

    .line 403
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 406
    move-result-object p1

    .line 409
    check-cast p1, Landroid/widget/ImageView;

    .line 410
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    .line 414
    move-result-object p1

    .line 417
    const p2, 0x7f0a01e6    # @id/chevron

    .line 418
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 421
    move-result-object p1

    .line 424
    check-cast p1, Landroid/widget/ImageView;

    .line 425
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 427
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    .line 429
    move-result p1

    .line 432
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 433
    if-nez p2, :cond_8

    .line 435
    goto :goto_0

    .line 437
    :cond_8
    move-object v3, p2

    .line 438
    :goto_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 439
    move-result-object p1

    .line 442
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    .line 446
    move-result-object p1

    .line 449
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    return-void
    .line 453
.end method

.method public static final synthetic access$setVisibility$s-473880907(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public animationsEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    .line 10
    move-result v0

    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    cmpg-float v0, v0, v2

    .line 16
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_1

    .line 19
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    if-nez v0, :cond_2

    .line 24
    return v1

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    .line 32
    aget v0, v0, v2

    .line 34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 36
    move-result p0

    .line 39
    neg-int p0, p0

    .line 40
    if-lt v0, p0, :cond_3

    .line 41
    move v1, v2

    .line 43
    :cond_3
    return v1
    .line 44
.end method

.method public final getBackgroundColorForState(IZ)I
    .locals 0

    .line 1
    if-eqz p1, :cond_3

    .line 2
    if-eqz p2, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x2

    .line 7
    if-ne p1, p2, :cond_1

    .line 8
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorActive:I

    .line 10
    goto :goto_1

    .line 12
    :cond_1
    const/4 p2, 0x1

    .line 13
    if-ne p1, p2, :cond_2

    .line 14
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorInactive:I

    .line 16
    goto :goto_1

    .line 18
    :cond_2
    const-string p0, "Invalid state "

    .line 19
    const-string p2, "QSTileViewImpl"

    .line 21
    invoke-static {p0, p1, p2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorUnavailable:I

    .line 28
    :goto_1
    return p0
    .line 30
.end method

.method public final getCurrentColors$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Ljava/util/List;
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Integer;

    .line 3
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paintColor:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 14
    const/4 v3, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    move-object v1, v3

    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 20
    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 27
    const/4 v4, 0x1

    .line 28
    aput-object v1, v0, v4

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 35
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 42
    const/4 v4, 0x2

    .line 43
    aput-object v1, v0, v4

    .line 44
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 46
    if-nez p0, :cond_1

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    move-object v3, p0

    .line 51
    :goto_0
    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    .line 52
    move-result-object p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 58
    move-result v2

    .line 61
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p0

    .line 65
    const/4 v1, 0x3

    .line 66
    aput-object p0, v0, v1

    .line 67
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 69
    move-result-object p0

    .line 72
    return-object p0
    .line 73
.end method

.method public getDetailY()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 6
    move-result p0

    .line 9
    div-int/lit8 p0, p0, 0x2

    .line 10
    add-int/2addr p0, v0

    .line 12
    return p0
    .line 13
.end method

.method public getHeightOverride()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    .line 2
    return p0
    .line 4
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getIconWithBackground()Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getLabel()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    :cond_0
    return-object p0
    .line 7
.end method

.method public final getLabelColorForState(IZ)I
    .locals 0

    .line 1
    if-eqz p1, :cond_3

    .line 2
    if-eqz p2, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x2

    .line 7
    if-ne p1, p2, :cond_1

    .line 8
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    .line 10
    goto :goto_1

    .line 12
    :cond_1
    const/4 p2, 0x1

    .line 13
    if-ne p1, p2, :cond_2

    .line 14
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelInactive:I

    .line 16
    goto :goto_1

    .line 18
    :cond_2
    const-string p0, "Invalid state "

    .line 19
    const-string p2, "QSTileViewImpl"

    .line 21
    invoke-static {p0, p1, p2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    .line 28
    :goto_1
    return p0
    .line 30
.end method

.method public getLabelContainer()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    :cond_0
    return-object p0
    .line 7
.end method

.method public getSecondaryIcon()Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getSecondaryLabel()Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public final getSecondaryLabel()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSecondaryLabelColorForState(IZ)I
    .locals 0

    .line 1
    if-eqz p1, :cond_3

    .line 2
    if-eqz p2, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x2

    .line 7
    if-ne p1, p2, :cond_1

    .line 8
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelActive:I

    .line 10
    goto :goto_1

    .line 12
    :cond_1
    const/4 p2, 0x1

    .line 13
    if-ne p1, p2, :cond_2

    .line 14
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelInactive:I

    .line 16
    goto :goto_1

    .line 18
    :cond_2
    const-string p0, "Invalid state "

    .line 19
    const-string p2, "QSTileViewImpl"

    .line 21
    invoke-static {p0, p1, p2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelUnavailable:I

    .line 28
    :goto_1
    return p0
    .line 30
.end method

.method public final getShowRippleEffect()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getSideView()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public getSquishinessFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    .line 2
    return p0
    .line 4
.end method

.method public handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->animationsEnabled()Z

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    .line 6
    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    .line 8
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 10
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v3

    .line 18
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    .line 19
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 31
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    sget-object v4, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->subtitleIdsMap:Ljava/util/HashMap;

    .line 44
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    .line 46
    const v5, 0x7f0300c0    # @array/tile_states_default

    .line 48
    if-nez v4, :cond_1

    .line 51
    move v4, v5

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    sget-object v6, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->subtitleIdsMap:Ljava/util/HashMap;

    .line 55
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/Integer;

    .line 61
    if-nez v4, :cond_2

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v4

    .line 68
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 69
    move-result v4

    .line 72
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v6

    .line 76
    invoke-virtual {p1, v4, v6}, Lcom/android/systemui/plugins/qs/QSTile$State;->getStateText(ILandroid/content/res/Resources;)Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 80
    invoke-virtual {p1, v4}, Lcom/android/systemui/plugins/qs/QSTile$State;->getSecondaryLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 84
    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 85
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v6

    .line 90
    if-nez v6, :cond_3

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_3
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 96
    const-string v6, ", "

    .line 98
    if-eqz v4, :cond_6

    .line 100
    iget v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 102
    if-eqz v4, :cond_6

    .line 104
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    .line 109
    if-nez v4, :cond_4

    .line 111
    goto :goto_2

    .line 113
    :cond_4
    sget-object v7, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->subtitleIdsMap:Ljava/util/HashMap;

    .line 114
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v4

    .line 119
    check-cast v4, Ljava/lang/Integer;

    .line 120
    if-nez v4, :cond_5

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v4

    .line 127
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 128
    move-result v5

    .line 131
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 132
    move-result-object v4

    .line 135
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 136
    move-result-object v4

    .line 139
    aget-object v4, v4, v3

    .line 140
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_6
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 145
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    move-result v4

    .line 150
    if-nez v4, :cond_7

    .line 151
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 158
    iget v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    .line 161
    const/4 v5, -0x1

    .line 163
    if-eq v4, v5, :cond_7

    .line 164
    iget v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 166
    if-ne v5, v4, :cond_7

    .line 168
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 170
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastStateDescription:Ljava/lang/CharSequence;

    .line 172
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    move-result v4

    .line 177
    if-nez v4, :cond_7

    .line 178
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 180
    iput-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 182
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v1

    .line 187
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 191
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastStateDescription:Ljava/lang/CharSequence;

    .line 193
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 195
    const/4 v4, 0x0

    .line 197
    if-nez v1, :cond_8

    .line 198
    move-object v1, v4

    .line 200
    goto :goto_3

    .line 201
    :cond_8
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 202
    :goto_3
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    .line 204
    instance-of v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 206
    if-eqz v1, :cond_9

    .line 208
    move-object v5, p1

    .line 210
    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 211
    iget-boolean v5, v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 213
    iget-boolean v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    .line 215
    if-eq v6, v5, :cond_9

    .line 217
    iput-boolean v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    .line 219
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 221
    if-nez v5, :cond_a

    .line 223
    move-object v5, v4

    .line 225
    :cond_a
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 226
    move-result-object v5

    .line 229
    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 230
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    move-result v5

    .line 235
    if-nez v5, :cond_c

    .line 236
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 238
    if-nez v5, :cond_b

    .line 240
    move-object v5, v4

    .line 242
    :cond_b
    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 243
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 248
    move-result-object v5

    .line 251
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 252
    move-result-object v5

    .line 255
    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 256
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    move-result v5

    .line 261
    const/16 v6, 0x8

    .line 262
    if-nez v5, :cond_e

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 266
    move-result-object v5

    .line 269
    iget-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 270
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 275
    move-result-object v5

    .line 278
    iget-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 279
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 281
    move-result v7

    .line 284
    if-eqz v7, :cond_d

    .line 285
    move v7, v6

    .line 287
    goto :goto_4

    .line 288
    :cond_d
    move v7, v3

    .line 289
    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :cond_e
    iget v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 293
    iget v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    .line 295
    if-ne v5, v7, :cond_f

    .line 297
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 299
    iget-boolean v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    .line 301
    if-eq v5, v7, :cond_18

    .line 303
    :cond_f
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    .line 305
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 307
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mQsLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 310
    if-eqz v5, :cond_10

    .line 312
    iget-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    .line 314
    iget v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 316
    iget-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 318
    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(IZ)I

    .line 320
    move-result v10

    .line 323
    invoke-virtual {v5, v7, v9, v8, v10}, Lcom/android/systemui/qs/logging/QSLogger;->logTileBackgroundColorUpdateIfInternetTile(Ljava/lang/String;ZII)V

    .line 324
    :cond_10
    if-eqz v0, :cond_14

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    .line 329
    const/4 v5, 0x4

    .line 331
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    .line 332
    iget v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paintColor:I

    .line 334
    iget v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 336
    iget-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 338
    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(IZ)I

    .line 340
    move-result v8

    .line 343
    filled-new-array {v7, v8}, [I

    .line 344
    move-result-object v7

    .line 347
    const-string v8, "background"

    .line 348
    invoke-static {v8, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 350
    move-result-object v7

    .line 353
    aput-object v7, v5, v3

    .line 354
    const/4 v7, 0x2

    .line 356
    new-array v8, v7, [I

    .line 357
    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 359
    if-nez v9, :cond_11

    .line 361
    move-object v9, v4

    .line 363
    :cond_11
    invoke-virtual {v9}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 364
    move-result v9

    .line 367
    aput v9, v8, v3

    .line 368
    iget v9, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 370
    iget-boolean v10, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 372
    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(IZ)I

    .line 374
    move-result v9

    .line 377
    aput v9, v8, v2

    .line 378
    const-string v9, "label"

    .line 380
    invoke-static {v9, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 382
    move-result-object v8

    .line 385
    aput-object v8, v5, v2

    .line 386
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 388
    move-result-object v8

    .line 391
    invoke-virtual {v8}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 392
    move-result v8

    .line 395
    iget v9, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 396
    iget-boolean v10, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 398
    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    .line 400
    move-result v9

    .line 403
    filled-new-array {v8, v9}, [I

    .line 404
    move-result-object v8

    .line 407
    const-string/jumbo v9, "secondaryLabel"

    .line 408
    invoke-static {v9, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 411
    move-result-object v8

    .line 414
    aput-object v8, v5, v7

    .line 415
    new-array v7, v7, [I

    .line 417
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 419
    if-nez v8, :cond_12

    .line 421
    move-object v8, v4

    .line 423
    :cond_12
    invoke-virtual {v8}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    .line 424
    move-result-object v8

    .line 427
    if-eqz v8, :cond_13

    .line 428
    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 430
    move-result v8

    .line 433
    goto :goto_5

    .line 434
    :cond_13
    move v8, v3

    .line 435
    :goto_5
    aput v8, v7, v3

    .line 436
    iget v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 438
    iget-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 440
    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    .line 442
    move-result v8

    .line 445
    aput v8, v7, v2

    .line 446
    const-string v8, "chevron"

    .line 448
    invoke-static {v8, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 450
    move-result-object v7

    .line 453
    const/4 v8, 0x3

    .line 454
    aput-object v7, v5, v8

    .line 455
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    .line 460
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 462
    goto :goto_6

    .line 465
    :cond_14
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 466
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 468
    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(IZ)I

    .line 470
    move-result v0

    .line 473
    iget v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 474
    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 476
    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(IZ)I

    .line 478
    move-result v5

    .line 481
    iget v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 482
    iget-boolean v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 484
    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    .line 486
    move-result v7

    .line 489
    iget v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 490
    iget-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 492
    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    .line 494
    move-result v8

    .line 497
    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 498
    if-nez v9, :cond_15

    .line 500
    move-object v9, v4

    .line 502
    :cond_15
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 503
    move-result-object v9

    .line 506
    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 507
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paintColor:I

    .line 510
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 512
    if-nez v0, :cond_16

    .line 514
    move-object v0, v4

    .line 516
    :cond_16
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 520
    move-result-object v0

    .line 523
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 527
    if-nez v0, :cond_17

    .line 529
    move-object v0, v4

    .line 531
    :cond_17
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 532
    move-result-object v5

    .line 535
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 536
    :cond_18
    :goto_6
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->sideViewCustomDrawable:Landroid/graphics/drawable/Drawable;

    .line 539
    if-eqz v0, :cond_1c

    .line 541
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    .line 543
    if-nez v1, :cond_19

    .line 545
    move-object v1, v4

    .line 547
    :cond_19
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    .line 551
    if-nez v0, :cond_1a

    .line 553
    move-object v0, v4

    .line 555
    :cond_1a
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 559
    if-nez v0, :cond_1b

    .line 561
    move-object v0, v4

    .line 563
    :cond_1b
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    goto :goto_8

    .line 567
    :cond_1c
    if-eqz v1, :cond_21

    .line 568
    move-object v0, p1

    .line 570
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 571
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->forceExpandIcon:Z

    .line 573
    if-eqz v0, :cond_1d

    .line 575
    goto :goto_7

    .line 577
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    .line 578
    if-nez v0, :cond_1e

    .line 580
    move-object v0, v4

    .line 582
    :cond_1e
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    .line 586
    if-nez v0, :cond_1f

    .line 588
    move-object v0, v4

    .line 590
    :cond_1f
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 594
    if-nez v0, :cond_20

    .line 596
    move-object v0, v4

    .line 598
    :cond_20
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    goto :goto_8

    .line 602
    :cond_21
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    .line 603
    if-nez v0, :cond_22

    .line 605
    move-object v0, v4

    .line 607
    :cond_22
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    .line 611
    if-nez v0, :cond_23

    .line 613
    move-object v0, v4

    .line 615
    :cond_23
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 619
    if-nez v0, :cond_24

    .line 621
    move-object v0, v4

    .line 623
    :cond_24
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 624
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 627
    if-nez v0, :cond_25

    .line 629
    goto :goto_9

    .line 631
    :cond_25
    move-object v4, v0

    .line 632
    :goto_9
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 633
    xor-int/2addr v0, v2

    .line 635
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 636
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 639
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    .line 641
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 643
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    .line 645
    return-void
    .line 647
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$1;

    .line 2
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    .line 4
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$2;

    .line 7
    invoke-direct {v1, p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$2;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 15
    return-void
    .line 18
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 5
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    move-object p1, v0

    .line 10
    :cond_0
    const v1, 0x7f071005    # @dimen/qs_tile_text_size '11.64sp'

    .line 11
    invoke-static {p1, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 17
    move-result-object p1

    .line 20
    invoke-static {p1, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p1

    .line 31
    const v1, 0x7f070fad    # @dimen/qs_icon_size '20.0dp'

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result p1

    .line 38
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 39
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    move-result-object v1

    .line 44
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v1

    .line 52
    const v2, 0x7f070fff    # @dimen/qs_tile_padding '12.0dp'

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 56
    move-result v1

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v2

    .line 63
    const v3, 0x7f071004    # @dimen/qs_tile_start_padding '16.0dp'

    .line 64
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    move-result v2

    .line 70
    invoke-virtual {p0, v2, v1, v1, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object v1

    .line 77
    const v2, 0x7f070fae    # @dimen/qs_label_container_margin '10.0dp'

    .line 78
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    move-result v1

    .line 84
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 85
    if-nez v2, :cond_1

    .line 87
    move-object v2, v0

    .line 89
    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    move-result-object v2

    .line 93
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 94
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    .line 99
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    move-result-object v2

    .line 106
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 107
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 109
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 112
    if-nez v1, :cond_2

    .line 114
    move-object v1, v0

    .line 116
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    move-result-object v1

    .line 120
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 121
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 123
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 125
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 127
    move-result-object v1

    .line 130
    const v2, 0x7f070f8d    # @dimen/qs_drawable_end_margin '4.0dp'

    .line 131
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 134
    move-result v1

    .line 137
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    .line 138
    if-nez p0, :cond_3

    .line 140
    goto :goto_0

    .line 142
    :cond_3
    move-object v0, p0

    .line 143
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 144
    move-result-object p0

    .line 147
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 148
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 150
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 152
    return-void
    .line 155
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    .line 18
    move-result v0

    .line 21
    const/16 v1, 0x40

    .line 22
    if-ne v0, v1, :cond_1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 26
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 30
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 40
    :cond_1
    return-void
    .line 42
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 13
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 24
    if-nez v0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    move-object v1, v0

    .line 29
    :goto_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 30
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 39
    if-nez v0, :cond_2

    .line 41
    goto :goto_1

    .line 43
    :cond_2
    move-object v1, v0

    .line 44
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 49
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 53
    move-result-object v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, ", "

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    .line 80
    if-eqz v0, :cond_3

    .line 82
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 84
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 86
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 88
    move-result v1

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 92
    move-result-object v2

    .line 95
    const v3, 0x7f1300f8    # @string/accessibility_tile_disabled_by_policy_action_description 'learn more'

    .line 96
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 102
    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v0

    .line 114
    if-nez v0, :cond_5

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    .line 117
    if-eqz v0, :cond_4

    .line 119
    const-class v0, Landroid/widget/Button;

    .line 121
    const-string v0, "android.widget.Button"

    .line 123
    goto :goto_3

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    .line 126
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 128
    const-class v0, Landroid/widget/Switch;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    .line 137
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 147
    const/4 v0, 0x1

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    .line 154
    move-result v0

    .line 157
    if-eqz v0, :cond_5

    .line 158
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 160
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 162
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 164
    move-result v1

    .line 167
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 168
    move-result-object v2

    .line 171
    const v3, 0x7f13009d    # @string/accessibility_long_click_tile 'Open settings'

    .line 172
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 175
    move-result-object v2

    .line 178
    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 182
    :cond_5
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_position:I

    .line 185
    const/4 v1, -0x1

    .line 187
    if-eq v0, v1, :cond_6

    .line 188
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 190
    iget v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_position:I

    .line 192
    const/4 v4, 0x1

    .line 194
    const/4 v5, 0x0

    .line 195
    const/4 v6, 0x1

    .line 196
    const/4 v7, 0x0

    .line 197
    move-object v2, v0

    .line 198
    invoke-direct/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZ)V

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 202
    :cond_6
    return-void
    .line 205
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    .line 5
    return-void
    .line 8
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    const-string v2, "QSTileViewImpl#onMeasure"

    .line 4
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 12
    return-void
    .line 15
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 4
    move-result-object p1

    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
    .line 17
.end method

.method public setClickable(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_2

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    .line 8
    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->ripple:Landroid/graphics/drawable/RippleDrawable;

    .line 12
    if-nez p1, :cond_0

    .line 14
    move-object p1, v0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    if-nez v1, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    move-object v0, v1

    .line 22
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 23
    goto :goto_1

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    if-nez p1, :cond_3

    .line 29
    goto :goto_2

    .line 31
    :cond_3
    :goto_1
    move-object v0, p1

    .line 32
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    return-void
    .line 36
.end method

.method public setHeightOverride(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    .line 9
    return-void
    .line 12
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_position:I

    .line 2
    return-void
    .line 4
.end method

.method public final setQsLogger(Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mQsLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 2
    return-void
    .line 4
.end method

.method public setShouldBlockVisibilityChanges(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public setSquishinessFraction(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    .line 2
    cmpg-float v0, v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    return-void

    .line 13
    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    .line 16
    return-void
    .line 19
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setVisibility(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    const/16 v1, 0x5b

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    .line 20
    const/4 v2, 0x0

    .line 22
    aget v2, v1, v2

    .line 23
    const/4 v3, 0x1

    .line 25
    aget v1, v1, v3

    .line 26
    const-string v3, "locInScreen=("

    .line 28
    const-string v4, ", "

    .line 30
    const-string v5, ")"

    .line 32
    invoke-static {v3, v2, v4, v1, v5}, Landroidx/room/RoomOpenHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    const-string v3, ", iconView="

    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    const-string v2, ", tileState="

    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string p0, "]"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    return-object p0
    .line 88
.end method

.method public final updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    .line 10
    return-object p0
    .line 13
.end method

.method public final updateHeight()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getHeightOverride()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getHeightOverride()I

    .line 9
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 14
    move-result v0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSquishinessFraction()F

    .line 18
    move-result v1

    .line 21
    const v2, 0x3f666666    # 0.9f

    .line 22
    mul-float/2addr v1, v2

    .line 25
    const v2, 0x3dcccccd    # 0.1f

    .line 26
    add-float/2addr v1, v2

    .line 29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    .line 30
    move-result v2

    .line 33
    int-to-float v3, v0

    .line 34
    mul-float/2addr v3, v1

    .line 35
    float-to-int v1, v3

    .line 36
    add-int/2addr v2, v1

    .line 37
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBottom(I)V

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 41
    move-result v1

    .line 44
    sub-int/2addr v0, v1

    .line 45
    div-int/lit8 v0, v0, 0x2

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScrollY(I)V

    .line 48
    return-void
    .line 51
.end method
