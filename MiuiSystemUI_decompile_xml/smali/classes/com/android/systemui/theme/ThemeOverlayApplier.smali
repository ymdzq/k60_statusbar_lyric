.class public final Lcom/android/systemui/theme/ThemeOverlayApplier;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field static final ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field public static final DEBUG:Z

.field static final OVERLAY_CATEGORY_FONT:Ljava/lang/String; = "android.theme.customization.font"

.field static final OVERLAY_CATEGORY_ICON_ANDROID:Ljava/lang/String; = "android.theme.customization.icon_pack.android"

.field static final OVERLAY_CATEGORY_ICON_LAUNCHER:Ljava/lang/String; = "android.theme.customization.icon_pack.launcher"

.field static final OVERLAY_CATEGORY_ICON_SETTINGS:Ljava/lang/String; = "android.theme.customization.icon_pack.settings"

.field static final OVERLAY_CATEGORY_ICON_SYSUI:Ljava/lang/String; = "android.theme.customization.icon_pack.systemui"

.field static final OVERLAY_CATEGORY_ICON_THEME_PICKER:Ljava/lang/String; = "android.theme.customization.icon_pack.themepicker"

.field static final OVERLAY_CATEGORY_SHAPE:Ljava/lang/String; = "android.theme.customization.adaptive_icon_shape"

.field static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field static final SYSTEM_USER_CATEGORIES:Ljava/util/Set;

.field static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field public static final THEME_CATEGORIES:Ljava/util/List;


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mCategoryToTargetPackage:Ljava/util/Map;

.field public final mLauncherPackage:Ljava/lang/String;

.field public final mOverlayManager:Landroid/content/om/OverlayManager;

.field public final mTargetPackageToCategories:Ljava/util/Map;

.field public final mThemePickerPackage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v0, "ThemeOverlayApplier"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->DEBUG:Z

    .line 9
    const-string v1, "android.theme.customization.system_palette"

    .line 11
    const-string v2, "android.theme.customization.icon_pack.launcher"

    .line 13
    const-string v3, "android.theme.customization.adaptive_icon_shape"

    .line 15
    const-string v4, "android.theme.customization.font"

    .line 17
    const-string v5, "android.theme.customization.accent_color"

    .line 19
    const-string v6, "android.theme.customization.dynamic_color"

    .line 21
    const-string v7, "android.theme.customization.icon_pack.android"

    .line 23
    const-string v8, "android.theme.customization.icon_pack.systemui"

    .line 25
    const-string v9, "android.theme.customization.icon_pack.settings"

    .line 27
    const-string v10, "android.theme.customization.icon_pack.themepicker"

    .line 29
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 35
    move-result-object v0

    .line 38
    sput-object v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->THEME_CATEGORIES:Ljava/util/List;

    .line 39
    const-string v1, "android.theme.customization.system_palette"

    .line 41
    const-string v2, "android.theme.customization.accent_color"

    .line 43
    const-string v3, "android.theme.customization.dynamic_color"

    .line 45
    const-string v4, "android.theme.customization.font"

    .line 47
    const-string v5, "android.theme.customization.adaptive_icon_shape"

    .line 49
    const-string v6, "android.theme.customization.icon_pack.android"

    .line 51
    const-string v7, "android.theme.customization.icon_pack.systemui"

    .line 53
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 59
    move-result-object v0

    .line 62
    sput-object v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->SYSTEM_USER_CATEGORIES:Ljava/util/Set;

    .line 63
    return-void
    .line 65
.end method

