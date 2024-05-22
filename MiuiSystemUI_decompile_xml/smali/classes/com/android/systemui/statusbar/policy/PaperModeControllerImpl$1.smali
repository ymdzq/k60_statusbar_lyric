.class public final Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mPaperModeObserver:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

    .line 4
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;->onChange(Z)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mGameModeObserver:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;->onChange(Z)V

    .line 12
    return-void
    .line 15
.end method
