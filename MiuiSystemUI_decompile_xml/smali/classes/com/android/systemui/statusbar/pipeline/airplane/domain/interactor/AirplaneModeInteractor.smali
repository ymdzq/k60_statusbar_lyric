.class public final Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final isAirplaneMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isForceHidden:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepository;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepositoryImpl;

    .line 5
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/airplane/data/repository/AirplaneModeRepositoryImpl;->isAirplaneMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->isAirplaneMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 9
    check-cast p2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;

    .line 11
    iget-object p1, p2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->forceHiddenSlots:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 13
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$special$$inlined$map$1;

    .line 15
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlyStateFlow;)V

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->isForceHidden:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$special$$inlined$map$1;

    .line 20
    return-void
    .line 22
.end method
