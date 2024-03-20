.class public Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KeyguardRestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KeyguardRestrictedListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestrictedArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/KeyguardRestrictedListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/KeyguardRestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V
    .locals 1

    .line 167
    iput-object p1, p0, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedArrayAdapter;->this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

    .line 168
    sget p1, Lcom/android/settings/R$layout;->keyguard_restricted_dialog_singlechoice:I

    sget v0, Lcom/android/settings/R$id;->text1:I

    invoke-direct {p0, p2, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 169
    iput p4, p0, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedArrayAdapter;->mSelectedIndex:I

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 0

    .line 0
    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 174
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 175
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    .line 176
    sget v0, Lcom/android/settings/R$id;->text1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 177
    sget v1, Lcom/android/settings/R$id;->restricted_lock_root:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 178
    sget v2, Lcom/android/settings/R$id;->restricted_lock_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 179
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$attr;->dialogListItemBackground:I

    invoke-static {v3, v4}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    filled-new-array {p2}, [Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v3, v6, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/ITouchStyle;->clearTintColor()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    const v5, 0x3da3d70a    # 0.08f

    const/4 v6, 0x0

    .line 181
    invoke-interface {v3, v5, v6, v6, v6}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    new-array v5, v4, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v3, p2, v5}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 182
    iget-object v3, p0, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedArrayAdapter;->this$0:Lcom/android/settings/KeyguardRestrictedListPreference;

    invoke-virtual {v3, p3}, Lcom/android/settings/KeyguardRestrictedListPreference;->isRestrictedForEntry(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 183
    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 184
    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 185
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_0
    iget p3, p0, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedArrayAdapter;->mSelectedIndex:I

    const/4 v3, -0x1

    const/4 v5, 0x1

    if-eq p3, v3, :cond_2

    if-ne p1, p3, :cond_1

    move v4, v5

    .line 188
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 189
    iget p3, p0, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedArrayAdapter;->mSelectedIndex:I

    if-ne p1, p3, :cond_2

    .line 190
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$color;->restricted_lock_item_select_bg:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 193
    :cond_2
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    .line 194
    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    :cond_3
    const/16 p0, 0x8

    .line 196
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
