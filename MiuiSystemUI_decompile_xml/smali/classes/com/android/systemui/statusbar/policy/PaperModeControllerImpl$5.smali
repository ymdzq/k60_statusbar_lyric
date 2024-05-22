.class public final Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mPaperModeObserver:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;->onChange(Z)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$5;->this$0:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl;->mGameModeObserver:Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/PaperModeControllerImpl$2;->onChange(Z)V

    .line 14
    return-void
    .line 17
.end method
