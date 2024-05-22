.class public final Lcom/android/systemui/privacy/PrivacyDialogController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final appOpsController:Lcom/android/systemui/appops/AppOpsController;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public dialog:Landroid/app/Dialog;

.field public final dialogProvider:Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;

.field public elements:Ljava/util/List;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public miuiOptimization:Z

.field public final miuiOptimizationChangedListener:Lcom/android/systemui/privacy/PrivacyDialogController$miuiOptimizationChangedListener$1;

.field public final onDialogDismissed:Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final permissionManager:Landroid/permission/PermissionManager;

.field public final privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public final privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final uiExecutor:Ljava/util/concurrent/Executor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;Lcom/miui/systemui/SettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->permissionManager:Landroid/permission/PermissionManager;

    .line 3
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 6
    iput-object p5, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 7
    iput-object p6, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 8
    iput-object p7, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p8, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 10
    iput-object p9, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 11
    iput-object p10, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 12
    iput-object p11, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 13
    iput-object p12, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialogProvider:Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;

    .line 14
    new-instance p1, Lcom/android/systemui/privacy/PrivacyDialogController$miuiOptimizationChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController$miuiOptimizationChangedListener$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->miuiOptimizationChangedListener:Lcom/android/systemui/privacy/PrivacyDialogController$miuiOptimizationChangedListener$1;

    .line 15
    new-instance p1, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->onDialogDismissed:Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

    return-void
.end method

.method public constructor <init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/internal/logging/UiEventLogger;Lcom/miui/systemui/SettingsManager;)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v15, p12

    .line 16
    sget-object v12, Lcom/android/systemui/privacy/PrivacyDialogControllerKt;->defaultDialogProvider:Lcom/android/systemui/privacy/PrivacyDialogControllerKt$defaultDialogProvider$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v13, p12

    .line 17
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/privacy/PrivacyDialogController;-><init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;Lcom/miui/systemui/SettingsManager;)V

    .line 18
    iget-boolean v0, v15, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 19
    iput-boolean v0, v14, Lcom/android/systemui/privacy/PrivacyDialogController;->miuiOptimization:Z

    .line 20
    iget-object v0, v14, Lcom/android/systemui/privacy/PrivacyDialogController;->miuiOptimizationChangedListener:Lcom/android/systemui/privacy/PrivacyDialogController$miuiOptimizationChangedListener$1;

    invoke-virtual {v15, v0}, Lcom/miui/systemui/SettingsManager;->registerMiuiOptimizationListener(Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;)V

    return-void
.end method

.method public static final access$filterAndSelect(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/util/List;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 5
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 25
    iget-object v1, v1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 43
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Ljava/util/TreeMap;

    .line 49
    invoke-direct {p1, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 51
    new-instance p0, Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 59
    move-result-object p1

    .line 62
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p1

    .line 66
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v0

    .line 70
    if-eqz v0, :cond_a

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 76
    check-cast v0, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Ljava/util/List;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    .line 85
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v2

    .line 93
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 103
    move-object v4, v3

    .line 104
    check-cast v4, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 105
    iget-boolean v4, v4, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    .line 107
    if-eqz v4, :cond_2

    .line 109
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_2

    .line 114
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 115
    move-result v2

    .line 118
    xor-int/lit8 v2, v2, 0x1

    .line 119
    if-eqz v2, :cond_4

    .line 121
    new-instance v0, Lcom/android/systemui/privacy/PrivacyDialogController$filterAndSelect$lambda$6$$inlined$sortedByDescending$1;

    .line 123
    invoke-direct {v0}, Lcom/android/systemui/privacy/PrivacyDialogController$filterAndSelect$lambda$6$$inlined$sortedByDescending$1;-><init>()V

    .line 125
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 128
    move-result-object v0

    .line 131
    goto :goto_5

    .line 132
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v1

    .line 140
    if-nez v1, :cond_5

    .line 141
    const/4 v0, 0x0

    .line 143
    goto :goto_4

    .line 144
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v1

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    move-result v2

    .line 152
    if-nez v2, :cond_6

    .line 153
    :goto_3
    move-object v0, v1

    .line 155
    goto :goto_4

    .line 156
    :cond_6
    move-object v2, v1

    .line 157
    check-cast v2, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 158
    iget-wide v2, v2, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    .line 160
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    move-result-object v4

    .line 165
    move-object v5, v4

    .line 166
    check-cast v5, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 167
    iget-wide v5, v5, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    .line 169
    cmp-long v7, v2, v5

    .line 171
    if-gez v7, :cond_8

    .line 173
    move-object v1, v4

    .line 175
    move-wide v2, v5

    .line 176
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result v4

    .line 180
    if-nez v4, :cond_7

    .line 181
    goto :goto_3

    .line 183
    :goto_4
    check-cast v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 184
    if-eqz v0, :cond_9

    .line 186
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 188
    move-result-object v0

    .line 191
    goto :goto_5

    .line 192
    :cond_9
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 193
    :goto_5
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 195
    goto/16 :goto_1

    .line 198
    :cond_a
    return-object p0
    .line 200
.end method