.method public constructor <init>(Landroid/content/om/OverlayManager;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/dump/DumpManager;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mTargetPackageToCategories:Ljava/util/Map;

    .line 10
    new-instance v1, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mCategoryToTargetPackage:Ljava/util/Map;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mOverlayManager:Landroid/content/om/OverlayManager;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 21
    iput-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mLauncherPackage:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mThemePickerPackage:Ljava/lang/String;

    .line 25
    const-string v2, "android.theme.customization.system_palette"

    .line 27
    const-string v3, "android.theme.customization.accent_color"

    .line 29
    const-string v4, "android.theme.customization.dynamic_color"

    .line 31
    const-string v5, "android.theme.customization.font"

    .line 33
    const-string v6, "android.theme.customization.adaptive_icon_shape"

    .line 35
    const-string v7, "android.theme.customization.icon_pack.android"

    .line 37
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 43
    move-result-object p1

    .line 46
    const-string p2, "android"

    .line 47
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string p1, "android.theme.customization.icon_pack.systemui"

    .line 52
    filled-new-array {p1}, [Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 58
    move-result-object v2

    .line 61
    const-string v3, "com.android.systemui"

    .line 62
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "android.theme.customization.icon_pack.settings"

    .line 67
    filled-new-array {v2}, [Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 72
    invoke-static {v4}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 73
    move-result-object v4

    .line 76
    const-string v5, "com.android.settings"

    .line 77
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v4, "android.theme.customization.icon_pack.launcher"

    .line 82
    filled-new-array {v4}, [Ljava/lang/String;

    .line 84
    move-result-object v6

    .line 87
    invoke-static {v6}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 88
    move-result-object v6

    .line 91
    invoke-interface {v0, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v6, "android.theme.customization.icon_pack.themepicker"

    .line 95
    filled-new-array {v6}, [Ljava/lang/String;

    .line 97
    move-result-object v7

    .line 100
    invoke-static {v7}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 101
    move-result-object v7

    .line 104
    invoke-interface {v0, p4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "android.theme.customization.accent_color"

    .line 108
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "android.theme.customization.dynamic_color"

    .line 113
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "android.theme.customization.font"

    .line 118
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "android.theme.customization.adaptive_icon_shape"

    .line 123
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "android.theme.customization.icon_pack.android"

    .line 128
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {v1, v6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string p1, "ThemeOverlayApplier"

    .line 145
    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 147
    return-void
    .line 150
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "mTargetPackageToCategories="

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mTargetPackageToCategories:Ljava/util/Map;

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    const-string v0, "mCategoryToTargetPackage="

    .line 23
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mCategoryToTargetPackage:Ljava/util/Map;

    .line 28
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    return-void
    .line 40
.end method

.method public getTransactionBuilder()Landroid/content/om/OverlayManagerTransaction$Builder;
    .locals 0

    .line 1
    new-instance p0, Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 2
    invoke-direct {p0}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final setEnabled(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayIdentifier;Ljava/lang/String;ILjava/util/Set;ZZ)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->DEBUG:Z

    .line 2
    const-string v1, "ThemeOverlayApplier"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "setEnabled: "

    .line 10
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " category: "

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, ": "

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {v0, p6, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 36
    :cond_0
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 39
    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mOverlayManager:Landroid/content/om/OverlayManager;

    .line 43
    invoke-virtual {v2, p2, v0}, Landroid/content/om/OverlayManager;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;Landroid/os/UserHandle;)Landroid/content/om/OverlayInfo;

    .line 45
    move-result-object v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    if-nez p7, :cond_1

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    const-string p1, "Won\'t enable "

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string p1, ", it doesn\'t exist for user"

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1, p2, p6, p4}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 79
    sget-object p7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 82
    invoke-virtual {p7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 84
    move-result p7

    .line 87
    if-eq p4, p7, :cond_2

    .line 88
    sget-object p4, Lcom/android/systemui/theme/ThemeOverlayApplier;->SYSTEM_USER_CATEGORIES:Ljava/util/Set;

    .line 90
    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 92
    move-result p3

    .line 95
    if-eqz p3, :cond_2

    .line 96
    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 98
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 100
    move-result p3

    .line 103
    invoke-virtual {p1, p2, p6, p3}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 104
    :cond_2
    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 107
    invoke-virtual {v2, p2, p3}, Landroid/content/om/OverlayManager;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;Landroid/os/UserHandle;)Landroid/content/om/OverlayInfo;

    .line 109
    move-result-object p3

    .line 112
    if-eqz p3, :cond_4

    .line 113
    iget-object p4, p3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 115
    iget-object p7, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mLauncherPackage:Ljava/lang/String;

    .line 117
    invoke-virtual {p4, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p4

    .line 122
    if-nez p4, :cond_4

    .line 123
    iget-object p3, p3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 125
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mThemePickerPackage:Ljava/lang/String;

    .line 127
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result p0

    .line 132
    if-eqz p0, :cond_3

    .line 133
    goto :goto_1

    .line 135
    :cond_3
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 136
    move-result-object p0

    .line 139
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    move-result p3

    .line 143
    if-eqz p3, :cond_4

    .line 144
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    move-result-object p3

    .line 149
    check-cast p3, Landroid/os/UserHandle;

    .line 150
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 152
    move-result p3

    .line 155
    invoke-virtual {p1, p2, p6, p3}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 156
    goto :goto_0

    .line 159
    :cond_4
    :goto_1
    return-void
    .line 160
.end method
