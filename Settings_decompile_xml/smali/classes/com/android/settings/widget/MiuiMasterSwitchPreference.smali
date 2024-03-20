.class public Lcom/android/settings/widget/MiuiMasterSwitchPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "MiuiMasterSwitchPreference.java"


# instance fields
.field private mChecked:Z

.field private mEnableSwitch:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static bridge synthetic -$$Nest$fgetmChecked(Lcom/android/settings/widget/MiuiMasterSwitchPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mChecked:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitch(Lcom/android/settings/widget/MiuiMasterSwitchPreference;)Landroid/widget/Switch;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/MiuiMasterSwitchPreference;Z)Z
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020018    # @android:id/widget_frame

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Lcom/android/settings/widget/MiuiMasterSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MiuiMasterSwitchPreference$1;-><init>(Lcom/android/settings/widget/MiuiMasterSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    sget v0, Lcom/android/settings/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean p0, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mEnableSwitch:Z

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mChecked:Z

    .line 99
    iget-object p0, p0, Lcom/android/settings/widget/MiuiMasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method
