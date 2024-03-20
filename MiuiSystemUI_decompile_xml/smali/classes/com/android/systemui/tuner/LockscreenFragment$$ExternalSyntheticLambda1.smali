.class public final synthetic Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment;

.field public final synthetic f$1:Landroidx/preference/SwitchPreference;

.field public final synthetic f$2:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment;Landroidx/preference/SwitchPreference;Landroidx/preference/Preference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;->f$1:Landroidx/preference/SwitchPreference;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/Preference;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget p1, Lcom/android/systemui/tuner/LockscreenFragment;->$r8$clinit:I

    .line 2
    iget-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    iget-object v2, p0, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;->f$1:Landroidx/preference/SwitchPreference;

    .line 15
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/Preference;

    .line 20
    if-nez p2, :cond_0

    .line 22
    invoke-virtual {p0}, Landroidx/preference/Preference;->setSummary$1()V

    .line 24
    goto/16 :goto_2

    .line 27
    :cond_0
    const-string v0, "::"

    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v2, :cond_4

    .line 37
    invoke-virtual {p1}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p1

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 46
    :try_start_0
    new-instance v0, Lcom/android/systemui/tuner/ShortcutParser;

    .line 47
    new-instance v2, Landroid/content/ComponentName;

    .line 49
    aget-object v3, p2, v3

    .line 51
    aget-object v1, p2, v1

    .line 53
    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {v0, p1, v2}, Lcom/android/systemui/tuner/ShortcutParser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 58
    invoke-virtual {v0}, Lcom/android/systemui/tuner/ShortcutParser;->getShortcuts()Ljava/util/List;

    .line 61
    move-result-object p1

    .line 64
    check-cast p1, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object p1

    .line 70
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .line 81
    iget-object v1, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->id:Ljava/lang/String;

    .line 83
    const/4 v2, 0x2

    .line 85
    aget-object v2, p2, v2

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    if-eqz v1, :cond_1

    .line 92
    goto :goto_0

    .line 94
    :catch_0
    :cond_2
    move-object v0, v4

    .line 95
    :goto_0
    if-eqz v0, :cond_3

    .line 96
    iget-object v4, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    .line 98
    :cond_3
    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    goto :goto_2

    .line 103
    :cond_4
    const-string v0, "/"

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    move-result v0

    .line 109
    if-eqz v0, :cond_6

    .line 110
    invoke-virtual {p1}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 112
    move-result-object v0

    .line 115
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 116
    move-result-object p2

    .line 119
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    move-result-object v0

    .line 123
    invoke-virtual {v0, p2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 124
    move-result-object p2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    goto :goto_1

    .line 128
    :catch_1
    move-object p2, v4

    .line 129
    :goto_1
    if-eqz p2, :cond_5

    .line 130
    invoke-virtual {p1}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 132
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 136
    move-result-object p1

    .line 139
    invoke-virtual {p2, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 140
    move-result-object v4

    .line 143
    :cond_5
    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    goto :goto_2

    .line 147
    :cond_6
    invoke-virtual {p0}, Landroidx/preference/Preference;->setSummary$1()V

    .line 148
    :goto_2
    return-void
    .line 151
.end method
