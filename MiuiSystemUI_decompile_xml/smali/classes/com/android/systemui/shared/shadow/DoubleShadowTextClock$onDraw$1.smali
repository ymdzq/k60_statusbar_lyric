.class final Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$onDraw$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $canvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$onDraw$1;->this$0:Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$onDraw$1;->$canvas:Landroid/graphics/Canvas;

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
    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$onDraw$1;->this$0:Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock$onDraw$1;->$canvas:Landroid/graphics/Canvas;

    .line 4
    invoke-static {v0, p0}, Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;->access$onDraw$s940309185(Lcom/android/systemui/shared/shadow/DoubleShadowTextClock;Landroid/graphics/Canvas;)V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    return-object p0
    .line 11
.end method