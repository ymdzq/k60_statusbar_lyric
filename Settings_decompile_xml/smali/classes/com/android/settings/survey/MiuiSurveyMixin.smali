.class public Lcom/android/settings/survey/MiuiSurveyMixin;
.super Ljava/lang/Object;
.source "MiuiSurveyMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# virtual methods
.method public onPause()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/survey/MiuiSurveyMixin;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/settings/survey/MiuiSurveyMixin;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {v0, v1}, Lcom/android/settings/overlay/SurveyFeatureProvider;->unregisterReceiver(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/settings/survey/MiuiSurveyMixin;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/android/settings/survey/MiuiSurveyMixin;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 57
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;

    :cond_0
    return-void
.end method
