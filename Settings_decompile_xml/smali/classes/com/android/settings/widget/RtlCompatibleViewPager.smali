.class public final Lcom/android/settings/widget/RtlCompatibleViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "RtlCompatibleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result p0

    return p0
.end method

.method public getRtlAwareIndex(I)I
    .locals 2

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p0, v1

    return p0

    :cond_0
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 74
    check-cast p1, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;

    .line 75
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/internal/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 77
    iget p1, p1, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;->position:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/android/internal/widget/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getCurrentItem()I

    move-result p0

    iput p0, v1, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;->position:I

    return-object v1
.end method

.method public setCurrentItem(I)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result p1

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
