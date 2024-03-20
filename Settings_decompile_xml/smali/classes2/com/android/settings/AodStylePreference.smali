.class public Lcom/android/settings/AodStylePreference;
.super Lcom/android/settings/KeyguardRestrictedPreference;
.source "AodStylePreference.java"


# instance fields
.field private mAodStyleImage:Landroid/widget/ImageView;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$ILrNuIK0zmc8EWf2cyI2bDNVQMs(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/AodStylePreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/KeyguardRestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/AodStylePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/KeyguardRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/android/settings/AodStylePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/KeyguardRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lcom/android/settings/AodStylePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/KeyguardRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    invoke-direct {p0}, Lcom/android/settings/AodStylePreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 40
    sget v0, Lcom/android/settings/R$layout;->aod_style_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 1

    .line 59
    sget v0, Lcom/android/settings/R$id;->arrow_right:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardRestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018    # @android:id/widget_frame

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 54
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 58
    new-instance v0, Lcom/android/settings/AodStylePreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/AodStylePreference$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    sget v0, Lcom/android/settings/R$id;->aod_style_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/AodStylePreference;->mAodStyleImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 66
    iget-object p0, p0, Lcom/android/settings/AodStylePreference;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public setAodStyleImage(Landroid/net/Uri;)V
    .locals 2

    .line 71
    iput-object p1, p0, Lcom/android/settings/AodStylePreference;->mUri:Landroid/net/Uri;

    .line 72
    iget-object v0, p0, Lcom/android/settings/AodStylePreference;->mAodStyleImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 74
    iget-object p0, p0, Lcom/android/settings/AodStylePreference;->mAodStyleImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
