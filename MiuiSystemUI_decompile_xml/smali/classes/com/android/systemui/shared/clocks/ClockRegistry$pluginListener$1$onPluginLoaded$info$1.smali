.class final Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field final synthetic $isClockListChanged:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/shared/clocks/ClockRegistry;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->$isClockListChanged:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->$id:Ljava/lang/String;

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->$isClockListChanged:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 5
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 7
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->$id:Ljava/lang/String;

    .line 9
    invoke-static {v0, p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->access$onConnected(Lcom/android/systemui/shared/clocks/ClockRegistry;Ljava/lang/String;)V

    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    return-object p0
    .line 16
.end method
