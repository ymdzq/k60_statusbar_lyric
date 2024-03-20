.class final synthetic Lcom/android/systemui/media/controls/ui/MediaCarouselController$addOrUpdatePlayer$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    const-class v3, Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 3
    const-string/jumbo v4, "updateCarouselDimensions"

    .line 5
    const-string/jumbo v5, "updateCarouselDimensions()V"

    .line 8
    const/4 v6, 0x0

    .line 11
    move-object v0, p0

    .line 12
    move-object v2, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 4
    invoke-static {p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->access$updateCarouselDimensions(Lcom/android/systemui/media/controls/ui/MediaCarouselController;)V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    return-object p0
    .line 11
.end method
