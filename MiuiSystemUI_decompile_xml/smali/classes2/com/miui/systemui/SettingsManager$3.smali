.class final synthetic Lcom/miui/systemui/SettingsManager$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    const-class v3, Lcom/miui/systemui/SettingsManager;

    .line 3
    const-string v4, "onNotifFoldFooterIconChanged"

    .line 5
    const-string v5, "onNotifFoldFooterIconChanged()V"

    .line 7
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/miui/systemui/SettingsManager;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_STYLE:Landroid/net/Uri;

    .line 9
    iget-object v0, p0, Lcom/miui/systemui/SettingsManager;->context:Landroid/content/Context;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "fold_footer_icons"

    .line 17
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    move-result v0

    .line 23
    if-lez v0, :cond_0

    .line 24
    const/4 v2, 0x1

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/miui/systemui/SettingsManager;->notifFoldFooterIcon:Z

    .line 27
    if-eq v2, v0, :cond_1

    .line 29
    iput-boolean v2, p0, Lcom/miui/systemui/SettingsManager;->notifFoldFooterIcon:Z

    .line 31
    const-class p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 33
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 39
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->showNotifFoldFooterIcon:Z

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 43
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 47
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->foldNotifManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 51
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 53
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotifPipelineExtKt;->hasFoldedNotifs(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;I)Z

    .line 55
    move-result v1

    .line 58
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->checkFoldEntrance(Landroid/os/UserHandle;Z)V

    .line 63
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 66
    return-object p0
    .line 68
.end method
