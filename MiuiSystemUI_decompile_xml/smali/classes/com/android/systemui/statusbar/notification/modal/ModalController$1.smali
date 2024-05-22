.class public final Lcom/android/systemui/statusbar/notification/modal/ModalController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/modal/ModalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController$1;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController$1;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 6
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->mStatusBarState:Ljava/lang/Integer;

    .line 8
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    sget-object p1, Lcom/miui/systemui/events/ModalExitMode;->OTHER:Lcom/miui/systemui/events/ModalExitMode;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->animExitModal(Ljava/lang/String;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method
