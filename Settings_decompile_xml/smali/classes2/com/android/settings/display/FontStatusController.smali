.class public Lcom/android/settings/display/FontStatusController;
.super Lcom/android/settings/BaseSettingsController;
.source "FontStatusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/FontStatusController$UpdateTask;
    }
.end annotation


# instance fields
.field private mUpdateTask:Lcom/android/settings/display/FontStatusController$UpdateTask;


# direct methods
.method static bridge synthetic -$$Nest$mupdateResult(Lcom/android/settings/display/FontStatusController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/FontStatusController;->updateResult(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseSettingsController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method private updateResult(Ljava/lang/String;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mUpdateCallback:Lcom/android/settings/BaseSettingsController$UpdateCallback;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/BaseSettingsController$UpdateCallback;->updateText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 0

    .line 0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 0
    return-void
.end method

.method public updateStatus()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mUpdateCallback:Lcom/android/settings/BaseSettingsController$UpdateCallback;

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/FontStatusController;->mUpdateTask:Lcom/android/settings/display/FontStatusController$UpdateTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/FontStatusController;->mUpdateTask:Lcom/android/settings/display/FontStatusController$UpdateTask;

    .line 28
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 29
    :cond_1
    new-instance v0, Lcom/android/settings/display/FontStatusController$UpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settings/display/FontStatusController$UpdateTask;-><init>(Lcom/android/settings/display/FontStatusController;)V

    iput-object v0, p0, Lcom/android/settings/display/FontStatusController;->mUpdateTask:Lcom/android/settings/display/FontStatusController$UpdateTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 30
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method
