.class public Lcom/android/settings/controlcenter/ControlCenterStylePreference;
.super Lcom/android/settings/view/VisualCheckBoxPreference;
.source "ControlCenterStylePreference.java"


# static fields
.field private static final RES_NEW_STYLE:I

.field private static final RES_NEW_STYLE_VIDEO:I

.field private static final RES_OLD_STYLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget v0, Lcom/android/settings/R$drawable;->quick_settings_style:I

    sput v0, Lcom/android/settings/controlcenter/ControlCenterStylePreference;->RES_OLD_STYLE:I

    .line 25
    sget v0, Lcom/android/settings/R$drawable;->control_center_style:I

    sput v0, Lcom/android/settings/controlcenter/ControlCenterStylePreference;->RES_NEW_STYLE:I

    .line 28
    sget v0, Lcom/android/settings/R$raw;->control_center_style_video:I

    sput v0, Lcom/android/settings/controlcenter/ControlCenterStylePreference;->RES_NEW_STYLE_VIDEO:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/view/VisualCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/view/VisualCheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 50
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method protected onCreateVisualContent(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 37
    sget v0, Lcom/android/settings/R$id;->video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/view/CornerVideoView;

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 39
    sget v0, Lcom/android/settings/controlcenter/ControlCenterStylePreference;->RES_NEW_STYLE_VIDEO:I

    sget v1, Lcom/android/settings/controlcenter/ControlCenterStylePreference;->RES_NEW_STYLE:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/view/CornerVideoView;->play(II)V

    :cond_0
    if-eqz p2, :cond_1

    .line 42
    sget p1, Lcom/android/settings/R$id;->image_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 43
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/settings/controlcenter/ControlCenterStylePreference;->RES_OLD_STYLE:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
