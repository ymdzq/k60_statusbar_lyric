.class public Lcom/android/settingslib/miuisettings/preference/SeekBarPreference;
.super Landroidx/preference/SeekBarPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;


# instance fields
.field private mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/android/settingslib/miuisettings/preference/SeekBarPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    invoke-direct {p0}, Lcom/android/settingslib/miuisettings/preference/SeekBarPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    invoke-direct {p0}, Lcom/android/settingslib/miuisettings/preference/SeekBarPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 34
    new-instance v0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    invoke-direct {v0, p0, p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;-><init>(Landroidx/preference/Preference;Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;)V

    iput-object v0, p0, Lcom/android/settingslib/miuisettings/preference/SeekBarPreference;->mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 48
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/SeekBarPreference;->mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/SeekBarPreference;->mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->onBindViewStart(Landroid/view/View;)V

    .line 64
    invoke-super {p0, p1}, Landroidx/preference/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 65
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/SeekBarPreference;->mDelegate:Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->onBindViewEnd(Landroid/view/View;)V

    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 0
    return-void
.end method
