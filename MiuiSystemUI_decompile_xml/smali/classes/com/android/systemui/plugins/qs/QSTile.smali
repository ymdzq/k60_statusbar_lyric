.class public interface abstract Lcom/android/systemui/plugins/qs/QSTile;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/Dependencies;
    value = {
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/qs/QSIconView;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/qs/QSTile$Callback;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/qs/QSTile$Icon;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/qs/QSTile$State;
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x4
.end annotation


# static fields
.field public static final TILE_ACTIVE_BG_AUTO_BRIGHTNESS:I = 0x2

.field public static final TILE_ACTIVE_BG_BATTERY_RELATED:I = 0x1

.field public static final TILE_ACTIVE_BG_NORMAL:I = 0x0

.field public static final TILE_INACTIVE_BG_BT_RESTRICT:I = 0x3

.field public static final VERSION:I = 0x4


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
.end method

.method public clearState()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
    .line 2
.end method

.method public click()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->click(Landroid/view/View;)V

    return-void
.end method

.method public abstract click(Landroid/view/View;)V
.end method

.method public abstract createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
.end method

.method public abstract destroy()V
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public abstract getInstanceId()Lcom/android/internal/logging/InstanceId;
.end method

.method public abstract getMetricsCategory()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getMetricsSpec()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public abstract getState()Lcom/android/systemui/plugins/qs/QSTile$State;
.end method

.method public abstract getTileLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getTileSpec()Ljava/lang/String;
.end method

.method public abstract isAvailable()Z
.end method

.method public isConnected()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public abstract isListening()Z
.end method

.method public isTileReady()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public longClick()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick(Landroid/view/View;)V

    return-void
.end method

.method public abstract longClick(Landroid/view/View;)V
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 0

    .line 1
    return-object p1
    .line 2
.end method

.method public abstract refreshState()V
.end method

.method public abstract removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
.end method

.method public abstract removeCallbacks()V
.end method

.method public removeCallbacksByType(I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    .line 2
    return-void
    .line 5
.end method

.method public secondaryClick()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->secondaryClick(Landroid/view/View;)V

    return-void
.end method

.method public abstract secondaryClick(Landroid/view/View;)V
.end method

.method public abstract setDetailListening(Z)V
.end method

.method public abstract setListening(Ljava/lang/Object;Z)V
.end method

.method public abstract setTileSpec(Ljava/lang/String;)V
.end method

.method public showDetail(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract userSwitch(I)V
.end method
