.class public final Lcom/android/systemui/qs/miplay/MiPlayDetailAdapter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailContent$Callback;


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    return-object p2

    .line 4
    :cond_0
    const-class p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 5
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/controls/MiPlayPluginManager;->mMiPlayPlugin:Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;

    .line 13
    if-eqz p0, :cond_1

    .line 15
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;->createMiPlayDetailView()Landroid/view/View;

    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    return-object p0
    .line 27
.end method

.method public final getContainerHeight()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
    .line 3
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x490

    .line 2
    return p0
    .line 4
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-string p0, "MiPlay"

    .line 2
    return-object p0
    .line 4
.end method

.method public final getToggleEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    return-object p0
    .line 4
.end method

.method public final hasHeader()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onDetailItemClick(Lcom/android/systemui/qs/QSDetailContent$Item;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailContent$SelectableItem;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setToggleState(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
