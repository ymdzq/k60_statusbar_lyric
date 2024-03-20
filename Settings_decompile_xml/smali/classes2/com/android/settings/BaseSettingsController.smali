.class public abstract Lcom/android/settings/BaseSettingsController;
.super Ljava/lang/Object;
.source "BaseSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BaseSettingsController$UpdateCallback;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mStatusView:Landroid/widget/TextView;

.field protected mUpdateCallback:Lcom/android/settings/BaseSettingsController$UpdateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/settings/BaseSettingsController;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/settings/BaseSettingsController;->mUpdateCallback:Lcom/android/settings/BaseSettingsController$UpdateCallback;

    return-void
.end method


# virtual methods
.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public setStatusView(Landroid/widget/TextView;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    if-eq v0, p1, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BaseSettingsController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/settings/BaseSettingsController;->setStatusView(Landroid/widget/TextView;)V

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/BaseSettingsController;->updateStatus()V

    return-void
.end method

.method public setUpdateCallback(Lcom/android/settings/BaseSettingsController$UpdateCallback;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settings/BaseSettingsController;->mUpdateCallback:Lcom/android/settings/BaseSettingsController$UpdateCallback;

    return-void
.end method

.method protected start()V
    .locals 0

    .line 0
    return-void
.end method

.method protected stop()V
    .locals 0

    .line 0
    return-void
.end method

.method protected abstract updateStatus()V
.end method
