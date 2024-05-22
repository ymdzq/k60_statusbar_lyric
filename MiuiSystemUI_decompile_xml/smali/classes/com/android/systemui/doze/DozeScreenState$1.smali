.class public final Lcom/android/systemui/doze/DozeScreenState$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeScreenState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeScreenState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState$1;->this$0:Lcom/android/systemui/doze/DozeScreenState;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState$1;->this$0:Lcom/android/systemui/doze/DozeScreenState;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenState;->updateUdfpsController()V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public final onEnrollmentsChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState$1;->this$0:Lcom/android/systemui/doze/DozeScreenState;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenState;->updateUdfpsController()V

    .line 7
    :cond_0
    return-void
    .line 10
.end method
