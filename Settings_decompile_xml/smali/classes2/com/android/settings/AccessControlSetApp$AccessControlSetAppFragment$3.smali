.class Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;
.super Ljava/lang/Object;
.source "AccessControlSetApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->addPackageInfo(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;

.field final synthetic val$appInfos:Ljava/util/ArrayList;

.field final synthetic val$passwordProtected:Z


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;

    iput-object p2, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->val$appInfos:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->val$passwordProtected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 141
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->val$appInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;

    invoke-static {v1}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->-$$Nest$fgetmComparator(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->val$appInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 143
    new-instance v2, Landroidx/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;

    .line 144
    invoke-static {v3}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->access$000(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 145
    iget-object v3, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;

    invoke-static {v3}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->-$$Nest$fgetmPm(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    .line 147
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 149
    :cond_0
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;

    .line 152
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;

    invoke-static {v4}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->-$$Nest$fgetmPm(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const-wide/32 v5, 0x36ee80

    .line 151
    invoke-static {v3, v1, v4, v5, v6}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 160
    iget-boolean v1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->val$passwordProtected:Z

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    iget-object v1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$3;->this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
