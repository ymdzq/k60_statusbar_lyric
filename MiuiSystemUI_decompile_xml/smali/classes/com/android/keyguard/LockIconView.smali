.class public Lcom/android/keyguard/LockIconView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mAod:Z

.field public mBgView:Landroid/widget/ImageView;

.field public mDozeAmount:F

.field public mIconType:I

.field public mLockIcon:Landroid/widget/ImageView;

.field public mLockIconCenter:Landroid/graphics/Point;

.field public mLockIconColor:I

.field public mLockIconPadding:I

.field public mRadius:F

.field public final mSensorRect:Landroid/graphics/RectF;

.field public mUseBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Point;

    .line 5
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 8
    iput-object p1, p0, Lcom/android/keyguard/LockIconView;->mLockIconCenter:Landroid/graphics/Point;

    .line 11
    iput-boolean p2, p0, Lcom/android/keyguard/LockIconView;->mUseBackground:Z

    .line 13
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/keyguard/LockIconView;->mDozeAmount:F

    .line 16
    new-instance p1, Landroid/graphics/RectF;

    .line 18
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/keyguard/LockIconView;->mSensorRect:Landroid/graphics/RectF;

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "Lock Icon View Parameters:"

    .line 2
    const-string v0, "    Center in px (x, y)= ("

    .line 4
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/LockIconView;->mLockIconCenter:Landroid/graphics/Point;

    .line 10
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v0, ", "

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lcom/android/keyguard/LockIconView;->mLockIconCenter:Landroid/graphics/Point;

    .line 22
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 24
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ")"

    .line 29
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    const-string v2, "    Radius in pixels: "

    .line 43
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget v2, p0, Lcom/android/keyguard/LockIconView;->mRadius:F

    .line 48
    const-string v3, "    Drawable padding: "

    .line 50
    invoke-static {p2, v2, p1, v3}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object p2

    .line 55
    iget v2, p0, Lcom/android/keyguard/LockIconView;->mLockIconPadding:I

    .line 56
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    iget p2, p0, Lcom/android/keyguard/LockIconView;->mIconType:I

    .line 68
    const/4 v2, -0x1

    .line 70
    if-eq p2, v2, :cond_3

    .line 71
    if-eqz p2, :cond_2

    .line 73
    const/4 v2, 0x1

    .line 75
    if-eq p2, v2, :cond_1

    .line 76
    const/4 v2, 0x2

    .line 78
    if-eq p2, v2, :cond_0

    .line 79
    const-string p2, "invalid"

    .line 81
    goto :goto_0

    .line 83
    :cond_0
    const-string/jumbo p2, "unlock"

    .line 84
    goto :goto_0

    .line 87
    :cond_1
    const-string p2, "fingerprint"

    .line 88
    goto :goto_0

    .line 90
    :cond_2
    const-string p2, "lock"

    .line 91
    goto :goto_0

    .line 93
    :cond_3
    const-string p2, "none"

    .line 94
    :goto_0
    const-string v2, "    mIconType="

    .line 96
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    const-string v2, "    mAod="

    .line 107
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget-boolean v2, p0, Lcom/android/keyguard/LockIconView;->mAod:Z

    .line 112
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p2

    .line 120
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string p2, "Lock Icon View actual measurements:"

    .line 124
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 129
    const-string v2, "    topLeft= ("

    .line 131
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    .line 136
    move-result v2

    .line 139
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    .line 146
    move-result v0

    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object p2

    .line 159
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    .line 163
    const-string v0, "    width="

    .line 165
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 170
    move-result v0

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v0, " height="

    .line 177
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 182
    move-result p0

    .line 185
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p0

    .line 192
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    return-void
    .line 196
.end method

.method public getLocationBottom()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/LockIconView;->mLockIconCenter:Landroid/graphics/Point;

    .line 2
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 4
    int-to-float v0, v0

    .line 6
    iget p0, p0, Lcom/android/keyguard/LockIconView;->mRadius:F

    .line 7
    add-float/2addr v0, p0

    .line 9
    return v0
    .line 10
.end method

.method public getLocationTop()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/LockIconView;->mLockIconCenter:Landroid/graphics/Point;

    .line 2
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 4
    int-to-float v0, v0

    .line 6
    iget p0, p0, Lcom/android/keyguard/LockIconView;->mRadius:F

    .line 7
    sub-float/2addr v0, p0

    .line 9
    return v0
    .line 10
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0510    # @id/lock_icon

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/LockIconView;->mLockIcon:Landroid/widget/ImageView;

    .line 14
    const v0, 0x7f0a0511    # @id/lock_icon_bg

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/LockIconView;->mBgView:Landroid/widget/ImageView;

    .line 25
    return-void
    .line 27
.end method

