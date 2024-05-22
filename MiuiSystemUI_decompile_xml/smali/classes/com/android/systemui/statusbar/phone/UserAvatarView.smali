.class public Lcom/android/systemui/statusbar/phone/UserAvatarView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Lcom/android/settingslib/drawable/UserIconDrawable;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    .line 4
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 5
    sget-object v0, Lcom/android/systemui/R$styleable;->UserAvatarView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_6

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    .line 8
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setAvatarPadding(F)V

    goto :goto_1

    :cond_0
    const/4 p4, 0x6

    if-ne p3, p4, :cond_1

    .line 9
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFrameWidth(F)V

    goto :goto_1

    :cond_1
    const/4 p4, 0x5

    if-ne p3, p4, :cond_2

    .line 10
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFramePadding(F)V

    goto :goto_1

    :cond_2
    const/4 p4, 0x4

    if-ne p3, p4, :cond_3

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFrameColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_3
    const/4 p4, 0x2

    if-ne p3, p4, :cond_4

    .line 12
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setBadgeDiameter(F)V

    goto :goto_1

    :cond_4
    const/4 p4, 0x3

    if-ne p3, p4, :cond_5

    .line 13
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setBadgeMargin(F)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setActivated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 5
    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->invalidateSelf()V

    .line 7
    return-void
    .line 10
.end method

.method public setAvatar(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 7
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void
    .line 13
.end method

.method public setAvatarPadding(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 2
    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPadding:F

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 10
    return-void
    .line 13
.end method

.method public setAvatarWithBadge(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p1, p2, p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(ILandroid/content/Context;)V

    .line 13
    return-void
    .line 16
.end method

.method public setBadgeDiameter(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 2
    const/high16 v0, 0x3f000000    # 0.5f

    .line 4
    mul-float/2addr p1, v0

    .line 6
    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeRadius:F

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 13
    return-void
    .line 16
.end method

.method public setBadgeMargin(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 2
    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeMargin:F

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 10
    return-void
    .line 13
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setAvatar(Landroid/graphics/Bitmap;)V

    .line 2
    return-void
    .line 5
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 2
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 6
    iget-object v1, v0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 13
    :cond_0
    iput-object v2, v0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    .line 16
    iput-object p1, v0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    if-nez p1, :cond_1

    .line 20
    iput-object v2, v0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 25
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 35
    invoke-virtual {p0, v2}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void

    .line 40
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 41
    const-string p1, "Recursively adding UserIconDrawable"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0
    .line 48
.end method

.method public setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 2
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 6
    iget-object v1, v0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 13
    :cond_0
    iput-object v2, v0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    .line 16
    iput-object p1, v0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    if-nez p1, :cond_1

    .line 20
    iput-object v2, v0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 25
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 32
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {p1, p2, p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(ILandroid/content/Context;)V

    .line 41
    return-void

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 45
    const-string p1, "Recursively adding UserIconDrawable"

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
    .line 52
.end method

.method public setFrameColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->initFramePaint()V

    .line 4
    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->invalidateSelf()V

    .line 9
    return-void
    .line 12
.end method

.method public setFramePadding(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->initFramePaint()V

    .line 4
    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePadding:F

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 13
    return-void
    .line 16
.end method

.method public setFrameWidth(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->initFramePaint()V

    .line 4
    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameWidth:F

    .line 7
    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 18
    return-void
    .line 21
.end method
