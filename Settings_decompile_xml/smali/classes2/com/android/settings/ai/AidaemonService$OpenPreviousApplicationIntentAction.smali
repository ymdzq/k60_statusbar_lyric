.class Lcom/android/settings/ai/AidaemonService$OpenPreviousApplicationIntentAction;
.super Ljava/lang/Object;
.source "AidaemonService.java"

# interfaces
.implements Lcom/android/settings/ai/AidaemonService$IntentAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ai/AidaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenPreviousApplicationIntentAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ai/AidaemonService$OpenPreviousApplicationIntentAction-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ai/AidaemonService$OpenPreviousApplicationIntentAction;-><init>()V

    return-void
.end method


# virtual methods
.method public go(Landroid/content/Context;)V
    .locals 4

    .line 200
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 206
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p0, v0, v3, v2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 208
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 211
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 213
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 216
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 217
    sget v1, Lcom/android/settings/R$anim;->recents_quick_switch_left_enter:I

    sget v2, Lcom/android/settings/R$anim;->recents_quick_switch_left_exit:I

    invoke-static {p1, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 223
    :try_start_1
    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
