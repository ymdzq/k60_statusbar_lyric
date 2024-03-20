.class public Lcom/android/settings/display/CloseLidDisplaySettingFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CloseLidDisplaySettingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;
    }
.end annotation


# static fields
.field private static final VIDEO_ID:[I


# instance fields
.field private CLOSE_LID_DISPLAY_SETTING_DEFAULT:I

.field private mCloseLidDisplayVideoPreference:Lcom/android/settings/widget/CloseLidDisplayVideoPreference;

.field private mCloseLidSettingObserver:Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentCloseLidDisplaySetting:I

.field private mIntelligentKeepScreenOnPreference:Lmiuix/preference/RadioButtonPreference;

.field private mKeepScreenOnPreference:Lmiuix/preference/RadioButtonPreference;

.field private mLockScreenNowPreference:Lmiuix/preference/RadioButtonPreference;

.field private mSwipeUpToContinuePreference:Lmiuix/preference/RadioButtonPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCloseLidDisplayVideoPreference(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Lcom/android/settings/widget/CloseLidDisplayVideoPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCloseLidDisplayVideoPreference:Lcom/android/settings/widget/CloseLidDisplayVideoPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentCloseLidDisplaySetting(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCurrentCloseLidDisplaySetting:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeepScreenOnPreference(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mKeepScreenOnPreference:Lmiuix/preference/RadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockScreenNowPreference(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mLockScreenNowPreference:Lmiuix/preference/RadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwipeUpToContinuePreference(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mSwipeUpToContinuePreference:Lmiuix/preference/RadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentCloseLidDisplaySetting(Lcom/android/settings/display/CloseLidDisplaySettingFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCurrentCloseLidDisplaySetting:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCloseLidDisplaySetting(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->getCloseLidDisplaySetting()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPreference(Lcom/android/settings/display/CloseLidDisplaySettingFragment;I)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->getPreference(I)Lmiuix/preference/RadioButtonPreference;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetVIDEO_ID()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->VIDEO_ID:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 48
    sget v0, Lcom/android/settings/R$raw;->lock_screen_now:I

    sget v1, Lcom/android/settings/R$raw;->swipe_up_to_continue_using:I

    sget v2, Lcom/android/settings/R$raw;->keep_screen_on:I

    filled-new-array {v0, v1, v2, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->VIDEO_ID:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->CLOSE_LID_DISPLAY_SETTING_DEFAULT:I

    return-void
.end method

.method private findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 229
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method private getCloseLidDisplaySetting()I
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "close_lid_display_setting"

    iget p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->CLOSE_LID_DISPLAY_SETTING_DEFAULT:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getPreference(I)Lmiuix/preference/RadioButtonPreference;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 222
    iget-object p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mLockScreenNowPreference:Lmiuix/preference/RadioButtonPreference;

    goto :goto_0

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mIntelligentKeepScreenOnPreference:Lmiuix/preference/RadioButtonPreference;

    goto :goto_0

    .line 215
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mKeepScreenOnPreference:Lmiuix/preference/RadioButtonPreference;

    goto :goto_0

    .line 212
    :cond_2
    iget-object p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mSwipeUpToContinuePreference:Lmiuix/preference/RadioButtonPreference;

    :goto_0
    return-object p0
.end method

.method private preferenceKeyToInt(Ljava/lang/String;)I
    .locals 5

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "lock_screen_now"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    goto :goto_0

    :sswitch_1
    const-string p0, "keep_screen_on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string p0, "intelligent_keep_screen_on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string/jumbo p0, "swipe_up_to_continue_using"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v0, v3

    goto :goto_1

    :pswitch_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    move v0, v2

    :goto_1
    :pswitch_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3732c78f -> :sswitch_3
        -0x6a56ee0 -> :sswitch_2
        0x5d3f0e58 -> :sswitch_1
        0x73a9bc17 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRadioButtonPreference(Ljava/lang/String;)V
    .locals 3

    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->preferenceKeyToInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCurrentCloseLidDisplaySetting:I

    .line 113
    iget-object p1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCurrentCloseLidDisplaySetting:I

    const/4 v1, -0x2

    const-string v2, "close_lid_display_setting"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 116
    iget-object p1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCloseLidDisplayVideoPreference:Lcom/android/settings/widget/CloseLidDisplayVideoPreference;

    sget-object v0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->VIDEO_ID:[I

    iget p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCurrentCloseLidDisplaySetting:I

    aget p0, v0, p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/CloseLidDisplayVideoPreference;->changeVideoView(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mContext:Landroid/content/Context;

    .line 60
    sget p1, Lcom/android/settings/R$xml;->close_lid_display_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 61
    new-instance p1, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;-><init>(Lcom/android/settings/display/CloseLidDisplaySettingFragment;)V

    iput-object p1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCloseLidSettingObserver:Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;

    const-string/jumbo p1, "video_demonstration"

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CloseLidDisplayVideoPreference;

    iput-object p1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCloseLidDisplayVideoPreference:Lcom/android/settings/widget/CloseLidDisplayVideoPreference;

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p1, "close_lid_display_setting_optional"

    .line 65
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    const-string/jumbo v0, "swipe_up_to_continue_using"

    .line 66
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mSwipeUpToContinuePreference:Lmiuix/preference/RadioButtonPreference;

    const-string v0, "keep_screen_on"

    .line 68
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mKeepScreenOnPreference:Lmiuix/preference/RadioButtonPreference;

    const-string v0, "lock_screen_now"

    .line 69
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mLockScreenNowPreference:Lmiuix/preference/RadioButtonPreference;

    const-string v0, "intelligent_keep_screen_on"

    .line 70
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mIntelligentKeepScreenOnPreference:Lmiuix/preference/RadioButtonPreference;

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->swipe_up_to_continue_using_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->getCloseLidDisplaySetting()I

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCloseLidDisplayVideoPreference:Lcom/android/settings/widget/CloseLidDisplayVideoPreference;

    sget-object v3, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->VIDEO_ID:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/CloseLidDisplayVideoPreference;->addVideoView(I)V

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 77
    invoke-direct {p0, v1}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->getPreference(I)Lmiuix/preference/RadioButtonPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    .line 79
    :cond_0
    iput v1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCurrentCloseLidDisplaySetting:I

    .line 80
    iget-object v1, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mSwipeUpToContinuePreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mSwipeUpToContinuePreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mKeepScreenOnPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mLockScreenNowPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mIntelligentKeepScreenOnPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 85
    iget-object p0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCloseLidSettingObserver:Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->startObserving()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mSwipeUpToContinuePreference:Lmiuix/preference/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mKeepScreenOnPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mLockScreenNowPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->mCloseLidSettingObserver:Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/display/CloseLidDisplaySettingFragment$CloseLidSettingsObserver;->stopObserving()V

    .line 103
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 90
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/CloseLidDisplaySettingFragment;->updateRadioButtonPreference(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
