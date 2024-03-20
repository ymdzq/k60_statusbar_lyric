.class Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;
.super Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;
.source "PaperModeSetAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PaperModeSetAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterItemPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PaperModeSetAppsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/PaperModeSetAppsFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;->this$0:Lcom/android/settings/display/PaperModeSetAppsFragment;

    .line 138
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-static {p1}, Lcom/android/settings/display/PaperModeSetAppsFragment;->-$$Nest$fgetmPackageManager(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {p1}, Lcom/android/settings/display/PaperModeSetAppsFragment;->-$$Nest$fgetmPackageManager(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object p2, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 142
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 143
    invoke-virtual {p0, p4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 144
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
