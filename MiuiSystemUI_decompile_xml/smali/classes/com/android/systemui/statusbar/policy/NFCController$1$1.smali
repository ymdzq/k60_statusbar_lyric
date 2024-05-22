.class public final Lcom/android/systemui/statusbar/policy/NFCController$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/policy/NFCController$1;

.field public final synthetic val$finalEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NFCController$1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NFCController$1$1;->this$1:Lcom/android/systemui/statusbar/policy/NFCController$1;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NFCController$1$1;->val$finalEnabled:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NFCController$1$1;->this$1:Lcom/android/systemui/statusbar/policy/NFCController$1;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NFCController$1;->this$0:Lcom/android/systemui/statusbar/policy/NFCController;

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NFCController$1$1;->val$finalEnabled:Z

    .line 6
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NFCController;->mEnabled:Z

    .line 8
    if-eq v1, p0, :cond_1

    .line 10
    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/NFCController;->mEnabled:Z

    .line 12
    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/NFCController;->mNFCEnableListeners:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/policy/NFCController$NFCEnableListener;

    .line 30
    check-cast v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;

    .line 32
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mNFCController:Lcom/android/systemui/statusbar/policy/NFCController;

    .line 34
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NFCController;->mEnabled:Z

    .line 36
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mNFCVisible:Z

    .line 38
    if-eq v1, v2, :cond_0

    .line 40
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mNFCVisible:Z

    .line 42
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 44
    const-string v2, "nfc"

    .line 46
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 50
    goto :goto_0

    .line 53
    :cond_1
    return-void
    .line 54
.end method
