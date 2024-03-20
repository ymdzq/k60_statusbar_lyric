.class final synthetic Lcom/android/app/motiontool/MotionToolManager$beginTrace$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda7;)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    const-class v3, Landroid/media/permission/SafeCloseable;

    .line 3
    const-string v4, "close"

    .line 5
    const-string v5, "close()V"

    .line 7
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 2
    check-cast p0, Landroid/media/permission/SafeCloseable;

    .line 4
    invoke-interface {p0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    return-object p0
    .line 11
.end method
