.class final Lcom/android/systemui/navigationbar/gestural/BackPanelController$isPastThresholdToActive$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $delay:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$isPastThresholdToActive$1;->$delay:Ljava/lang/Float;

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
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$isPastThresholdToActive$1;->$delay:Ljava/lang/Float;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method
