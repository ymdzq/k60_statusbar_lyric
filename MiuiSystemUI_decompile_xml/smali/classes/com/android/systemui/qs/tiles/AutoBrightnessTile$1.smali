.class final Lcom/android/systemui/qs/tiles/AutoBrightnessTile$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AutoBrightnessTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/AutoBrightnessTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoBrightnessTile;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile$1;->this$0:Lcom/android/systemui/qs/tiles/AutoBrightnessTile;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->autoBrightnessController:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AutoBrightnessTile;->callback:Lcom/android/systemui/qs/tiles/AutoBrightnessTile$callback$1;

    .line 8
    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    return-object p0
    .line 15
.end method
