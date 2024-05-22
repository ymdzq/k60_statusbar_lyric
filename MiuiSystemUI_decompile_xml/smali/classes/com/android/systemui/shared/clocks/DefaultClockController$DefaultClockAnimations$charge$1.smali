.class final Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations$charge$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations$charge$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations$charge$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->dozeState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    .line 6
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method