.method public setCenterLocation(Landroid/graphics/Point;FI)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/LockIconView;->mLockIconCenter:Landroid/graphics/Point;

    .line 2
    iput p2, p0, Lcom/android/keyguard/LockIconView;->mRadius:F

    .line 4
    iput p3, p0, Lcom/android/keyguard/LockIconView;->mLockIconPadding:I

    .line 6
    iget-object p1, p0, Lcom/android/keyguard/LockIconView;->mLockIcon:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 10
    iget-object p1, p0, Lcom/android/keyguard/LockIconView;->mSensorRect:Landroid/graphics/RectF;

    .line 13
    iget-object p2, p0, Lcom/android/keyguard/LockIconView;->mLockIconCenter:Landroid/graphics/Point;

    .line 15
    iget p3, p2, Landroid/graphics/Point;->x:I

    .line 17
    int-to-float v0, p3

    .line 19
    iget v1, p0, Lcom/android/keyguard/LockIconView;->mRadius:F

    .line 20
    sub-float/2addr v0, v1

    .line 22
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 23
    int-to-float v2, p2

    .line 25
    sub-float/2addr v2, v1

    .line 26
    int-to-float p3, p3

    .line 27
    add-float/2addr p3, v1

    .line 28
    int-to-float p2, p2

    .line 29
    add-float/2addr p2, v1

    .line 30
    invoke-virtual {p1, v0, v2, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    iget-object p2, p0, Lcom/android/keyguard/LockIconView;->mSensorRect:Landroid/graphics/RectF;

    .line 40
    iget p3, p2, Landroid/graphics/RectF;->right:F

    .line 42
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 44
    sub-float/2addr p3, v0

    .line 46
    float-to-int p3, p3

    .line 47
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 48
    iget p3, p2, Landroid/graphics/RectF;->bottom:F

    .line 50
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 52
    sub-float/2addr p3, p2

    .line 54
    float-to-int p3, p3

    .line 55
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 56
    float-to-int p2, p2

    .line 58
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 59
    float-to-int p2, v0

    .line 61
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
    .line 68
.end method

.method public setUseBackground(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/LockIconView;->mUseBackground:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconView;->updateColorAndBackgroundVisibility()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateColorAndBackgroundVisibility()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconView;->mUseBackground:Z

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/LockIconView;->mLockIcon:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 19
    const v3, 0x1010036    # @android:attr/textColorPrimary

    .line 20
    invoke-static {v0, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 23
    move-result v0

    .line 26
    iget v3, p0, Lcom/android/keyguard/LockIconView;->mDozeAmount:F

    .line 27
    invoke-static {v0, v1, v3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 29
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/keyguard/LockIconView;->mLockIconColor:I

    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v0

    .line 38
    const v1, 0x112002f    # @android:^attr-private/colorSurface

    .line 39
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 42
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/android/keyguard/LockIconView;->mBgView:Landroid/widget/ImageView;

    .line 46
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 48
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/LockIconView;->mBgView:Landroid/widget/ImageView;

    .line 55
    const/high16 v1, 0x3f800000    # 1.0f

    .line 57
    iget v3, p0, Lcom/android/keyguard/LockIconView;->mDozeAmount:F

    .line 59
    sub-float/2addr v1, v3

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 62
    iget-object v0, p0, Lcom/android/keyguard/LockIconView;->mBgView:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v0

    .line 74
    const v3, 0x7f0408af    # @attr/wallpaperTextColorAccent

    .line 75
    invoke-static {v0, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 78
    move-result v0

    .line 81
    iget v2, p0, Lcom/android/keyguard/LockIconView;->mDozeAmount:F

    .line 82
    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    .line 84
    move-result v0

    .line 87
    iput v0, p0, Lcom/android/keyguard/LockIconView;->mLockIconColor:I

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/LockIconView;->mBgView:Landroid/widget/ImageView;

    .line 90
    const/16 v1, 0x8

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/LockIconView;->mLockIcon:Landroid/widget/ImageView;

    .line 97
    iget p0, p0, Lcom/android/keyguard/LockIconView;->mLockIconColor:I

    .line 99
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 101
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 105
    return-void
    .line 108
.end method

.method public final updateIcon(IZ)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/keyguard/LockIconView;->mIconType:I

    .line 2
    iput-boolean p2, p0, Lcom/android/keyguard/LockIconView;->mAod:Z

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/LockIconView;->mLockIcon:Landroid/widget/ImageView;

    .line 6
    const/4 v0, 0x1

    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    new-array p1, v2, [I

    .line 13
    goto :goto_2

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    new-array v3, v1, [I

    .line 17
    if-eqz p1, :cond_3

    .line 19
    if-eq p1, v0, :cond_2

    .line 21
    if-eq p1, v1, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    const p1, 0x10100a6    # @android:attr/state_last

    .line 26
    aput p1, v3, v2

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    const p1, 0x10100a5    # @android:attr/state_middle

    .line 32
    aput p1, v3, v2

    .line 35
    goto :goto_0

    .line 37
    :cond_3
    const p1, 0x10100a4    # @android:attr/state_first

    .line 38
    aput p1, v3, v2

    .line 41
    :goto_0
    if-eqz p2, :cond_4

    .line 43
    const p1, 0x10100a3    # @android:attr/state_single

    .line 45
    aput p1, v3, v0

    .line 48
    goto :goto_1

    .line 50
    :cond_4
    const p1, -0x10100a3

    .line 51
    aput p1, v3, v0

    .line 54
    :goto_1
    move-object p1, v3

    .line 56
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 57
    return-void
    .line 60
.end method
