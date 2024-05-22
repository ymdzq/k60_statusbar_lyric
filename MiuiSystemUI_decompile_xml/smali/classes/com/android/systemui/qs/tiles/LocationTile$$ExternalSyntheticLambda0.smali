.class public final synthetic Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/LocationTile;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/LocationTile;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 4
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 10
    invoke-interface {v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->openPanels()V

    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 17
    check-cast p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->setLocationEnabled(Z)Z

    .line 21
    return-void
.end method
