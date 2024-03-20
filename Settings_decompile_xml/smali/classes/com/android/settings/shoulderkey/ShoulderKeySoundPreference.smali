.class public Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;
.super Landroidx/preference/Preference;
.source "ShoulderKeySoundPreference.java"


# instance fields
.field private mBulletCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mCheckBoxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/visual/check/VisualCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedBoxType:Ljava/lang/String;

.field private mCheckedListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

.field private mClassicCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field mContext:Landroid/content/Context;

.field private mCurrentCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mRootView:Landroid/view/View;

.field private mWindCheckBox:Lmiuix/visual/check/VisualCheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckBoxMap:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mContext:Landroid/content/Context;

    .line 39
    sget p1, Lcom/android/settings/R$layout;->shoulderkey_sound_view:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mRootView:Landroid/view/View;

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->checkgroup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckGroup;

    .line 50
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sound_classic:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mClassicCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 51
    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckBoxMap:Ljava/util/Map;

    const-string v2, "classic"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sound_bullet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mBulletCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 53
    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckBoxMap:Ljava/util/Map;

    const-string v2, "bullet"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sound_current:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCurrentCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 55
    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckBoxMap:Ljava/util/Map;

    const-string v2, "current"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sound_wind:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mWindCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 57
    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckBoxMap:Ljava/util/Map;

    const-string/jumbo v2, "wind"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckBoxMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckedBoxType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckBoxMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckedBoxType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckedListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p0}, Lmiuix/visual/check/VisualCheckGroup;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public setCheckBoxCheckedType(Ljava/lang/String;)V
    .locals 1

    .line 67
    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckedBoxType:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckBoxMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckBoxMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/visual/check/VisualCheckBox;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/shoulderkey/ShoulderKeySoundPreference;->mCheckedListener:Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;

    return-void
.end method
