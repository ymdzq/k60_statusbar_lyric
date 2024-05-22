.class public final Lcom/android/systemui/statusbar/phone/KeyguardBypassController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->postureState:I

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->postureState:I

    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->listeners:Ljava/util/List;

    .line 10
    check-cast p1, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 30
    move-result v1

    .line 33
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;->onBypassStateChanged(Z)V

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    return-void
    .line 38
.end method
