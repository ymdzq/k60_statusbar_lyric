.class public Lcom/android/settings/KeyguardRestrictedListPreference;
.super Lcom/android/settings/CustomListPreference;
.source "KeyguardRestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;,
        Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedArrayAdapter;
    }
.end annotation


# instance fields
.field private final mHelper:Lcom/android/settings/KeyguardRestrictedPreferenceHelper;

.field private final mRestrictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mValueRight:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mgetRestrictedItemForEntryValue(Lcom/android/settings/KeyguardRestrictedListPreference;Ljava/lang/CharSequence;)Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/KeyguardRestrictedListPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    .line 38
    sget v0, Lcom/android/settings/R$layout;->value_and_restricted_icon_for_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 39
    new-instance v0, Lcom/android/settings/KeyguardRestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settings/KeyguardRestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mHelper:Lcom/android/settings/KeyguardRestrictedPreferenceHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    .line 45
    new-instance p3, Lcom/android/settings/KeyguardRestrictedPreferenceHelper;

    invoke-direct {p3, p1, p0, p2}, Lcom/android/settings/KeyguardRestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mHelper:Lcom/android/settings/KeyguardRestrictedPreferenceHelper;

    return-void
.end method

.method private getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;

    .line 111
    iget-object v2, v1, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addRestrictedItem(Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    .line 119
    new-instance v0, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedArrayAdapter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/KeyguardRestrictedListPreference;->getSelectedValuePos()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedArrayAdapter;-><init>(Lcom/android/settings/KeyguardRestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public getSelectedValuePos()I
    .locals 1

    .line 124
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public isDisabledByAdmin()Z
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mHelper:Lcom/android/settings/KeyguardRestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method public isRestrictedForEntry(Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;

    .line 91
    iget-object v1, v1, Lcom/android/settings/KeyguardRestrictedListPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mHelper:Lcom/android/settings/KeyguardRestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 52
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 53
    sget v0, Lcom/android/settings/R$id;->restricted_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    sget v1, Lcom/android/settings/R$id;->value_right:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mValueRight:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/KeyguardRestrictedListPreference;->isDisabledByAdmin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 5

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/KeyguardRestrictedListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/android/settings/KeyguardRestrictedListPreference$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/KeyguardRestrictedListPreference$1;-><init>(Lcom/android/settings/KeyguardRestrictedListPreference;Landroid/widget/ListAdapter;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->screen_timeout_title:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 144
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 145
    new-instance v1, Lcom/android/settings/KeyguardRestrictedListPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/KeyguardRestrictedListPreference$2;-><init>(Lcom/android/settings/KeyguardRestrictedListPreference;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mHelper:Lcom/android/settings/KeyguardRestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mHelper:Lcom/android/settings/KeyguardRestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/KeyguardRestrictedListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/android/settings/KeyguardRestrictedListPreference;->mHelper:Lcom/android/settings/KeyguardRestrictedPreferenceHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
