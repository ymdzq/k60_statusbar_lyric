.class public Lcom/android/settings/MiuiCustSplitUtilsImpl;
.super Lcom/android/settings/MiuiCustSplitUtils;
.source "MiuiCustSplitUtilsImpl.java"


# instance fields
.field private mIMiuiActivitySplitterImpl:Landroid/app/MiuiActivitySplitterImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiCustSplitUtils;-><init>(Landroid/app/Activity;)V

    .line 24
    invoke-static {}, Lcom/android/settingslib/utils/SplitUtils;->isSplitAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiCustSplitUtilsImpl;->isBaseActivity(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {p1, v0}, Landroid/app/MiuiActivitySplitterImpl;->getDefault(Landroid/app/Activity;Z)Landroid/app/MiuiActivitySplitterImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiCustSplitUtilsImpl;->mIMiuiActivitySplitterImpl:Landroid/app/MiuiActivitySplitterImpl;

    :cond_0
    return-void
.end method

.method private isBaseActivity(Landroid/app/Activity;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 32
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/android/settings/MiuiSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public finishAllSubActivities()V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/MiuiCustSplitUtilsImpl;->mIMiuiActivitySplitterImpl:Landroid/app/MiuiActivitySplitterImpl;

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->finishAllSubActivities()V

    :cond_0
    return-void
.end method

.method public getCurrentSubIntent()Landroid/content/Intent;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/MiuiCustSplitUtilsImpl;->mIMiuiActivitySplitterImpl:Landroid/app/MiuiActivitySplitterImpl;

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isSecondStageActivity()Z
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/settings/MiuiCustSplitUtilsImpl;->mIMiuiActivitySplitterImpl:Landroid/app/MiuiActivitySplitterImpl;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->isSplitSecondActivity()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSplitActivityDestroy()V
    .locals 0

    .line 147
    invoke-super {p0}, Lcom/android/settings/MiuiCustSplitUtils;->onSplitActivityDestroy()V

    .line 148
    iget-object p0, p0, Lcom/android/settings/MiuiCustSplitUtilsImpl;->mIMiuiActivitySplitterImpl:Landroid/app/MiuiActivitySplitterImpl;

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->onSplitActivityDestroy()V

    :cond_0
    return-void
.end method

.method public reachSplitSize()Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/settings/MiuiCustSplitUtilsImpl;->mIMiuiActivitySplitterImpl:Landroid/app/MiuiActivitySplitterImpl;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setFirstIntent(Landroid/content/Intent;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/settings/MiuiCustSplitUtilsImpl;->mIMiuiActivitySplitterImpl:Landroid/app/MiuiActivitySplitterImpl;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setFirstIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setSplit(Landroid/view/ViewGroup;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/settings/MiuiCustSplitUtilsImpl;->mIMiuiActivitySplitterImpl:Landroid/app/MiuiActivitySplitterImpl;

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setSplit(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTargetIntent(Landroid/content/Intent;)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/settings/MiuiCustSplitUtilsImpl;->mIMiuiActivitySplitterImpl:Landroid/app/MiuiActivitySplitterImpl;

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setTargetIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public splitActivityFinish()V
    .locals 0

    .line 157
    invoke-super {p0}, Lcom/android/settings/MiuiCustSplitUtils;->splitActivityFinish()V

    .line 158
    iget-object p0, p0, Lcom/android/settings/MiuiCustSplitUtilsImpl;->mIMiuiActivitySplitterImpl:Landroid/app/MiuiActivitySplitterImpl;

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->splitActivityFinish()V

    :cond_0
    return-void
.end method
