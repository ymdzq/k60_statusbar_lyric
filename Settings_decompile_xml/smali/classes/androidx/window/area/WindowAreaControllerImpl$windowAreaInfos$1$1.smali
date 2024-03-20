.class final Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WindowAreaControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $rearDisplayListener:Landroidx/window/extensions/core/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/extensions/core/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rearDisplayPresentationListener:Landroidx/window/extensions/core/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/extensions/core/util/function/Consumer<",
            "Landroidx/window/extensions/area/ExtensionWindowAreaStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/window/area/WindowAreaControllerImpl;


# direct methods
.method constructor <init>(Landroidx/window/area/WindowAreaControllerImpl;Landroidx/window/extensions/core/util/function/Consumer;Landroidx/window/extensions/core/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/area/WindowAreaControllerImpl;",
            "Landroidx/window/extensions/core/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/window/extensions/core/util/function/Consumer<",
            "Landroidx/window/extensions/area/ExtensionWindowAreaStatus;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1$1;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    iput-object p2, p0, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1$1;->$rearDisplayListener:Landroidx/window/extensions/core/util/function/Consumer;

    iput-object p3, p0, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1$1;->$rearDisplayPresentationListener:Landroidx/window/extensions/core/util/function/Consumer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0}, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 88
    iget-object v0, p0, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1$1;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    invoke-static {v0}, Landroidx/window/area/WindowAreaControllerImpl;->access$getWindowAreaComponent$p(Landroidx/window/area/WindowAreaControllerImpl;)Landroidx/window/extensions/area/WindowAreaComponent;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1$1;->$rearDisplayListener:Landroidx/window/extensions/core/util/function/Consumer;

    invoke-interface {v0, v1}, Landroidx/window/extensions/area/WindowAreaComponent;->removeRearDisplayStatusListener(Landroidx/window/extensions/core/util/function/Consumer;)V

    .line 89
    iget-object v0, p0, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1$1;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    invoke-static {v0}, Landroidx/window/area/WindowAreaControllerImpl;->access$getVendorApiLevel$p(Landroidx/window/area/WindowAreaControllerImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1$1;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    invoke-static {v0}, Landroidx/window/area/WindowAreaControllerImpl;->access$getWindowAreaComponent$p(Landroidx/window/area/WindowAreaControllerImpl;)Landroidx/window/extensions/area/WindowAreaComponent;

    move-result-object v0

    .line 91
    iget-object p0, p0, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1$1;->$rearDisplayPresentationListener:Landroidx/window/extensions/core/util/function/Consumer;

    .line 90
    invoke-interface {v0, p0}, Landroidx/window/extensions/area/WindowAreaComponent;->removeRearDisplayPresentationStatusListener(Landroidx/window/extensions/core/util/function/Consumer;)V

    :cond_0
    return-void
.end method
