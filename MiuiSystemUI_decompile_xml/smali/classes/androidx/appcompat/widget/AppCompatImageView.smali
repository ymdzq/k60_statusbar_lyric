.class public Landroidx/appcompat/widget/AppCompatImageView;
.super Landroid/widget/ImageView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field public mHasLevel:Z

.field public final mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mHasLevel:Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;Landroid/view/View;)V

    .line 6
    new-instance p1, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 7
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 9
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 16
    :cond_1
    return-void
    .line 19
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 11
    move-object v0, p0

    .line 13
    :cond_0
    return-object v0
    .line 14
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 11
    move-object v0, p0

    .line 13
    :cond_0
    return-object v0
    .line 14
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 10
    const/4 v1, 0x1

    .line 12
    xor-int/2addr v0, v1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    return v1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mHasLevel:Z

    .line 8
    if-nez v1, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 12
    move-result v1

    .line 15
    iput v1, v0, Landroidx/appcompat/widget/AppCompatImageHelper;->mLevel:I

    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 25
    iget-boolean p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mHasLevel:Z

    .line 28
    if-nez p1, :cond_1

    .line 30
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 32
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object p1

    .line 45
    iget p0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mLevel:I

    .line 46
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 48
    :cond_1
    return-void
    .line 51
.end method

.method public setImageLevel(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mHasLevel:Z

    .line 6
    return-void
    .line 8
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 6
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    .line 10
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    .line 12
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 17
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 19
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 24
    :cond_1
    return-void
    .line 27
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 6
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    .line 10
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    .line 12
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 17
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 19
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 24
    :cond_1
    return-void
    .line 27
.end method
