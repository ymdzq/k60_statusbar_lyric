.class public interface abstract Lcom/android/systemui/qs/QSPanel$QSTileLayout;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
.end method

.method public abstract getHeight()I
.end method

.method public abstract getNumVisibleTiles()I
.end method

.method public abstract getTilesHeight()I
.end method

.method public abstract removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract setExpansion(FF)V
.end method

.method public abstract setListening(ZLcom/android/internal/logging/UiEventLogger;)V
.end method

.method public abstract setLogger(Lcom/android/systemui/qs/logging/QSLogger;)V
.end method

.method public abstract setMaxColumns(I)Z
.end method

.method public abstract setMinRows(I)Z
.end method

.method public abstract setSquishinessFraction(F)V
.end method

.method public abstract updateResources()Z
.end method
