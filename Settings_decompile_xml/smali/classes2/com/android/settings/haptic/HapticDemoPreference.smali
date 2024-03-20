.class public Lcom/android/settings/haptic/HapticDemoPreference;
.super Landroidx/preference/Preference;
.source "HapticDemoPreference.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;


# instance fields
.field private mImgInteresting:Landroid/widget/RelativeLayout;

.field private mImgLimit:Landroid/widget/RelativeLayout;

.field public mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget p1, Lcom/android/settings/R$layout;->haptic_preview_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 32
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 33
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    .line 34
    sget v0, Lcom/android/settings/R$id;->img_limit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoPreference;->mImgLimit:Landroid/widget/RelativeLayout;

    .line 35
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoPreference;->mImgLimit:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    const/4 v3, 0x1

    invoke-interface {p1, v0, v3, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    .line 36
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoPreference;->mImgLimit:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/android/settings/haptic/HapticDemoPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/haptic/HapticDemoPreference$1;-><init>(Lcom/android/settings/haptic/HapticDemoPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->img_interesting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoPreference;->mImgInteresting:Landroid/widget/RelativeLayout;

    .line 50
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoPreference;->mImgInteresting:Landroid/widget/RelativeLayout;

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0, v3, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoPreference;->mImgInteresting:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/android/settings/haptic/HapticDemoPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/haptic/HapticDemoPreference$2;-><init>(Lcom/android/settings/haptic/HapticDemoPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
