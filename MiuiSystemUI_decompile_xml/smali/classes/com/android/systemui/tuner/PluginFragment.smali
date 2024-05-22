.class public Lcom/android/systemui/tuner/PluginFragment;
.super Landroidx/preference/PreferenceFragment;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mPluginEnabler:Lcom/android/systemui/plugins/PluginEnablerImpl;

.field public mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

.field public final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/tuner/PluginFragment$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/PluginFragment$1;-><init>(Lcom/android/systemui/tuner/PluginFragment;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final loadPrefs()V
    .locals 15

    .line 1
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    move-object v4, v0

    .line 8
    check-cast v4, Lcom/android/systemui/plugins/PluginManager;

    .line 9
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 11
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v7, Landroidx/preference/PreferenceScreen;

    .line 20
    const/4 v2, 0x0

    .line 22
    invoke-direct {v7, v1, v2}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 26
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, v7, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 30
    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 32
    iget-object v5, v1, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 34
    new-instance v1, Lcom/android/systemui/shared/plugins/PluginPrefs;

    .line 36
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v2

    .line 41
    invoke-direct {v1, v2}, Lcom/android/systemui/shared/plugins/PluginPrefs;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v1, p0, Lcom/android/systemui/tuner/PluginFragment;->mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

    .line 45
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 51
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment;->mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    new-instance v3, Landroid/util/ArraySet;

    .line 60
    iget-object v2, v2, Lcom/android/systemui/shared/plugins/PluginPrefs;->mPluginActions:Ljava/util/Set;

    .line 62
    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 64
    new-instance v6, Landroid/util/ArrayMap;

    .line 67
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 69
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v2

    .line 75
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v3

    .line 79
    if-eqz v3, :cond_4

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/String;

    .line 86
    const-string v8, "com.android.systemui.action.PLUGIN_"

    .line 88
    const-string v9, ""

    .line 90
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 92
    move-result-object v8

    .line 95
    new-instance v9, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v10, "_"

    .line 101
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 103
    move-result-object v8

    .line 106
    array-length v10, v8

    .line 107
    move v11, v0

    .line 108
    :goto_0
    if-ge v11, v10, :cond_2

    .line 109
    aget-object v12, v8, v11

    .line 111
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 113
    move-result v13

    .line 116
    if-eqz v13, :cond_1

    .line 117
    const/16 v13, 0x20

    .line 119
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    const/4 v13, 0x1

    .line 124
    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 125
    move-result-object v14

    .line 128
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    move-result-object v12

    .line 135
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 136
    move-result-object v12

    .line 139
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v11, v11, 0x1

    .line 143
    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v8

    .line 149
    new-instance v9, Landroid/content/Intent;

    .line 150
    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    const/16 v3, 0x200

    .line 155
    invoke-virtual {v1, v9, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 157
    move-result-object v3

    .line 160
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 161
    move-result-object v3

    .line 164
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    move-result v9

    .line 168
    if-eqz v9, :cond_0

    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    move-result-object v9

    .line 174
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 175
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 177
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 179
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 181
    move-result v10

    .line 184
    if-nez v10, :cond_3

    .line 185
    new-instance v10, Landroid/util/ArraySet;

    .line 187
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 189
    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_3
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-result-object v9

    .line 198
    check-cast v9, Landroid/util/ArraySet;

    .line 199
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 201
    goto :goto_1

    .line 204
    :cond_4
    const-string v0, "com.android.systemui.permission.PLUGIN"

    .line 205
    filled-new-array {v0}, [Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 210
    const/16 v2, 0x204

    .line 211
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    .line 213
    move-result-object v0

    .line 216
    new-instance v8, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;

    .line 217
    move-object v1, v8

    .line 219
    move-object v2, p0

    .line 220
    move-object v3, v6

    .line 221
    move-object v6, v7

    .line 222
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/tuner/PluginFragment;Landroid/util/ArrayMap;Lcom/android/systemui/plugins/PluginManager;Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    .line 223
    invoke-interface {v0, v8}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 226
    invoke-virtual {p0, v7}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 229
    return-void
    .line 232
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/content/IntentFilter;

    .line 5
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 7
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 9
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    const-string v0, "package"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    new-instance p1, Landroid/content/IntentFilter;

    .line 36
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 38
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
    .line 52
.end method

.method public final onCreatePreferences(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/android/systemui/plugins/PluginEnablerImpl;

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lcom/android/systemui/plugins/PluginEnablerImpl;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object p1, p0, Lcom/android/systemui/tuner/PluginFragment;->mPluginEnabler:Lcom/android/systemui/plugins/PluginEnablerImpl;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->loadPrefs()V

    .line 13
    return-void
    .line 16
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    return-void
    .line 14
.end method
