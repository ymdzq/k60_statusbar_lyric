.class public abstract Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final mActiveBubbles:Ljava/util/HashSet;

.field public static final mBubbleAppMaps:Landroid/util/ArrayMap;

.field public static mContext:Ljava/lang/ref/WeakReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    sput-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    .line 10
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    sput-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    .line 15
    return-void
    .line 17
.end method

.method public static isAppEnableBubbleNotification(ILjava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda1;

    .line 4
    invoke-direct {v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda1;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 9
    sget-object v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mContext:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/Context;

    .line 18
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->notifyNotificationBubblesChanged(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 37
    sget-object v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    .line 39
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 44
    check-cast v2, Lmiui/app/MiuiBubbleApp;

    .line 45
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v2}, Lmiui/app/MiuiBubbleApp;->isChecked()Z

    .line 49
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 56
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 58
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 60
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 66
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->userId:I

    .line 68
    if-ne p0, v1, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v0, 0x0

    .line 74
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string p1, " "

    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string p0, "isAppEnableBubbleNotification: "

    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 102
    const-string p1, "MiuiBubbleSettings"

    .line 103
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v0
    .line 108
.end method

.method public static isBubbleNotificationSwitchOpen(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 6
    move-result v0

    .line 9
    const-string v1, "miui_bubbles_notification_switch"

    .line 10
    const/4 v2, 0x1

    .line 12
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    move-result p0

    .line 16
    if-ne p0, v2, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    return v2
    .line 21
.end method

.method public static notifyNotificationBubblesChanged(Landroid/content/Context;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 14
    const-string v2, "have_notification_bubbles"

    .line 15
    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 23
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 25
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 27
    sget-object v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object p0

    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 42
    return-void

    .line 45
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    move-result-object p0

    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    return-void
    .line 54
.end method

.method public static removeActiveBubble(Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 2
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 4
    iget p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->userId:I

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "removeActiveBubble: "

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, " "

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 29
    const-string v2, "MiuiBubbleSettings"

    .line 30
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    .line 35
    new-instance v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {v2, v0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 42
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->notifyNotificationBubblesChanged(Landroid/content/Context;)V

    .line 45
    return-void
    .line 48
.end method

.method public static updateBubbleAppStates(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, "miui_bubble_app_settings"

    .line 6
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v1, "updateBubbleAppStates: "

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    const-string v1, "MiuiBubbleSettings"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    const-string v0, ","

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    array-length v0, p0

    .line 45
    const/4 v1, 0x0

    .line 46
    move v2, v1

    .line 47
    :goto_0
    if-ge v2, v0, :cond_4

    .line 48
    aget-object v3, p0, v2

    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    goto :goto_1

    .line 58
    :cond_1
    const-string v4, ":"

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 64
    array-length v4, v3

    .line 65
    const/4 v5, 0x2

    .line 66
    if-eq v4, v5, :cond_2

    .line 67
    goto :goto_1

    .line 69
    :cond_2
    sget-object v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    .line 70
    aget-object v5, v3, v1

    .line 72
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 77
    check-cast v4, Lmiui/app/MiuiBubbleApp;

    .line 78
    if-eqz v4, :cond_3

    .line 80
    const/4 v5, 0x1

    .line 82
    aget-object v3, v3, v5

    .line 83
    const-string v5, "1"

    .line 85
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 87
    move-result v3

    .line 90
    invoke-virtual {v4, v3}, Lmiui/app/MiuiBubbleApp;->setChecked(Z)Lmiui/app/MiuiBubbleApp;

    .line 91
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 94
    goto :goto_0

    .line 96
    :cond_4
    return-void
    .line 97
.end method
