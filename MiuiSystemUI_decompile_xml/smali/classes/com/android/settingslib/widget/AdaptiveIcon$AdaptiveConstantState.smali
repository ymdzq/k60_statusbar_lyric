.class Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mColor:I

.field public final mContext:Landroid/content/Context;

.field public final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/settingslib/widget/AdaptiveIcon;

    .line 2
    iget-object v1, p0, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;->mContext:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/AdaptiveIcon;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget p0, p0, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;->mColor:I

    .line 11
    iput p0, v0, Lcom/android/settingslib/widget/AdaptiveIcon;->mBackgroundColor:I

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1

    .line 19
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 20
    invoke-virtual {v1, p0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "Setting background color "

    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget v2, v0, Lcom/android/settingslib/widget/AdaptiveIcon;->mBackgroundColor:I

    .line 32
    const-string v3, "AdaptiveHomepageIcon"

    .line 34
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 36
    iget-object v1, v0, Lcom/android/settingslib/widget/AdaptiveIcon;->mAdaptiveConstantState:Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;

    .line 39
    iput p0, v1, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;->mColor:I

    .line 41
    return-object v0
    .line 43
.end method
