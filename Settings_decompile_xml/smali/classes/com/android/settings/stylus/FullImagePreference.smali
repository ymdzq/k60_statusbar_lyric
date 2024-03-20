.class public Lcom/android/settings/stylus/FullImagePreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "FullImagePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mImageRes:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/stylus/FullImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/stylus/FullImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    sget p2, Lcom/android/settings/R$layout;->full_image_preference:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 28
    iput-object p1, p0, Lcom/android/settings/stylus/FullImagePreference;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->full_image_width_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/stylus/FullImagePreference;->mWidth:I

    .line 30
    iget-object p1, p0, Lcom/android/settings/stylus/FullImagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->full_image_height_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/stylus/FullImagePreference;->mHeight:I

    return-void
.end method

.method private resIsAvailable(I)Z
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 48
    sget v0, Lcom/android/settings/R$id;->full_image:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 49
    iget v0, p0, Lcom/android/settings/stylus/FullImagePreference;->mImageRes:I

    invoke-direct {p0, v0}, Lcom/android/settings/stylus/FullImagePreference;->resIsAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget v0, p0, Lcom/android/settings/stylus/FullImagePreference;->mImageRes:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 52
    iget v1, p0, Lcom/android/settings/stylus/FullImagePreference;->mHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    iget p0, p0, Lcom/android/settings/stylus/FullImagePreference;->mWidth:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
