.class public abstract Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sAppIconManager:Lcom/miui/systemui/graphics/AppIconsManager;

.field public static sBackgroundColorFiled:Ljava/lang/reflect/Field;

.field public static sColorFiled:Ljava/lang/reflect/Field;

.field public static sPrimaryTextColorFiled:Ljava/lang/reflect/Field;

.field public static sProtectionColorFiled:Ljava/lang/reflect/Field;

.field public static sSecondaryTextColorFiled:Ljava/lang/reflect/Field;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/miui/systemui/graphics/AppIconsManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/systemui/graphics/AppIconsManager;

    .line 8
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sAppIconManager:Lcom/miui/systemui/graphics/AppIconsManager;

    .line 10
    return-void
    .line 12
.end method

.method public static buildBaseContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f0d01c2    # @layout/miui_notification_template_material_base 'res/layout/miui_notification_template_material_base.xml'

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 11
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->resetStandardTemplate(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 14
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MiuiNotificationCompat;->getMiuiAction(Landroid/app/Notification;)Landroid/app/Notification$Action;

    .line 17
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    const v3, 0x7f0a05c2    # @id/miui_action

    .line 24
    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 27
    iget-object v2, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 32
    iget-object v1, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 35
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 37
    const/4 v2, 0x1

    .line 40
    :cond_0
    if-nez v2, :cond_1

    .line 41
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleLargeIcon(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 43
    :cond_1
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleProgressBar(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)Z

    .line 46
    move-result v1

    .line 49
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 50
    const-string v4, "android.title"

    .line 52
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 54
    move-result-object v3

    .line 57
    invoke-static {v0, v3, v1, p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleTitle(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Ljava/lang/CharSequence;ZLandroid/content/Context;Landroid/app/Notification;)V

    .line 58
    invoke-static {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleText(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V

    .line 61
    if-nez v2, :cond_2

    .line 64
    if-nez v1, :cond_2

    .line 66
    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleChronometerAndTime(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 68
    :cond_2
    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 71
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleBackground(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 74
    return-object v0
    .line 77
.end method

.method public static buildBigBaseContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f0d01c3    # @layout/miui_notification_template_material_big_base 'res/layout/miui_notification_template_material_big_base.xml'

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 11
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->resetStandardTemplateWithActions(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 14
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleLargeIcon(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 17
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleProgressBar(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleChronometerAndTime(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 26
    :cond_0
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 29
    const-string v3, "android.title"

    .line 31
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 33
    move-result-object v2

    .line 36
    invoke-static {v0, v2, v1, p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleTitle(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Ljava/lang/CharSequence;ZLandroid/content/Context;Landroid/app/Notification;)V

    .line 37
    invoke-static {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleText(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V

    .line 40
    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleActions(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 43
    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 46
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleBackground(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 49
    return-object v0
    .line 52
.end method

.method public static buildBigTextContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f0d01c5    # @layout/miui_notification_template_material_big_text 'res/layout/miui_notification_template_material_big_text.xml'

    .line 8
    invoke-direct {v6, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 11
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->resetStandardTemplateWithActions(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 14
    invoke-static {p0, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleLargeIcon(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 17
    invoke-static {p0, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleProgressBar(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    invoke-static {v6, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleChronometerAndTime(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 26
    :cond_0
    invoke-static {v6, p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleBigContentTitle(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V

    .line 29
    invoke-static {v6, p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleText(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V

    .line 32
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 35
    const-string v1, "android.bigText"

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->getSingleLineText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 43
    move-result-object v1

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 53
    const-string v2, "android.text"

    .line 55
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 57
    move-result-object v0

    .line 60
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    move-object v1, v0

    .line 68
    :goto_0
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 69
    move-result-object v0

    .line 72
    const v1, 0x7f0a0134    # @id/big_text

    .line 73
    invoke-virtual {v6, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 76
    const/4 v0, 0x0

    .line 79
    invoke-virtual {v6, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 80
    const v0, 0x7f0a0134    # @id/big_text

    .line 83
    const v1, 0x7f060764    # @color/notification_text_color_with_bg_light '#99000000'

    .line 86
    const v2, 0x7f060763    # @color/notification_text_color_with_bg_dark '#80ffffff'

    .line 89
    move-object v3, p0

    .line 92
    move-object v4, p1

    .line 93
    move-object v5, v6

    .line 94
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleTextColorForCustomBg(IIILandroid/app/Notification;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 95
    invoke-static {v6, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleActions(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 98
    invoke-static {v6, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 101
    invoke-static {p0, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleBackground(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 104
    return-object v6
    .line 107
.end method

.method public static buildOneLineContent(Landroid/app/Notification;ZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->isTransparent()Z

    .line 2
    move-result v0

    .line 5
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    move-result-object v2

    .line 11
    if-eqz v0, :cond_0

    .line 12
    const v3, 0x7f0d01c8    # @layout/miui_notification_transparent_template_material_one_line 'res/layout/miui_notification_transparent_template_material_one_line.xml'

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    const v3, 0x7f0d01c7    # @layout/miui_notification_template_material_one_line 'res/layout/miui_notification_template_material_one_line.xml'

    .line 18
    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 21
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->resetStandardTemplate(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 24
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MiuiNotificationCompat;->getMiuiAction(Landroid/app/Notification;)Landroid/app/Notification$Action;

    .line 27
    move-result-object v2

    .line 30
    const v3, 0x7f0a05c2    # @id/miui_action

    .line 31
    const/4 v4, 0x0

    .line 34
    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 37
    iget-object v5, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 42
    iget-object v2, v2, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 45
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 47
    :cond_1
    if-eqz p1, :cond_3

    .line 50
    if-eqz v0, :cond_2

    .line 52
    const v2, 0x7f06076d    # @color/optimized_game_heads_up_notification_action_text '#ffffff'

    .line 54
    goto :goto_1

    .line 57
    :cond_2
    const v2, 0x7f06076f    # @color/optimized_heads_up_notification_action_text '#b3000000'

    .line 58
    :goto_1
    invoke-virtual {p2, v2}, Landroid/content/Context;->getColor(I)I

    .line 61
    move-result v2

    .line 64
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 65
    :cond_3
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 68
    const-string v3, "android.title"

    .line 70
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 72
    move-result-object v2

    .line 75
    const v3, 0x7f06076e    # @color/optimized_game_heads_up_notification_text '#e6ffffff'

    .line 76
    const v5, 0x7f060770    # @color/optimized_heads_up_notification_text '#e6000000'

    .line 79
    if-eqz v2, :cond_5

    .line 82
    const v6, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 84
    invoke-virtual {v1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 87
    invoke-static {p2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 90
    move-result-object v2

    .line 93
    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 94
    if-eqz p1, :cond_5

    .line 97
    if-eqz v0, :cond_4

    .line 99
    move v2, v3

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move v2, v5

    .line 103
    :goto_2
    invoke-virtual {p2, v2}, Landroid/content/Context;->getColor(I)I

    .line 104
    move-result v2

    .line 107
    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 108
    :cond_5
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 111
    const-string v6, "android.text"

    .line 113
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 115
    move-result-object v2

    .line 118
    if-nez v2, :cond_6

    .line 119
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 121
    const-string v6, "android.bigText"

    .line 123
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 125
    move-result-object v2

    .line 128
    :cond_6
    if-eqz v2, :cond_8

    .line 129
    invoke-static {p2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 131
    move-result-object v2

    .line 134
    const v6, 0x7f0a0966    # @id/text

    .line 135
    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 141
    if-eqz p1, :cond_8

    .line 144
    if-eqz v0, :cond_7

    .line 146
    goto :goto_3

    .line 148
    :cond_7
    move v3, v5

    .line 149
    :goto_3
    invoke-virtual {p2, v3}, Landroid/content/Context;->getColor(I)I

    .line 150
    move-result p1

    .line 153
    invoke-virtual {v1, v6, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 154
    :cond_8
    invoke-static {v1, p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 157
    return-object v1
    .line 160
.end method

.method public static createRemoteViews(ILandroid/app/Notification$Builder;ZZZLandroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    move/from16 v1, p4

    .line 4
    move-object/from16 v2, p5

    .line 6
    move-object/from16 v3, p6

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    .line 10
    move-result-object v4

    .line 13
    sget-object v5, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 14
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 16
    const-string v5, "miui_unimportant"

    .line 18
    const/4 v6, 0x0

    .line 20
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    move-result v4

    .line 24
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    .line 25
    move-result v5

    .line 28
    if-nez v5, :cond_0

    .line 29
    if-eqz v4, :cond_1

    .line 31
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    .line 33
    move-result-object v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    instance-of v5, v4, Landroid/app/Notification$BigPictureStyle;

    .line 39
    if-nez v5, :cond_2

    .line 41
    instance-of v5, v4, Landroid/app/Notification$BigTextStyle;

    .line 43
    if-nez v5, :cond_2

    .line 45
    instance-of v4, v4, Landroid/app/Notification$InboxStyle;

    .line 47
    if-eqz v4, :cond_1

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    move v4, v6

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 54
    :goto_1
    const-string v10, "miui.focus.textIds"

    .line 55
    const-string v11, "miui.focus.transparentBg"

    .line 57
    const-string v12, "miui.focus.normalHeight"

    .line 59
    const-string v13, "miui.focus.containerId"

    .line 61
    if-eqz v4, :cond_25

    .line 63
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    .line 65
    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;-><init>()V

    .line 67
    and-int/lit8 v14, p0, 0x1

    .line 70
    if-eqz v14, :cond_a

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 74
    move-result-object v14

    .line 77
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 78
    move-result v15

    .line 81
    if-eqz v15, :cond_3

    .line 82
    invoke-static {v14, v3}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->getFocusView(Landroid/app/Notification;Landroid/content/Context;)Landroid/widget/RemoteViews;

    .line 84
    move-result-object v14

    .line 87
    goto :goto_4

    .line 88
    :cond_3
    iget-object v15, v14, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 89
    if-eqz v15, :cond_4

    .line 91
    move-object v14, v15

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    iget-object v15, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 95
    const-string v9, "android.text"

    .line 97
    invoke-virtual {v15, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 99
    move-result-object v9

    .line 102
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    move-result v9

    .line 106
    if-nez v9, :cond_5

    .line 107
    goto :goto_2

    .line 109
    :cond_5
    iget-object v9, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 110
    const-string v15, "android.title"

    .line 112
    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 114
    move-result-object v9

    .line 117
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    move-result v9

    .line 121
    if-nez v9, :cond_6

    .line 122
    goto :goto_2

    .line 124
    :cond_6
    iget-object v9, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 125
    const-string v15, "android.progressMax"

    .line 127
    invoke-virtual {v9, v15, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 129
    move-result v9

    .line 132
    iget-object v15, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 133
    const-string v7, "android.progressIndeterminate"

    .line 135
    invoke-virtual {v15, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 137
    move-result v7

    .line 140
    if-nez v9, :cond_8

    .line 141
    if-eqz v7, :cond_7

    .line 143
    goto :goto_2

    .line 145
    :cond_7
    const/4 v7, 0x1

    .line 146
    goto :goto_3

    .line 147
    :cond_8
    :goto_2
    move v7, v6

    .line 148
    :goto_3
    if-eqz v7, :cond_9

    .line 149
    invoke-static {v14, v6, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->buildOneLineContent(Landroid/app/Notification;ZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 151
    move-result-object v14

    .line 154
    goto :goto_4

    .line 155
    :cond_9
    invoke-static {v14, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->buildBaseContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 156
    move-result-object v14

    .line 159
    :goto_4
    iput-object v14, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    .line 160
    :cond_a
    and-int/lit8 v7, p0, 0x2

    .line 162
    const v9, 0x7f0a0966    # @id/text

    .line 164
    if-eqz v7, :cond_18

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 169
    move-result-object v7

    .line 172
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 173
    move-result v14

    .line 176
    if-eqz v14, :cond_b

    .line 177
    goto/16 :goto_a

    .line 179
    :cond_b
    iget-object v14, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 181
    if-eqz v14, :cond_c

    .line 183
    move-object v5, v14

    .line 185
    goto/16 :goto_b

    .line 186
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    .line 188
    move-result-object v14

    .line 191
    if-eqz v14, :cond_16

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    .line 194
    move-result-object v14

    .line 197
    instance-of v15, v14, Landroid/app/Notification$BigPictureStyle;

    .line 198
    if-eqz v15, :cond_f

    .line 200
    check-cast v14, Landroid/app/Notification$BigPictureStyle;

    .line 202
    invoke-virtual {v14}, Landroid/app/Notification$BigPictureStyle;->getBigPicture()Landroid/graphics/drawable/Icon;

    .line 204
    move-result-object v14

    .line 207
    new-instance v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 208
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 210
    move-result-object v5

    .line 213
    const v8, 0x7f0d01c4    # @layout/miui_notification_template_material_big_picture 'res/layout/miui_notification_template_material_big_picture.xml'

    .line 214
    invoke-direct {v15, v5, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 217
    invoke-static {v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->resetStandardTemplateWithActions(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 220
    invoke-static {v7, v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleProgressBar(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)Z

    .line 223
    move-result v5

    .line 226
    if-nez v5, :cond_d

    .line 227
    invoke-static {v15, v7, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleChronometerAndTime(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 229
    :cond_d
    invoke-static {v15, v7, v5, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleBigContentTitle(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V

    .line 232
    invoke-static {v15, v7, v5, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleText(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V

    .line 235
    iget-object v5, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 238
    const-string v8, "android.summaryText"

    .line 240
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 242
    move-result v5

    .line 245
    if-eqz v5, :cond_e

    .line 246
    iget-object v5, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 248
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 250
    move-result-object v5

    .line 253
    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 254
    move-result-object v5

    .line 257
    invoke-virtual {v15, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 258
    invoke-virtual {v15, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 261
    :cond_e
    const v5, 0x7f0a0133    # @id/big_picture

    .line 264
    invoke-virtual {v15, v5, v14}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 267
    invoke-static {v15, v7, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleActions(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 270
    invoke-static {v15, v7, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 273
    invoke-static {v7, v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleBackground(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 276
    goto/16 :goto_9

    .line 279
    :cond_f
    instance-of v5, v14, Landroid/app/Notification$BigTextStyle;

    .line 281
    if-eqz v5, :cond_10

    .line 283
    invoke-static {v7, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->buildBigTextContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 285
    move-result-object v5

    .line 288
    goto/16 :goto_b

    .line 289
    :cond_10
    instance-of v5, v14, Landroid/app/Notification$InboxStyle;

    .line 291
    if-eqz v5, :cond_17

    .line 293
    check-cast v14, Landroid/app/Notification$InboxStyle;

    .line 295
    invoke-virtual {v14}, Landroid/app/Notification$InboxStyle;->getLines()Ljava/util/ArrayList;

    .line 297
    move-result-object v5

    .line 300
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 301
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 303
    move-result-object v14

    .line 306
    const v15, 0x7f0d01c6    # @layout/miui_notification_template_material_inbox 'res/layout/miui_notification_template_material_inbox.xml'

    .line 307
    invoke-direct {v8, v14, v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 310
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->resetStandardTemplateWithActions(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 313
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleProgressBar(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)Z

    .line 316
    move-result v14

    .line 319
    if-nez v14, :cond_11

    .line 320
    invoke-static {v8, v7, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleChronometerAndTime(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 322
    :cond_11
    invoke-static {v8, v7, v14, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleBigContentTitle(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V

    .line 325
    const/4 v14, 0x7

    .line 328
    new-array v15, v14, [I

    .line 329
    fill-array-data v15, :array_0

    .line 331
    move v9, v6

    .line 334
    :goto_5
    if-ge v9, v14, :cond_12

    .line 335
    aget v14, v15, v9

    .line 337
    const/16 v6, 0x8

    .line 339
    invoke-virtual {v8, v14, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 341
    add-int/lit8 v9, v9, 0x1

    .line 344
    const/4 v6, 0x0

    .line 346
    const/4 v14, 0x7

    .line 347
    goto :goto_5

    .line 348
    :cond_12
    iget-object v6, v7, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 349
    if-eqz v6, :cond_13

    .line 351
    array-length v6, v6

    .line 353
    if-lez v6, :cond_13

    .line 354
    const/4 v14, 0x6

    .line 356
    goto :goto_6

    .line 357
    :cond_13
    const/4 v14, 0x7

    .line 358
    :goto_6
    const/4 v6, 0x0

    .line 359
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 360
    move-result v9

    .line 363
    if-ge v6, v9, :cond_15

    .line 364
    if-ge v6, v14, :cond_15

    .line 366
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 368
    move-result-object v9

    .line 371
    check-cast v9, Ljava/lang/CharSequence;

    .line 372
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 374
    move-result v16

    .line 377
    if-nez v16, :cond_14

    .line 378
    move-object/from16 p3, v5

    .line 380
    aget v5, v15, v6

    .line 382
    move/from16 v16, v14

    .line 384
    const/4 v14, 0x0

    .line 386
    invoke-virtual {v8, v5, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 387
    aget v5, v15, v6

    .line 390
    invoke-static {v3, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 392
    move-result-object v9

    .line 395
    invoke-virtual {v8, v5, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 396
    goto :goto_8

    .line 399
    :cond_14
    move-object/from16 p3, v5

    .line 400
    move/from16 v16, v14

    .line 402
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 404
    move-object/from16 v5, p3

    .line 406
    move/from16 v14, v16

    .line 408
    goto :goto_7

    .line 410
    :cond_15
    invoke-static {v8, v7, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleActions(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 411
    invoke-static {v8, v7, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 414
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleBackground(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 417
    move-object v15, v8

    .line 420
    :goto_9
    move-object v5, v15

    .line 421
    goto :goto_b

    .line 422
    :cond_16
    iget-object v5, v7, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 423
    if-eqz v5, :cond_17

    .line 425
    array-length v5, v5

    .line 427
    if-lez v5, :cond_17

    .line 428
    invoke-static {v7, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->buildBigBaseContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 430
    move-result-object v5

    .line 433
    goto :goto_b

    .line 434
    :cond_17
    :goto_a
    const/4 v5, 0x0

    .line 435
    :goto_b
    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    .line 436
    :cond_18
    and-int/lit8 v5, p0, 0x4

    .line 438
    if-eqz v5, :cond_23

    .line 440
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 442
    move-result-object v5

    .line 445
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 446
    move-result v6

    .line 449
    if-eqz v6, :cond_1c

    .line 450
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->getFocusView(Landroid/app/Notification;Landroid/content/Context;)Landroid/widget/RemoteViews;

    .line 452
    move-result-object v1

    .line 455
    invoke-static {v3, v2, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->useOneLine(Landroid/content/Context;Landroid/content/Context;Landroid/app/Notification;)Z

    .line 456
    move-result v6

    .line 459
    if-eqz v6, :cond_22

    .line 460
    iget-object v6, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 462
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 464
    move-result v6

    .line 467
    iget-object v7, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 468
    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 470
    move-result v7

    .line 473
    if-lez v7, :cond_19

    .line 474
    int-to-float v7, v7

    .line 476
    const/4 v8, 0x0

    .line 477
    invoke-virtual {v1, v6, v7, v8}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 478
    :cond_19
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->isTransparent()Z

    .line 481
    move-result v6

    .line 484
    if-eqz v6, :cond_1b

    .line 485
    iget-object v7, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 487
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 489
    move-result-object v7

    .line 492
    if-eqz v7, :cond_1a

    .line 493
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 495
    move-result v8

    .line 498
    if-lez v8, :cond_1a

    .line 499
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 501
    move-result-object v7

    .line 504
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 505
    move-result v8

    .line 508
    if-eqz v8, :cond_1b

    .line 509
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 511
    move-result-object v8

    .line 514
    check-cast v8, Ljava/lang/Integer;

    .line 515
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 517
    move-result v8

    .line 520
    const v9, 0x7f06076e    # @color/optimized_game_heads_up_notification_text '#e6ffffff'

    .line 521
    invoke-virtual {v3, v9}, Landroid/content/Context;->getColor(I)I

    .line 524
    move-result v10

    .line 527
    invoke-virtual {v1, v8, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 528
    goto :goto_c

    .line 531
    :cond_1a
    const/4 v6, 0x0

    .line 532
    :cond_1b
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 533
    invoke-virtual {v5, v11, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    move-object v9, v1

    .line 538
    goto :goto_e

    .line 539
    :cond_1c
    iget-object v6, v5, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 540
    if-eqz v6, :cond_1d

    .line 542
    array-length v6, v6

    .line 544
    if-lez v6, :cond_1d

    .line 545
    const/4 v6, 0x1

    .line 547
    goto :goto_d

    .line 548
    :cond_1d
    const/4 v6, 0x0

    .line 549
    :goto_d
    iget-object v7, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 550
    if-eqz v7, :cond_1e

    .line 552
    move-object v9, v7

    .line 554
    goto :goto_e

    .line 555
    :cond_1e
    invoke-static {v3, v2, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->useOneLine(Landroid/content/Context;Landroid/content/Context;Landroid/app/Notification;)Z

    .line 556
    move-result v7

    .line 559
    if-eqz v7, :cond_1f

    .line 560
    const/4 v7, 0x1

    .line 562
    invoke-static {v5, v7, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->buildOneLineContent(Landroid/app/Notification;ZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 563
    move-result-object v9

    .line 566
    goto :goto_e

    .line 567
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    .line 568
    move-result-object v7

    .line 571
    if-eqz v7, :cond_21

    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    .line 574
    move-result-object v7

    .line 577
    instance-of v7, v7, Landroid/app/Notification$BigTextStyle;

    .line 578
    if-eqz v7, :cond_20

    .line 580
    if-eqz v1, :cond_20

    .line 582
    if-eqz v6, :cond_20

    .line 584
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->buildBigTextContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 586
    move-result-object v9

    .line 589
    goto :goto_e

    .line 590
    :cond_20
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->buildBigBaseContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 591
    move-result-object v9

    .line 594
    goto :goto_e

    .line 595
    :cond_21
    if-eqz v6, :cond_22

    .line 596
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->buildBigBaseContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 598
    move-result-object v9

    .line 601
    goto :goto_e

    .line 602
    :cond_22
    const/4 v9, 0x0

    .line 603
    :goto_e
    iput-object v9, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    .line 604
    :cond_23
    const/16 v1, 0x8

    .line 606
    and-int/lit8 v1, p0, 0x8

    .line 608
    if-eqz v1, :cond_24

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 612
    move-result-object v1

    .line 615
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->buildBaseContent(Landroid/app/Notification;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 616
    move-result-object v5

    .line 619
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->resetStandardTemplate(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    .line 623
    move-result-object v6

    .line 626
    const v7, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 627
    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 630
    const/4 v6, 0x0

    .line 633
    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 634
    const v7, 0x7f13088e    # @string/notification_hidden_text 'You have a new message'

    .line 637
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 640
    move-result-object v7

    .line 643
    const v8, 0x7f0a0966    # @id/text

    .line 644
    invoke-virtual {v5, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 647
    invoke-virtual {v5, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 650
    invoke-static {v5, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleChronometerAndTime(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 653
    invoke-static {v5, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 656
    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleBackground(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 659
    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    .line 662
    goto :goto_f

    .line 664
    :cond_24
    const/4 v6, 0x0

    .line 665
    :goto_f
    iput-object v2, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 666
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    .line 668
    move-result-object v1

    .line 671
    iput-object v1, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarText:Ljava/lang/CharSequence;

    .line 672
    const/4 v1, 0x1

    .line 674
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    .line 675
    move-result-object v0

    .line 678
    iput-object v0, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    .line 679
    return-object v4

    .line 681
    :cond_25
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    .line 682
    invoke-direct {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;-><init>()V

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 687
    move-result-object v4

    .line 690
    and-int/lit8 v5, p0, 0x1

    .line 691
    if-eqz v5, :cond_28

    .line 693
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 695
    move-result v5

    .line 698
    if-eqz v5, :cond_26

    .line 699
    sget-object v5, Lcom/android/systemui/SystemUIApplication;->sContext:Landroid/content/Context;

    .line 701
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->getFocusView(Landroid/app/Notification;Landroid/content/Context;)Landroid/widget/RemoteViews;

    .line 703
    move-result-object v5

    .line 706
    iput-object v5, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    .line 707
    goto :goto_11

    .line 709
    :cond_26
    if-eqz p2, :cond_27

    .line 710
    const/4 v5, 0x0

    .line 712
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    .line 713
    move-result-object v6

    .line 716
    goto :goto_10

    .line 717
    :cond_27
    move/from16 v5, p3

    .line 718
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    .line 720
    move-result-object v6

    .line 723
    :goto_10
    iput-object v6, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    .line 724
    if-eqz v6, :cond_28

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 728
    move-result-object v5

    .line 731
    invoke-static {v6, v5, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;)V

    .line 732
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->hasProgressbar(Landroid/app/Notification;)Z

    .line 735
    move-result v5

    .line 738
    if-eqz v5, :cond_28

    .line 739
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    .line 741
    const v6, 0x102049b    # @android:id/scrim

    .line 743
    const/16 v7, 0x8

    .line 746
    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 748
    :cond_28
    :goto_11
    and-int/lit8 v5, p0, 0x2

    .line 751
    if-eqz v5, :cond_2c

    .line 753
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 755
    move-result v5

    .line 758
    if-eqz v5, :cond_29

    .line 759
    const/4 v5, 0x0

    .line 761
    iput-object v5, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    .line 762
    goto :goto_13

    .line 764
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    .line 765
    move-result-object v5

    .line 768
    if-eqz v5, :cond_2a

    .line 769
    goto :goto_12

    .line 771
    :cond_2a
    if-eqz p2, :cond_2b

    .line 772
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    .line 774
    move-result-object v5

    .line 777
    invoke-static {v5}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 778
    goto :goto_12

    .line 781
    :cond_2b
    const/4 v5, 0x0

    .line 782
    :goto_12
    iput-object v5, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    .line 783
    :cond_2c
    :goto_13
    and-int/lit8 v5, p0, 0x4

    .line 785
    if-eqz v5, :cond_34

    .line 787
    sget-object v5, Lcom/android/systemui/SystemUIApplication;->sContext:Landroid/content/Context;

    .line 789
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 791
    move-result v6

    .line 794
    if-eqz v6, :cond_31

    .line 795
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->getFocusView(Landroid/app/Notification;Landroid/content/Context;)Landroid/widget/RemoteViews;

    .line 797
    move-result-object v1

    .line 800
    invoke-static {v5, v2, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->useOneLine(Landroid/content/Context;Landroid/content/Context;Landroid/app/Notification;)Z

    .line 801
    move-result v6

    .line 804
    if-eqz v6, :cond_30

    .line 805
    iget-object v6, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 807
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 809
    move-result v6

    .line 812
    iget-object v7, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 813
    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 815
    move-result v7

    .line 818
    if-lez v7, :cond_2d

    .line 819
    int-to-float v7, v7

    .line 821
    const/4 v8, 0x0

    .line 822
    invoke-virtual {v1, v6, v7, v8}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 823
    :cond_2d
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->isTransparent()Z

    .line 826
    move-result v14

    .line 829
    if-eqz v14, :cond_2f

    .line 830
    iget-object v6, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 832
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 834
    move-result-object v6

    .line 837
    if-eqz v6, :cond_2e

    .line 838
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 840
    move-result v7

    .line 843
    if-lez v7, :cond_2e

    .line 844
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 846
    move-result-object v6

    .line 849
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 850
    move-result v7

    .line 853
    if-eqz v7, :cond_2f

    .line 854
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 856
    move-result-object v7

    .line 859
    check-cast v7, Ljava/lang/Integer;

    .line 860
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 862
    move-result v7

    .line 865
    const v8, 0x7f06076e    # @color/optimized_game_heads_up_notification_text '#e6ffffff'

    .line 866
    invoke-virtual {v5, v8}, Landroid/content/Context;->getColor(I)I

    .line 869
    move-result v9

    .line 872
    invoke-virtual {v1, v7, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 873
    goto :goto_14

    .line 876
    :cond_2e
    const/4 v14, 0x0

    .line 877
    :cond_2f
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 878
    invoke-virtual {v4, v11, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 880
    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    .line 883
    goto :goto_15

    .line 885
    :cond_30
    const/4 v1, 0x0

    .line 886
    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    .line 887
    goto :goto_15

    .line 889
    :cond_31
    iget-object v6, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 890
    if-eqz v6, :cond_32

    .line 892
    iput-object v6, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    .line 894
    goto :goto_15

    .line 896
    :cond_32
    invoke-static {v5, v2, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->useOneLine(Landroid/content/Context;Landroid/content/Context;Landroid/app/Notification;)Z

    .line 897
    move-result v6

    .line 900
    if-eqz v6, :cond_33

    .line 901
    const/4 v6, 0x1

    .line 903
    invoke-static {v4, v6, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->buildOneLineContent(Landroid/app/Notification;ZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 904
    move-result-object v1

    .line 907
    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    .line 908
    goto :goto_15

    .line 910
    :cond_33
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    .line 911
    move-result-object v1

    .line 914
    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    .line 915
    :cond_34
    :goto_15
    const/16 v1, 0x8

    .line 917
    and-int/lit8 v1, p0, 0x8

    .line 919
    if-eqz v1, :cond_35

    .line 921
    invoke-virtual/range {p1 .. p2}, Landroid/app/Notification$Builder;->makePublicContentView(Z)Landroid/widget/RemoteViews;

    .line 923
    move-result-object v1

    .line 926
    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    .line 927
    :cond_35
    iput-object v2, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 929
    const/4 v1, 0x0

    .line 931
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    .line 932
    move-result-object v1

    .line 935
    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarText:Ljava/lang/CharSequence;

    .line 936
    const/4 v1, 0x1

    .line 938
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    .line 939
    move-result-object v0

    .line 942
    iput-object v0, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    .line 943
    return-object v3

    :array_0
    .array-data 4
        0x7f0a0431    # @id/inbox_text0
        0x7f0a0432    # @id/inbox_text1
        0x7f0a0433    # @id/inbox_text2
        0x7f0a0434    # @id/inbox_text3
        0x7f0a0435    # @id/inbox_text4
        0x7f0a0436    # @id/inbox_text5
        0x7f0a0437    # @id/inbox_text6
    .end array-data
.end method

.method public static getSingleLineText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v1, "android.text"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 9
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 10
    const-string v1, "android.title"

    .line 12
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 14
    move-result-object p0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    return-object p0

    .line 24
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    return-object v0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return-object p0
    .line 33
.end method

.method public static handle3thThemeColor(Landroid/app/Notification$Builder;Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 12
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isDefaultLockScreenTheme()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    const v0, 0x7f06075b    # @color/notification_primary_text_color_light '#e6000000'

    .line 21
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 24
    move-result v0

    .line 27
    const v1, 0x7f060760    # @color/notification_secondary_text_color_light '#99000000'

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    .line 31
    move-result p1

    .line 34
    invoke-static {v0}, Lcom/android/internal/util/ContrastColorUtil;->isColorLight(I)Z

    .line 35
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    const/high16 v1, -0x1000000

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, -0x1

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->makeNotificationGroupHeader()Landroid/widget/RemoteViews;

    .line 45
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->initColorField()V

    .line 48
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sColorFiled:Ljava/lang/reflect/Field;

    .line 51
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 56
    check-cast p0, Landroid/app/Notification$Colors;

    .line 57
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sPrimaryTextColorFiled:Ljava/lang/reflect/Field;

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v0

    .line 64
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sSecondaryTextColorFiled:Ljava/lang/reflect/Field;

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object p1

    .line 73
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sBackgroundColorFiled:Ljava/lang/reflect/Field;

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v0

    .line 82
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sProtectionColorFiled:Ljava/lang/reflect/Field;

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v0

    .line 91
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_1

    .line 95
    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :goto_1
    return-void
    .line 100
.end method

.method public static handleActions(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V
    .locals 10

    .line 1
    iget-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    array-length v0, v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_2

    .line 13
    const v6, 0x7f0a0091    # @id/actions

    .line 15
    invoke-virtual {p0, v6, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 18
    iget-object v7, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 21
    array-length v8, v7

    .line 23
    move v9, v1

    .line 24
    :goto_1
    if-ge v9, v8, :cond_2

    .line 25
    aget-object v0, v7, v9

    .line 27
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    .line 29
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 31
    move-result-object v2

    .line 34
    const v3, 0x7f0d0289    # @layout/notification_material_action 'res/layout/notification_material_action.xml'

    .line 35
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 38
    iget-object v2, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 41
    const v3, 0x7f0a004a    # @id/action0

    .line 43
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 46
    iget-object v2, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 54
    move-result-object v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 60
    move-result-object v2

    .line 63
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 64
    :cond_1
    iget-object v0, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 67
    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0, v6, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 76
    const v0, 0x7f0a004a    # @id/action0

    .line 79
    const v1, 0x7f060764    # @color/notification_text_color_with_bg_light '#99000000'

    .line 82
    const v2, 0x7f060763    # @color/notification_text_color_with_bg_dark '#80ffffff'

    .line 85
    move-object v3, p1

    .line 88
    move-object v4, p2

    .line 89
    move-object v5, p0

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleTextColorForCustomBg(IIILandroid/app/Notification;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 91
    add-int/lit8 v9, v9, 0x1

    .line 94
    goto :goto_1

    .line 96
    :cond_2
    return-void
    .line 97
.end method

.method public static handleAppIcon(Landroid/widget/RemoteViews;Landroid/app/Notification;Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v1, "android.appInfo"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 10
    if-eqz v0, :cond_7

    .line 12
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/MiuiNotificationCompat;->getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    goto :goto_3

    .line 24
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    .line 25
    move-result v1

    .line 28
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 29
    if-eqz v2, :cond_2

    .line 31
    if-eqz v1, :cond_1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 36
    const-string v3, "miui.isGrayscaleIcon"

    .line 38
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 41
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    return-void

    .line 47
    :cond_2
    :goto_0
    const-class v2, Lcom/miui/systemui/SettingsManager;

    .line 48
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 53
    check-cast v2, Lcom/miui/systemui/SettingsManager;

    .line 54
    iget-boolean v2, v2, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 56
    if-nez v2, :cond_3

    .line 58
    return-void

    .line 60
    :cond_3
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getCustomAppIcon(Landroid/app/Notification;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 61
    move-result-object p1

    .line 64
    if-nez p1, :cond_4

    .line 65
    const/4 p1, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 69
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 71
    move-result-object p1

    .line 74
    :goto_1
    if-nez p1, :cond_5

    .line 75
    iget-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 77
    sget-object p2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sAppIconManager:Lcom/miui/systemui/graphics/AppIconsManager;

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 84
    move-result v0

    .line 87
    invoke-virtual {p2, v0, p1}, Lcom/miui/systemui/graphics/AppIconsManager;->getAppIconBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 88
    move-result-object p1

    .line 91
    :cond_5
    if-eqz v1, :cond_6

    .line 92
    const p2, 0x7f0a00ca    # @id/app_icon

    .line 94
    goto :goto_2

    .line 97
    :cond_6
    const p2, 0x1020006    # @android:id/icon

    .line 98
    :goto_2
    invoke-virtual {p0, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 101
    :cond_7
    :goto_3
    return-void
    .line 104
.end method

.method public static handleBackground(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Notification;->isColorized()Z

    .line 2
    move-result v0

    .line 5
    const v1, 0x7f0a08e5    # @id/status_bar_latest_event_content

    .line 6
    if-eqz v0, :cond_0

    .line 9
    iget p0, p0, Landroid/app/Notification;->color:I

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const-string/jumbo v0, "setBackgroundColor"

    .line 15
    invoke-virtual {p1, v1, v0, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    const-string/jumbo p0, "setBackgroundResource"

    .line 22
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v1, p0, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 26
    :goto_0
    return-void
    .line 29
.end method

.method public static handleBigContentTitle(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v1, "android.title"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 10
    const-string v2, "android.title.big"

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 14
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    move-object v0, v1

    .line 20
    :cond_0
    invoke-static {p0, v0, p2, p3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleTitle(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Ljava/lang/CharSequence;ZLandroid/content/Context;Landroid/app/Notification;)V

    .line 21
    const p1, 0x7f0a04f9    # @id/line1

    .line 24
    if-eqz v1, :cond_1

    .line 27
    const-string p2, ""

    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    const/16 p2, 0x8

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 44
    :goto_0
    return-void
    .line 47
.end method

.method public static handleChronometerAndTime(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/app/Notification;->showsTime()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/app/Notification;->showsChronometer()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v1

    .line 19
    :goto_1
    const-string/jumbo v3, "setTime"

    .line 20
    const v4, 0x7f0a098a    # @id/time

    .line 23
    if-eqz v0, :cond_3

    .line 26
    const v0, 0x7f0a0995    # @id/time_line_1

    .line 28
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 31
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 34
    const-string v5, "android.showChronometer"

    .line 36
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    const v0, 0x7f0a01ec    # @id/chronometer

    .line 44
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 47
    iget-wide v2, p1, Landroid/app/Notification;->when:J

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 52
    move-result-wide v4

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    move-result-wide v6

    .line 59
    sub-long/2addr v4, v6

    .line 60
    add-long/2addr v4, v2

    .line 61
    const-string/jumbo v2, "setBase"

    .line 62
    invoke-virtual {p0, v0, v2, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 65
    const-string/jumbo v2, "setStarted"

    .line 68
    invoke-virtual {p0, v0, v2, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 71
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 74
    const-string v2, "android.chronometerCountDown"

    .line 76
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 78
    move-result v1

    .line 81
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 82
    goto :goto_3

    .line 85
    :cond_2
    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 86
    iget-wide v0, p1, Landroid/app/Notification;->when:J

    .line 89
    invoke-virtual {p0, v4, v3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 91
    goto :goto_3

    .line 94
    :cond_3
    iget-wide v0, p1, Landroid/app/Notification;->when:J

    .line 95
    const-wide/16 v5, 0x0

    .line 97
    cmp-long v2, v0, v5

    .line 99
    if-eqz v2, :cond_4

    .line 101
    goto :goto_2

    .line 103
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    move-result-wide v0

    .line 107
    :goto_2
    invoke-virtual {p0, v4, v3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 108
    :goto_3
    const v5, 0x7f0a098a    # @id/time

    .line 111
    const v6, 0x7f060767    # @color/notification_time_color_with_bg_light '#4d000000'

    .line 114
    const v7, 0x7f060766    # @color/notification_time_color_with_bg_dark '#33ffffff'

    .line 117
    move-object v8, p1

    .line 120
    move-object v9, p2

    .line 121
    move-object v10, p0

    .line 122
    invoke-static/range {v5 .. v10}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleTextColorForCustomBg(IIILandroid/app/Notification;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 123
    return-void
    .line 126
.end method

.method public static handleFocusAppIcon(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v1, "miui.focus.iconId"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MiuiNotificationCompat;->getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 14
    move-result-object v1

    .line 17
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 18
    const-string v2, "android.appInfo"

    .line 20
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 34
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    return-void

    .line 42
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sAppIconManager:Lcom/miui/systemui/graphics/AppIconsManager;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 52
    move-result v3

    .line 55
    invoke-virtual {v2, v3, v1}, Lcom/miui/systemui/graphics/AppIconsManager;->getAppIconBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 56
    move-result-object v1

    .line 59
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 60
    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    .line 62
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    sget-object v2, Lcom/android/systemui/SystemUIApplication;->sContext:Landroid/content/Context;

    .line 68
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 75
    invoke-static {v2, v3, p0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 77
    move-result-object p0

    .line 80
    invoke-static {p0}, Lcom/miui/utils/DrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 81
    move-result-object v1

    .line 84
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 85
    return-void
    .line 88
.end method

.method public static handleLargeIcon(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 12
    move-result-object v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, p0

    .line 21
    :goto_0
    if-eqz v1, :cond_2

    .line 22
    const v1, 0x7f0a07b4    # @id/right_icon

    .line 24
    invoke-virtual {p1, v1, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 30
    :cond_2
    return-void
    .line 33
.end method

.method public static handleProgressBar(Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v1, "android.progressMax"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 10
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 11
    const-string v3, "android.progress"

    .line 13
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 15
    move-result v1

    .line 18
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 19
    const-string v3, "android.progressIndeterminate"

    .line 21
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 23
    move-result p0

    .line 26
    if-nez v0, :cond_1

    .line 27
    if-eqz p0, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    move v3, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 34
    :goto_1
    const v4, 0x7f0a073d    # @id/progress

    .line 35
    if-eqz v3, :cond_2

    .line 38
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 40
    invoke-virtual {p1, v4, v0, v1, p0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 43
    const/4 p0, 0x0

    .line 46
    invoke-virtual {p1, v4, p0}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 47
    invoke-virtual {p1, v4, p0}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 50
    goto :goto_2

    .line 53
    :cond_2
    const/16 p0, 0x8

    .line 54
    invoke-virtual {p1, v4, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 56
    :goto_2
    return v3
    .line 59
.end method

.method public static handleText(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Landroid/app/Notification;ZLandroid/content/Context;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v1, "android.text"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->getSingleLineText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 10
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    move-object v0, v1

    .line 20
    :cond_0
    if-eqz v0, :cond_2

    .line 21
    if-eqz p2, :cond_1

    .line 23
    const p2, 0x7f0a0975    # @id/text_line_1

    .line 25
    goto :goto_0

    .line 28
    :cond_1
    const p2, 0x7f0a0966    # @id/text

    .line 29
    :goto_0
    move v1, p2

    .line 32
    invoke-static {p3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 33
    move-result-object p2

    .line 36
    invoke-virtual {p0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 37
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, v1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 41
    const v2, 0x7f060764    # @color/notification_text_color_with_bg_light '#99000000'

    .line 44
    const v3, 0x7f060763    # @color/notification_text_color_with_bg_dark '#80ffffff'

    .line 47
    move-object v4, p1

    .line 50
    move-object v5, p3

    .line 51
    move-object v6, p0

    .line 52
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleTextColorForCustomBg(IIILandroid/app/Notification;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 53
    :cond_2
    return-void
    .line 56
.end method

.method public static handleTextColorForCustomBg(IIILandroid/app/Notification;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/app/Notification;->isColorized()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    iget p3, p3, Landroid/app/Notification;->color:I

    .line 8
    if-eqz p3, :cond_1

    .line 10
    invoke-static {p3}, Lcom/android/internal/util/ContrastColorUtil;->isColorLight(I)Z

    .line 12
    move-result p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move p1, p2

    .line 19
    :goto_0
    invoke-virtual {p4, p1}, Landroid/content/Context;->getColor(I)I

    .line 20
    move-result p1

    .line 23
    invoke-virtual {p5, p0, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 24
    :cond_1
    return-void
    .line 27
.end method

.method public static handleTitle(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;Ljava/lang/CharSequence;ZLandroid/content/Context;Landroid/app/Notification;)V
    .locals 8

    .line 1
    invoke-static {p4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->getSingleLineText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    iget-object p1, p4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    const-string v0, "android.appInfo"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 20
    if-nez p1, :cond_0

    .line 22
    return-void

    .line 24
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 29
    move-result-object p1

    .line 32
    :cond_1
    if-eqz p1, :cond_3

    .line 33
    const v0, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 35
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 39
    invoke-static {p3, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 42
    move-result-object p1

    .line 45
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 46
    if-eqz p2, :cond_2

    .line 49
    const/high16 p1, -0x40000000    # -2.0f

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    const/high16 p1, -0x40800000    # -1.0f

    .line 54
    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 56
    const v2, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 59
    const v3, 0x7f060769    # @color/notification_title_color_with_bg_light '#ff000000'

    .line 62
    const v4, 0x7f060768    # @color/notification_title_color_with_bg_dark '#e6ffffff'

    .line 65
    move-object v5, p4

    .line 68
    move-object v6, p3

    .line 69
    move-object v7, p0

    .line 70
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleTextColorForCustomBg(IIILandroid/app/Notification;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V

    .line 71
    :cond_3
    return-void
    .line 74
.end method

.method public static initAppInfo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/pm/PackageManager;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 8
    move-result v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 12
    const v2, 0xc2200

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 17
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    const/16 v2, 0x3e7

    .line 23
    if-ne v0, v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 29
    move-result v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 34
    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppUid:I

    .line 36
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 38
    iput v2, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mTargetSdk:I

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 42
    move-result-object v2

    .line 45
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 49
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppName:Ljava/lang/String;

    .line 50
    const-class v2, Lcom/miui/systemui/graphics/AppIconsManager;

    .line 52
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 57
    check-cast v2, Lcom/miui/systemui/graphics/AppIconsManager;

    .line 58
    invoke-virtual {v2, v1, p1, v0}, Lcom/miui/systemui/graphics/AppIconsManager;->getAppIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;I)Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_1

    .line 66
    :catch_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    :cond_1
    :goto_1
    return-void
    .line 73
.end method

.method public static initColorField()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sColorFiled:Ljava/lang/reflect/Field;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    const-class v0, Landroid/app/Notification$Builder;

    .line 7
    const-string v2, "mColors"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sColorFiled:Ljava/lang/reflect/Field;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 17
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sPrimaryTextColorFiled:Ljava/lang/reflect/Field;

    .line 20
    if-nez v0, :cond_1

    .line 22
    const-class v0, Landroid/app/Notification$Colors;

    .line 24
    const-string v2, "mPrimaryTextColor"

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    move-result-object v0

    .line 31
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sPrimaryTextColorFiled:Ljava/lang/reflect/Field;

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sSecondaryTextColorFiled:Ljava/lang/reflect/Field;

    .line 37
    if-nez v0, :cond_2

    .line 39
    const-class v0, Landroid/app/Notification$Colors;

    .line 41
    const-string v2, "mSecondaryTextColor"

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 45
    move-result-object v0

    .line 48
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sSecondaryTextColorFiled:Ljava/lang/reflect/Field;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sBackgroundColorFiled:Ljava/lang/reflect/Field;

    .line 54
    if-nez v0, :cond_3

    .line 56
    const-class v0, Landroid/app/Notification$Colors;

    .line 58
    const-string v2, "mBackgroundColor"

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 62
    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sBackgroundColorFiled:Ljava/lang/reflect/Field;

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sProtectionColorFiled:Ljava/lang/reflect/Field;

    .line 71
    if-nez v0, :cond_4

    .line 73
    const-class v0, Landroid/app/Notification$Colors;

    .line 75
    const-string v2, "mProtectionColor"

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 79
    move-result-object v0

    .line 82
    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->sProtectionColorFiled:Ljava/lang/reflect/Field;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    :cond_4
    return-void
    .line 88
.end method

.method public static isTransparent()Z
    .locals 4

    .line 1
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 8
    iget-boolean v0, v0, Lcom/miui/systemui/SettingsManager;->gameModeEnabled:Z

    .line 10
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_2

    .line 13
    const-class v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 15
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 23
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTopHidesStatusBar:Z

    .line 25
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/android/systemui/SystemUIApplication;->sContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 38
    move-result-object v0

    .line 41
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 42
    const/4 v3, 0x2

    .line 44
    if-ne v0, v3, :cond_0

    .line 45
    move v0, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v0, v2

    .line 49
    :goto_0
    if-eqz v0, :cond_1

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    move v1, v2

    .line 53
    :cond_2
    :goto_1
    return v1
    .line 54
.end method

.method public static processTextSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 12
    and-int/lit8 p0, p0, 0x30

    .line 14
    const/16 v0, 0x20

    .line 16
    if-ne p0, v0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    if-eqz p0, :cond_1

    .line 23
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 25
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    return-object p1
    .line 30
.end method

.method public static resetStandardTemplate(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V
    .locals 3

    .line 1
    const v0, 0x7f0a00ca    # @id/app_icon

    .line 2
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 6
    const v0, 0x7f0a0995    # @id/time_line_1

    .line 9
    const/16 v2, 0x8

    .line 12
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 14
    const v0, 0x7f0a01ec    # @id/chronometer

    .line 17
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 20
    const v0, 0x7f0a098a    # @id/time

    .line 23
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 26
    const v0, 0x7f0a07b4    # @id/right_icon

    .line 29
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 32
    const v0, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 35
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f0a0966    # @id/text

    .line 44
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f0a0975    # @id/text_line_1

    .line 53
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 56
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 59
    const v0, 0x7f0a05c2    # @id/miui_action

    .line 62
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 65
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 68
    return-void
    .line 71
.end method

.method public static resetStandardTemplateWithActions(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;)V
    .locals 3

    .line 1
    const v0, 0x7f0a00ca    # @id/app_icon

    .line 2
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 6
    const v0, 0x7f0a0995    # @id/time_line_1

    .line 9
    const/16 v2, 0x8

    .line 12
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 14
    const v0, 0x7f0a01ec    # @id/chronometer

    .line 17
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 20
    const v0, 0x7f0a098a    # @id/time

    .line 23
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 26
    const v0, 0x7f0a07b4    # @id/right_icon

    .line 29
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 32
    const v0, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 35
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f0a0966    # @id/text

    .line 44
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f0a0975    # @id/text_line_1

    .line 53
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 56
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 59
    const v0, 0x7f0a0091    # @id/actions

    .line 62
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 68
    return-void
    .line 71
.end method

.method public static useOneLine(Landroid/content/Context;Landroid/content/Context;Landroid/app/Notification;)Z
    .locals 7

    .line 1
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 8
    iget-boolean v0, v0, Lcom/miui/systemui/SettingsManager;->gameModeEnabled:Z

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    move-result-object v1

    .line 19
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 20
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    move v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v4

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isGlobalInCallNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)Z

    .line 34
    move-result p1

    .line 37
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Landroid/app/Notification;)Z

    .line 38
    move-result p2

    .line 41
    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    .line 42
    move-result p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    const-class p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 48
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 53
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 54
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTopHidesStatusBar:Z

    .line 58
    if-nez p0, :cond_1

    .line 60
    move p0, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move p0, v4

    .line 64
    :goto_1
    const-class v5, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 65
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    move-result-object v5

    .line 70
    check-cast v5, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 71
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 73
    move-result-object v5

    .line 76
    if-eqz v5, :cond_3

    .line 77
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 79
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isFocusNotification()Z

    .line 81
    move-result v6

    .line 84
    if-nez v6, :cond_3

    .line 85
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 87
    if-eqz v5, :cond_2

    .line 89
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 91
    move-result-object v5

    .line 94
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 95
    move-result-object v2

    .line 98
    instance-of v2, v2, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationOneLineViewWrapper;

    .line 99
    if-eqz v2, :cond_2

    .line 101
    goto :goto_2

    .line 103
    :cond_2
    move v2, v4

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    :goto_2
    move v2, v3

    .line 106
    :goto_3
    if-nez v0, :cond_4

    .line 107
    if-eqz v1, :cond_5

    .line 109
    if-eqz v2, :cond_5

    .line 111
    if-nez p0, :cond_5

    .line 113
    :cond_4
    if-nez p1, :cond_5

    .line 115
    if-nez p2, :cond_5

    .line 117
    goto :goto_4

    .line 119
    :cond_5
    move v3, v4

    .line 120
    :goto_4
    return v3
    .line 121
.end method
