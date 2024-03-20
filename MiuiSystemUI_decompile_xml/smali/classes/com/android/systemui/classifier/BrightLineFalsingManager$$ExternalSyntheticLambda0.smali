.class public final synthetic Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;

    .line 8
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;->onFalse()V

    .line 10
    return-void

    .line 13
    :pswitch_1
    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier;

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier;->onSessionStarted()V

    .line 16
    return-void

    .line 19
    :pswitch_2
    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier;

    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier;->onSessionEnded()V

    .line 22
    return-void

    .line 25
    :pswitch_3
    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier;

    .line 26
    iget-object p0, p1, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mMotionEventListeners:Ljava/util/List;

    .line 30
    check-cast p0, Ljava/util/ArrayList;

    .line 32
    iget-object p1, p1, Lcom/android/systemui/classifier/FalsingClassifier;->mMotionEventListener:Lcom/android/systemui/classifier/FalsingClassifier$$ExternalSyntheticLambda0;

    .line 34
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    return-void

    .line 39
    :pswitch_4
    check-cast p1, Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;

    .line 40
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;->onAdditionalTapRequired()V

    .line 42
    return-void

    .line 45
    :goto_0
    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 46
    iget-boolean p0, p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 48
    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logInfo(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 62
.end method
