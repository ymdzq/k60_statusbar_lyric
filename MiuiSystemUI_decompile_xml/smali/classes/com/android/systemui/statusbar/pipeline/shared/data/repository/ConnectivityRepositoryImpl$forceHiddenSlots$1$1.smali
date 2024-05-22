.class final Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $callback:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1$callback$1;

.field final synthetic $tunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1$callback$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1$1;->$tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1$1;->$callback:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1$callback$1;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1$1;->$tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1$1;->$callback:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1$callback$1;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    return-object p0
    .line 11
.end method
