.class public final Lcom/android/systemui/toast/MIUIStrongToast$12;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/MIUIStrongToast;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$12;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    .line 1
    const-string/jumbo p1, "target"

    .line 2
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 11
    move-result p1

    .line 14
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$12;->this$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast;->mRoundRect:Lcom/android/systemui/toast/view/RoundRect;

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/toast/view/RoundRect;->setRectProgress(F)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method
