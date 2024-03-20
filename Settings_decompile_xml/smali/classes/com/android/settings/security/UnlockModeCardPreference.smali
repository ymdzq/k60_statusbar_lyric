.class public Lcom/android/settings/security/UnlockModeCardPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "UnlockModeCardPreference.java"

# interfaces
.implements Lmiuix/preference/FolmeAnimationController;


# instance fields
.field private mAdapter:Lcom/android/settings/SettingsCardAdapter;

.field private mCardGridView:Lcom/android/settings/sound/coolsound/RingtoneGridView;

.field private mCardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private refreshPosition:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/settings/security/UnlockModeCardPreference;)Lcom/android/settings/SettingsCardAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mAdapter:Lcom/android/settings/SettingsCardAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputrefreshPosition(Lcom/android/settings/security/UnlockModeCardPreference;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/security/UnlockModeCardPreference;->refreshPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/UnlockModeCardPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 33
    iput p2, p0, Lcom/android/settings/security/UnlockModeCardPreference;->refreshPosition:I

    .line 41
    iput-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/CardInfo;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mCardList:Ljava/util/List;

    return-object p0
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 54
    sget v0, Lcom/android/settings/R$id;->grid_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/coolsound/RingtoneGridView;

    iput-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mCardGridView:Lcom/android/settings/sound/coolsound/RingtoneGridView;

    .line 55
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mCardGridView:Lcom/android/settings/sound/coolsound/RingtoneGridView;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isLandScape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mAdapter:Lcom/android/settings/SettingsCardAdapter;

    if-eqz v0, :cond_2

    .line 59
    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mCardGridView:Lcom/android/settings/sound/coolsound/RingtoneGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mCardGridView:Lcom/android/settings/sound/coolsound/RingtoneGridView;

    new-instance v1, Lcom/android/settings/security/UnlockModeCardPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/security/UnlockModeCardPreference$1;-><init>(Lcom/android/settings/security/UnlockModeCardPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    :cond_2
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 74
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_3
    const/4 p0, 0x0

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 46
    sget p1, Lcom/android/settings/R$layout;->unlock_card_view_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public refresh()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mAdapter:Lcom/android/settings/SettingsCardAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mCardList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settings/security/UnlockModeCardPreference;->refreshPosition:I

    if-ltz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mAdapter:Lcom/android/settings/SettingsCardAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/CardInfo;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mCardList:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mAdapter:Lcom/android/settings/SettingsCardAdapter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 82
    new-instance p1, Lcom/android/settings/SettingsCardAdapter;

    iget-object v0, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mCardList:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/SettingsCardAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/settings/security/UnlockModeCardPreference;->mAdapter:Lcom/android/settings/SettingsCardAdapter;

    :cond_0
    return-void
.end method
