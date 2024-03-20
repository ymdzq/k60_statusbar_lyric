.class public Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;
.super Lcom/android/settings/widget/GearPreference;
.source "GroupBluetoothSettingsPreference.java"


# static fields
.field private static sDimAlpha:I = -0x80000000


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private mGroupId:I

.field private mHideSecondTarget:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisibleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->contentDescription:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mHideSecondTarget:Z

    .line 60
    iput v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mVisibleCount:I

    .line 64
    iput p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mGroupId:I

    .line 65
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mResources:Landroid/content/res/Resources;

    .line 66
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mUserManager:Landroid/os/UserManager;

    .line 67
    sget p2, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->sDimAlpha:I

    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_0

    .line 68
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x1010033    # @android:attr/disabledAlpha

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 70
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    sput p1, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->sDimAlpha:I

    .line 72
    :cond_0
    iput v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mVisibleCount:I

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->onDeviceAttributesChanged()V

    return-void
.end method


# virtual methods
.method public decrementChildCount()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mVisibleCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mVisibleCount:I

    return v0
.end method

.method public getGroupId()I
    .locals 0

    .line 131
    iget p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mGroupId:I

    return p0
.end method

.method protected getSecondTargetResId()I
    .locals 0

    .line 127
    sget p0, Lcom/android/settings/R$layout;->preference_widget_gear:I

    return p0
.end method

.method public incrementChildCound()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mVisibleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mVisibleCount:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const-string v0, "bt_checkbox"

    .line 105
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 109
    :cond_0
    sget v0, Lcom/android/settings/R$id;->settings_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x1020006    # @android:id/icon

    .line 114
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/widget/GearPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .line 92
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    sget v1, Lcom/android/settings/R$string;->group_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mGroupId:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 99
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_config_bluetooth"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothSettingsPreference;->mHideSecondTarget:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
