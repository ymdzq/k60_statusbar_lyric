.class public Lcom/android/systemui/qs/tiles/UserDetailItemView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActivatedStyle:I

.field public mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

.field public mName:Landroid/widget/TextView;

.field public mRegularStyle:I

.field public mRestrictedPadlock:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    sget-object v0, Lcom/android/systemui/R$styleable;->UserDetailItemView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_2

    .line 7
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularStyle:I

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedStyle:I

    :cond_1
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x10102fe    # @android:attr/state_activated

    .line 9
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 12
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget p0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedStyle:I

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularStyle:I

    .line 23
    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 25
    return-void
    .line 28
.end method

.method public getFontSizeDimen()I
    .locals 0

    .line 1
    const p0, 0x7f071005    # @dimen/qs_tile_text_size '11.64sp'

    .line 2
    return p0
    .line 5
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->getFontSizeDimen()I

    .line 7
    move-result p0

    .line 10
    invoke-static {p1, p0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 11
    return-void
    .line 14
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    const v0, 0x7f0a0a47    # @id/user_picture

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 9
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 11
    const v0, 0x7f0a0a45    # @id/user_name

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 22
    iget v1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularStyle:I

    .line 24
    if-nez v1, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/widget/TextView;->getExplicitStyle()I

    .line 28
    move-result v0

    .line 31
    iput v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularStyle:I

    .line 32
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedStyle:I

    .line 34
    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 38
    invoke-virtual {v0}, Landroid/widget/TextView;->getExplicitStyle()I

    .line 40
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedStyle:I

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    .line 46
    move-result-object v0

    .line 49
    const v1, 0x10102fe    # @android:attr/state_activated

    .line 50
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 53
    move-result v0

    .line 56
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 57
    if-eqz v0, :cond_2

    .line 59
    iget v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedStyle:I

    .line 61
    goto :goto_0

    .line 63
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularStyle:I

    .line 64
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 66
    const v0, 0x7f0a07a3    # @id/restricted_padlock

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRestrictedPadlock:Landroid/view/View;

    .line 76
    return-void
    .line 78
.end method

.method public setDisabledByAdmin(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRestrictedPadlock:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 v1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v1, 0x8

    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_1
    xor-int/lit8 p1, p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    .line 17
    return-void
    .line 20
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    return-void
    .line 15
.end method
