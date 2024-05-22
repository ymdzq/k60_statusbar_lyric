.class public abstract Lcom/android/systemui/util/Utils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static sUseQsMediaPlayer:Ljava/lang/Boolean;


# direct methods
.method public static getStatusBarHeaderHeightKeyguard(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    .line 10
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    .line 18
    move-result-object v1

    .line 21
    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object p0

    .line 27
    const v2, 0x7f0710d7    # @dimen/status_bar_height '@android:dimen/text_size_menu_header_material'

    .line 28
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result p0

    .line 34
    add-int/2addr p0, v1

    .line 35
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 36
    move-result p0

    .line 39
    return p0
    .line 40
.end method

.method public static isGesturalModeOnDefaultDisplay(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    if-nez p0, :cond_0

    .line 9
    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 11
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public static isHeadlessRemoteDisplayProvider(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "android.permission.REMOTE_DISPLAY_PROVIDER"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 12
    const-string v2, "android.intent.action.MAIN"

    .line 14
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v2, "android.intent.category.LAUNCHER"

    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 27
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 31
    move-result p0

    .line 34
    return p0
    .line 35
.end method

.method public static safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    move-result v0

    .line 5
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 6
    if-ltz v0, :cond_1

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 16
    goto :goto_0

    .line 19
    :cond_1
    return-void
    .line 20
.end method

.method public static useQsMediaPlayer(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/util/Utils;->sUseQsMediaPlayer:Ljava/lang/Boolean;

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 9
    const-string v0, "qs_media_controls"

    .line 10
    const/4 v1, 0x1

    .line 12
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result p0

    .line 16
    if-lez p0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object p0

    .line 24
    sput-object p0, Lcom/android/systemui/util/Utils;->sUseQsMediaPlayer:Ljava/lang/Boolean;

    .line 25
    :cond_1
    sget-object p0, Lcom/android/systemui/util/Utils;->sUseQsMediaPlayer:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    move-result p0

    .line 32
    return p0
    .line 33
.end method
